#include <erl_nif.h>
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
using namespace std;

typedef ERL_NIF_TERM(*nif_func_1)(ErlNifEnv*, ERL_NIF_TERM);

template<typename T>
using nif_get_fun = int(*)(ErlNifEnv*, ERL_NIF_TERM, T*);

template<typename T>
using nif_make_fun = ERL_NIF_TERM(*)(ErlNifEnv*, T);

typedef enum {
    NIF_UNKNOWN = 0,
    NIF_STRING,
    NIF_INT,
    NIF_FLOAT
} _NifType;

template <typename T, nif_get_fun<T> get_fun, nif_make_fun<T> make_fun>
ERL_NIF_TERM num_sort (ErlNifEnv* env, ERL_NIF_TERM list)
{
    if (!enif_is_list(env, list))
        return enif_make_badarg(env);

    unsigned int size = 0;
    ERL_NIF_TERM* sortedList;
    T num;
    vector<T> numArr;
    ERL_NIF_TERM head;
    ERL_NIF_TERM tail;
    ERL_NIF_TERM currentList;
    ERL_NIF_TERM res;

    if (!enif_get_list_length(env, list, &size))  {
        //cerr << "[nif_sorter] Can't get list length" << endl;
        return enif_make_badarg(env);
    }
    
    currentList = list;
    for (unsigned int i = 0 ; i < size ; i++) {
        if (!enif_get_list_cell(env, currentList, &head, &tail)) {
            //cerr << "[nif_sorter] Can't get list cell at index " << i << endl;
            return enif_make_badarg(env);
        }
        currentList = tail;

        if (!get_fun(env, head, &num)) {
            //cerr << "[nif_sorter] Can't get cell value at index " << i << endl;
            return enif_make_badarg(env);
        }
        numArr.push_back(num);
    }

    sort(numArr.begin(), numArr.end());

    sortedList = new ERL_NIF_TERM[size];
    for (unsigned int i = 0 ; i < size ; i++) {
        num = numArr[i];
        sortedList[i] = make_fun(env, num);
    }
    res = enif_make_list_from_array(env, sortedList, size);
    delete sortedList;

    return res;
}

ERL_NIF_TERM str_sort (ErlNifEnv* env, ERL_NIF_TERM list)
{
    if (!enif_is_list(env, list))
        return enif_make_badarg(env);

    unsigned int size = 0;
    ERL_NIF_TERM* sortedList;
    string str;
    vector<string> strArr;
    ERL_NIF_TERM head;
    ERL_NIF_TERM tail;
    ERL_NIF_TERM currentList;
    ErlNifBinary bin;
    ERL_NIF_TERM res;

    if (!enif_get_list_length(env, list, &size))  {
        //cerr << "[nif_sorter] Can't get list length" << endl;
        return enif_make_badarg(env);
    }
    
    currentList = list;
    for (unsigned int i = 0 ; i < size ; i++) {
        if (!enif_get_list_cell(env, currentList, &head, &tail)) {
            //cerr << "[nif_sorter] Can't get list cell at index " << i << endl;
            return enif_make_badarg(env);
        }
        currentList = tail;

        if (!enif_inspect_binary(env, head, &bin)) {
            //cerr << "[nif_sorter] Can't get string info of cell at index " << i << endl;
            return enif_make_badarg(env);
        }
        str = string((const char*) bin.data, bin.size);
        strArr.push_back(str);
    }

    sort(strArr.begin(), strArr.end());

    sortedList = new ERL_NIF_TERM[size];
    for (unsigned int i = 0 ; i < size ; i++) {
        str = strArr[i];
        bin.size = (size_t) str.size();
        bin.data = (unsigned char*) str.data();
        sortedList[i] = enif_make_binary(env, &bin);
    }
    res = enif_make_list_from_array(env, sortedList, size);
    delete sortedList;

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
    return str_sort(env, argv[0]);
}
ERL_NIF_TERM int_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    // Don't care about memory, just use 64 bit always
    return num_sort<ErlNifSInt64, enif_get_int64, enif_make_int64>(env, argv[0]);
}
ERL_NIF_TERM float_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    return num_sort<double, enif_get_double, enif_make_double>(env, argv[0]);
}

ERL_NIF_TERM typed_sort_nif(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    _NifType type = guess_list_type(env, argv[0]);
    nif_func_1 sprt_fn = NULL;
    if (type == NIF_STRING)
      sprt_fn = & str_sort;
    else if (type == NIF_FLOAT)
      sprt_fn = & num_sort<double, enif_get_double, enif_make_double>;
    else if (type == NIF_INT)
      // Don't care about memory, just use 64 bit always
      sprt_fn = & num_sort<ErlNifSInt64, enif_get_int64, enif_make_int64>;
    if (sprt_fn == NULL) {
        //cerr << "[nif_sorter] Can't define list cells type" << endl;
        return enif_make_badarg(env);
    }
    return (*sprt_fn)(env, argv[0]);
}

static ErlNifFunc nif_funcs[] = {
    {"str_sort", 1, str_sort_nif},
    {"int_sort", 1, int_sort_nif},
    {"float_sort", 1, float_sort_nif},
    {"sort", 1, typed_sort_nif},
};

ERL_NIF_INIT(Elixir.NifSorter, nif_funcs, NULL, NULL, NULL, NULL)
