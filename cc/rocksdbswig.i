%module rocksdbswig
%{
#include <rocksdb/slice.h>
#include <rocksdb/status.h>
#include <rocksdb/options.h>
#include <rocksdb/db.h>

using namespace rocksdb;
%}

%include <typemaps.i>
%include "std_string.i"

%include <rocksdb/slice.h>
%include <rocksdb/status.h>
%include <rocksdb/options.h>
%include <rocksdb/db.h>