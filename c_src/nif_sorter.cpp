#include <erl_nif.h>
#include <iostream>
#include <string>
#include <numeric>
#include <vector>
#include <algorithm>
using namespace std;

typedef enum {
    NIF_UNKNOWN = 0,
    NIF_STRING,
    NIF_INT,
    NIF_FLOAT
} _NifType;

typedef ERL_NIF_TERM(*nif_func_1)(ErlNifEnv*, ERL_NIF_TERM);

template<typename T>
using nif_get_fun = int(*)(ErlNifEnv*, ERL_NIF_TERM, T*);

template <typename T>
vector<size_t> sort_indexes(const vector<T> &vals)
{
    vector<size_t> idxs(vals.size());
    iota(idxs.begin(), idxs.end(), 0);

    sort(idxs.begin(), idxs.end(),
       [&vals](size_t i1, size_t i2) {return vals[i1] < vals[i2];});

    return idxs;
}

inline int enif_get_string(ErlNifEnv* env, ERL_NIF_TERM term, string* pStr)
{
    ErlNifBinary bin;
    if (!enif_inspect_binary(env, term, &bin)) {
        //cerr << "[nif_sorter] Can't get string info of cell at index " << i << endl;
        return 0;
    }
    string str = string((const char*) bin.data, bin.size);
    *pStr = str;
    return 1;
}

template <typename T, nif_get_fun<T> get_fun>
ERL_NIF_TERM typed_sort (ErlNifEnv* env, ERL_NIF_TERM list)
{
    // Check erl-list, get size
    if (!enif_is_list(env, list))
        return enif_make_badarg(env);

    unsigned int size = 0;
    if (!enif_get_list_length(env, list, &size))  {
        //cerr << "[nif_sorter] Can't get list length" << endl;
        return enif_make_badarg(env);
    }

    // Read from erl-list, build vector of values to sort + vector of original erl-values
    ERL_NIF_TERM currentList = list;
    ERL_NIF_TERM head;
    ERL_NIF_TERM tail;
    T val;
    vector<T> valArr;
    vector<ERL_NIF_TERM> termArr;
    for (unsigned int i = 0 ; i < size ; i++) {
        if (!enif_get_list_cell(env, currentList, &head, &tail)) {
            //cerr << "[nif_sorter] Can't get list cell at index " << i << endl;
            return enif_make_badarg(env);
        }
        currentList = tail;

        if (!get_fun(env, head, &val)) {
            //cerr << "[nif_sorter] Can't get cell value at index " << i << endl;
            return enif_make_badarg(env);
        }

        valArr.push_back(val);
        termArr.push_back(head);
    }

    // Sort vector of values, result is sorted indexes
    vector<size_t> inds = sort_indexes(valArr);

    // Build sorted array of terms (by sorted indexes) (original terms will be reused)
    ERL_NIF_TERM* sortedTermArr = (ERL_NIF_TERM*) enif_alloc(size * sizeof(ERL_NIF_TERM));
    size_t ind;
    for (unsigned int i = 0 ; i < size ; i++) {
        ind = inds[i];
        sortedTermArr[i] = termArr[ind];
    }

    // Convert sorted array to list
    ERL_NIF_TERM res = enif_make_list_from_array(env, sortedTermArr, size);
    enif_free(sortedTermArr);

    return res;
}


_NifType guess_list_type(ErlNifEnv* env, ERL_NIF_TERM list)
{
    unsigned int size = 0;
    ERL_NIF_TERM head;
    ERL_NIF_TERM tail;
    double d;
    
    if (!enif_get_list_length(env, list, &size))  {
        //cerr << "[nif_sorter] Can't get list length" << endl;
        return NIF_UNKNOWN;
    }
    if (!enif_get_list_cell(env, list, &head, &tail)) {
        //cerr << "[nif_sorter] Can't get first list cell" << endl;
        return NIF_UNKNOWN;
    }
    if (enif_is_binary(env, head)) {
        return NIF_STRING;
    } else if (enif_is_number(env, head)) {
        if (enif_get_double(env, head, &d)) {
            return NIF_FLOAT;
        } else {
            return NIF_INT;
        }
    }
    return NIF_UNKNOWN;
}


ERL_NIF_TERM str_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return typed_sort<string, enif_get_string>(env, argv[0]);
}
ERL_NIF_TERM int_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return typed_sort<ErlNifSInt64, enif_get_int64>(env, argv[0]);
}
ERL_NIF_TERM float_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return typed_sort<double, enif_get_double>(env, argv[0]);
}

ERL_NIF_TERM typed_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    _NifType type = guess_list_type(env, argv[0]);
    nif_func_1 sort_fn = NULL;
    if (type == NIF_STRING)
      sort_fn = & typed_sort<string, enif_get_string>;
    else if (type == NIF_FLOAT)
      sort_fn = & typed_sort<double, enif_get_double>;
    else if (type == NIF_INT)
      sort_fn = & typed_sort<ErlNifSInt64, enif_get_int64>;
    if (sort_fn == NULL) {
        //cerr << "[nif_sorter] Can't define list cells type" << endl;
        return enif_make_badarg(env);
    }
    return (*sort_fn)(env, argv[0]);
}

static ErlNifFunc nif_funcs[] = {
    // tip: ERL_NIF_DIRTY_JOB_CPU_BOUND need for parallel execution
    {"str_sort", 1, str_sort_nif, ERL_NIF_DIRTY_JOB_CPU_BOUND},
    {"int_sort", 1, int_sort_nif, ERL_NIF_DIRTY_JOB_CPU_BOUND},
    {"float_sort", 1, float_sort_nif, ERL_NIF_DIRTY_JOB_CPU_BOUND},
    {"sort", 1, typed_sort_nif, ERL_NIF_DIRTY_JOB_CPU_BOUND},
};

ERL_NIF_INIT(Elixir.NifSorter, nif_funcs, NULL, NULL, NULL, NULL)
