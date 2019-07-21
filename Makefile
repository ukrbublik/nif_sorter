MIX = mix
CC = g++
ERLANG_PATH = $(shell erl -eval 'io:format("~s", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)

CFLAGS += -I$(ERLANG_PATH)
CFLAGS += -std=c++11 -O3 -pedantic -Wall -Wextra -Wno-unused-parameter -Wno-unused-function -Wno-missing-field-initializers -Wno-conversion-null

ifneq ($(OS),Windows_NT)
	CFLAGS += -fPIC
	ifeq ($(shell uname),Darwin)
		LDFLAGS += -dynamiclib -undefined dynamic_lookup
	endif
endif

.PHONY: all nif_sorter clean

all: nif_sorter

compile:
	$(MIX) compile

priv/nif_sorter.so: c_src/nif_sorter.cpp
	$(CC) $(CFLAGS) -shared $(LDFLAGS) -o $@ c_src/nif_sorter.cpp

clean:
	$(MIX) clean
	$(RM) priv/nif_sorter.so
	$(RM) -rf priv

dep:
	$(MIX) deps.get -y

test: dep clean
	$(MIX) test

cli: dep clean
	iex -S $(MIX)

bench: dep clean
	MIX_ENV=bench $(MIX) run bench/nif_sorter_bench.ex

bench/fast: dep clean
	MIX_ENV=bench $(MIX) run bench/nif_sorter_bench.ex fast

bench/markdown: dep clean
	MIX_ENV=bench $(MIX) run bench/nif_sorter_bench.ex markdown
