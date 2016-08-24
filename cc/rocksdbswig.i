%module(directors="1") rocksdbswig
//%module rocksdbswig

%{
#include <rocksdb/slice.h>
#include <rocksdb/status.h>
#include <rocksdb/options.h>
#include <rocksdb/db.h>

/*#include "/home/jchiu/rocksdb-4.6.1/port/port.h"
#include "/home/jchiu/rocksdb-4.6.1/util/coding.h"
#include "/home/jchiu/rocksdb-4.6.1/db/dbformat.h"
#include "/home/jchiu/rocksdb-4.6.1/db/memtable_list.h"
#include "/home/jchiu/rocksdb-4.6.1/db/column_family.h"
#include "/home/jchiu/rocksdb-4.6.1/db/db_impl.h"*/

using namespace rocksdb;
%}

// %rename only works for function names. We use a C++ macro to rename "range"
// as myrange so that the Go code can compile.
#define range myrange

//%feature("director");

%include <typemaps.i>
%include "std_string.i"
%include "cpointer.i"

%include <rocksdb/slice.h>
%include <rocksdb/status.h>
%include <rocksdb/options.h>
%include <rocksdb/db.h>

/*%include "/home/jchiu/rocksdb-4.6.1/port/port.h"
%include "/home/jchiu/rocksdb-4.6.1/util/coding.h"
%include "/home/jchiu/rocksdb-4.6.1/db/dbformat.h"
%include "/home/jchiu/rocksdb-4.6.1/db/memtable_list.h"
%include "/home/jchiu/rocksdb-4.6.1/db/column_family.h"
%include "/home/jchiu/rocksdb-4.6.1/db/db_impl.h"*/

//%pointer_functions(DB, DB_p)