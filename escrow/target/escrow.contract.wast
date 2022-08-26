(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $none_=>_none (func))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i32_i64_i32_=>_none (func (param i32 i32 i64 i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i64_i64_=>_i32 (func (param i32 i64 i64 i64) (result i32)))
 (type $i64_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx128_lowerbound" (func $~lib/as-chain/env/db_idx128_lowerbound (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx128_find_primary" (func $~lib/as-chain/env/db_idx128_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (import "env" "db_idx128_update" (func $~lib/as-chain/env/db_idx128_update (param i32 i64 i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx128_store" (func $~lib/as-chain/env/db_idx128_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx64_remove" (func $~lib/as-chain/env/db_idx64_remove (param i32)))
 (import "env" "db_idx128_remove" (func $~lib/as-chain/env/db_idx128_remove (param i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~lib/as-chain/mi/SAME_PAYER (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT (mut i32) (i32.const 0))
 (global $~lib/proton-tsc/atomicassets/base58/BASE_MAP (mut i32) (i32.const 0))
 (global $escrow.contract/escrow i32 (i32.const 16))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\n\00\00\00\08\00\00\00\02")
 (data (i32.const 2300) "<")
 (data (i32.const 2312) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2364) "<")
 (data (i32.const 2376) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2440) "\01")
 (data (i32.const 2460) "\\")
 (data (i32.const 2472) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2556) "L")
 (data (i32.const 2568) "\01\00\00\00.\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00e\00x\00t\00e\00n\00d\00e\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\0e\00\00\00\08\00\00\00\03")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\18\00\00\00a\00t\00o\00m\00i\00c\00a\00s\00s\00e\00t\00s")
 (data (i32.const 2716) ",")
 (data (i32.const 2728) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 2764) "\1c")
 (data (i32.const 2776) "\0f\00\00\00\0c\00\00\00\b0\n\00\00\00\00\00\00\90\t")
 (data (i32.const 2796) ",")
 (data (i32.const 2808) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2856) "\0f\00\00\00\0c\00\00\00\00\0b\00\00\00\00\00\00\90\t")
 (data (i32.const 2876) "\8c")
 (data (i32.const 2888) "\01\00\00\00t\00\00\001\002\003\004\005\006\007\008\009\00A\00B\00C\00D\00E\00F\00G\00H\00J\00K\00L\00M\00N\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\n\00\00\00s\00t\00a\00r\00t")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\01\00\00\00\08\00\00\00f\00i\00l\00l")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\0c\00\00\00c\00a\00n\00c\00e\00l")
 (data (i32.const 3116) "\1c")
 (data (i32.const 3148) "\1c")
 (data (i32.const 3180) "\1c")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3244) "\1c")
 (data (i32.const 3276) "\1c")
 (data (i32.const 3308) "\1c")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3372) "\1c")
 (data (i32.const 3384) "\01\00\00\00\n\00\00\00X\00U\00S\00D\00C")
 (data (i32.const 3404) "\1c")
 (data (i32.const 3436) "\1c")
 (data (i32.const 3468) "<")
 (data (i32.const 3480) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3532) "L")
 (data (i32.const 3544) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 3612) "<")
 (data (i32.const 3624) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3676) "l")
 (data (i32.const 3688) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 3788) "L")
 (data (i32.const 3800) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 3868) "<")
 (data (i32.const 3880) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 3932) "\8c")
 (data (i32.const 3944) "\01\00\00\00v\00\00\00a\00 \00t\00o\00k\00e\00n\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00b\00o\00t\00h\00 \00a\00l\00l\00o\00w\00e\00d\00 \00a\00n\00d\00 \00b\00l\00o\00c\00k\00e\00d\00 \00a\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00t\00i\00m\00e")
 (data (i32.const 4076) "<")
 (data (i32.const 4088) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 4140) "L")
 (data (i32.const 4152) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 4220) ",")
 (data (i32.const 4232) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 4268) "L")
 (data (i32.const 4280) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 4348) "\8c")
 (data (i32.const 4360) "\01\00\00\00x\00\00\00a\00n\00 \00a\00c\00t\00o\00r\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00b\00o\00t\00h\00 \00a\00l\00l\00o\00w\00e\00d\00 \00a\00n\00d\00 \00b\00l\00o\00c\00k\00e\00d\00 \00a\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00t\00i\00m\00e")
 (data (i32.const 4492) ",")
 (data (i32.const 4504) "\01\00\00\00\12\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 ")
 (data (i32.const 4540) ",")
 (data (i32.const 4552) "\01\00\00\00\14\00\00\00 \00i\00s\00 \00p\00a\00u\00s\00e\00d")
 (data (i32.const 4588) "\1c")
 (data (i32.const 4600) "\0f\00\00\00\0c\00\00\00\a0\11\00\00\00\00\00\00\d0\11")
 (data (i32.const 4620) ",")
 (data (i32.const 4632) "\01\00\00\00\0e\00\00\00A\00c\00t\00o\00r\00 \00\'")
 (data (i32.const 4668) "\\")
 (data (i32.const 4680) "\01\00\00\00D\00\00\00\'\00 \00i\00s\00 \00n\00o\00t\00 \00a\00l\00l\00o\00w\00e\00d\00 \00t\00o\00 \00u\00s\00e\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 \00\'")
 (data (i32.const 4764) "\1c")
 (data (i32.const 4776) "\01\00\00\00\02\00\00\00\'")
 (data (i32.const 4796) ",")
 (data (i32.const 4808) "\0f\00\00\00\14\00\00\00 \12\00\00\00\00\00\00P\12\00\00\00\00\00\00\b0\12")
 (data (i32.const 4844) ",")
 (data (i32.const 4856) "\01\00\00\00\0e\00\00\00T\00o\00k\00e\00n\00 \00\'")
 (data (i32.const 4892) ",")
 (data (i32.const 4904) "\0f\00\00\00\14\00\00\00\00\13\00\00\00\00\00\00P\12\00\00\00\00\00\00\b0\12")
 (data (i32.const 4940) "\1c")
 (data (i32.const 4952) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4972) "\\")
 (data (i32.const 4984) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 5068) "\1c")
 (data (i32.const 5080) "\01\00\00\00\02\00\00\00,")
 (data (i32.const 5100) "\1c")
 (data (i32.const 5112) "\01\00\00\00\02\00\00\00@")
 (data (i32.const 5132) "<")
 (data (i32.const 5144) "\01\00\00\00(\00\00\00N\00F\00T\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d")
 (data (i32.const 5196) "<")
 (data (i32.const 5208) "\01\00\00\00,\00\00\00T\00o\00k\00e\00n\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d")
 (data (i32.const 5260) "\1c")
 (data (i32.const 5292) ",")
 (data (i32.const 5304) "\01\00\00\00\16\00\00\00e\00o\00s\00i\00o\00.\00s\00t\00a\00k\00e")
 (data (i32.const 5340) ",")
 (data (i32.const 5352) "\01\00\00\00\12\00\00\00e\00o\00s\00i\00o\00.\00r\00a\00m")
 (data (i32.const 5388) "\1c")
 (data (i32.const 5400) "\01\00\00\00\n\00\00\00e\00o\00s\00i\00o")
 (data (i32.const 5420) "<")
 (data (i32.const 5432) "\01\00\00\00\1e\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00D\00e\00p\00o\00s\00i\00t")
 (data (i32.const 5484) "\1c")
 (data (i32.const 5516) ",")
 (data (i32.const 5528) "\01\00\00\00\1c\00\00\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 5564) "L")
 (data (i32.const 5576) "\01\00\00\00:\00\00\00a\00d\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 5644) "<")
 (data (i32.const 5656) "\01\00\00\00*\00\00\00c\00o\00n\00t\00r\00a\00c\00t\00 \00n\00o\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 5708) "<")
 (data (i32.const 5720) "\01\00\00\00&\00\00\00s\00y\00m\00b\00o\00l\00 \00n\00o\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 5772) "<")
 (data (i32.const 5784) "\01\00\00\00$\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 5836) "<")
 (data (i32.const 5848) "\01\00\00\00\"\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 5900) "<")
 (data (i32.const 5912) "\01\00\00\00*\00\00\00T\00o\00k\00e\00n\00s\00 \00f\00r\00o\00m\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 ")
 (data (i32.const 5964) "L")
 (data (i32.const 5976) "\01\00\00\00:\00\00\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d\00 \00f\00o\00r\00 \00d\00e\00p\00o\00s\00i\00t\00s")
 (data (i32.const 6044) "\1c")
 (data (i32.const 6056) "\0f\00\00\00\0c\00\00\00 \17\00\00\00\00\00\00`\17")
 (data (i32.const 6076) "\1c")
 (data (i32.const 6088) "\01\00\00\00\0c\00\00\00T\00o\00k\00e\00n\00 ")
 (data (i32.const 6108) "L")
 (data (i32.const 6120) "\01\00\00\008\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d\00 \00f\00o\00r\00 \00d\00e\00p\00o\00s\00i\00t\00s")
 (data (i32.const 6188) "\1c")
 (data (i32.const 6200) "\0f\00\00\00\0c\00\00\00\d0\17\00\00\00\00\00\00\f0\17")
 (data (i32.const 6220) "\1c")
 (data (i32.const 6232) "\01\00\00\00\02\00\00\00.")
 (data (i32.const 6252) "\1c")
 (data (i32.const 6264) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 6284) "\1c")
 (data (i32.const 6316) ",")
 (data (i32.const 6328) "\01\00\00\00\10\00\00\00A\00c\00c\00o\00u\00n\00t\00 ")
 (data (i32.const 6364) ",")
 (data (i32.const 6376) "\01\00\00\00\14\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 6412) "\1c")
 (data (i32.const 6424) "\0f\00\00\00\0c\00\00\00\c0\18\00\00\00\00\00\00\f0\18")
 (data (i32.const 6444) "L")
 (data (i32.const 6456) "\01\00\00\00:\00\00\00s\00u\00b\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 6524) "l")
 (data (i32.const 6536) "\01\00\00\00V\00\00\00n\00o\00 \00b\00a\00l\00a\00n\00c\00e\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00u\00s\00e\00r\00 \00t\00o\00 \00r\00e\00d\00u\00c\00e\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 6636) "<")
 (data (i32.const 6648) "\01\00\00\00(\00\00\00u\00s\00e\00r\00 \00b\00a\00l\00a\00n\00c\00e\00 \00t\00o\00o\00 \00l\00o\00w")
 (data (i32.const 6700) "<")
 (data (i32.const 6712) "\01\00\00\00*\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 6764) "<")
 (data (i32.const 6776) "\01\00\00\00(\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 6828) "\1c")
 (data (i32.const 6840) "\01\00\00\00\08\00\00\00N\00F\00T\00 ")
 (data (i32.const 6860) "L")
 (data (i32.const 6872) "\01\00\00\002\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00b\00a\00l\00a\00n\00c\00e\00 \00o\00f\00 ")
 (data (i32.const 6940) ",")
 (data (i32.const 6952) "\0f\00\00\00\14\00\00\00\c0\1a\00\00\00\00\00\00\e0\1a\00\00\00\00\00\00\90\t")
 (data (i32.const 6988) ",")
 (data (i32.const 7000) "\01\00\00\00\10\00\00\00w\00i\00t\00h\00d\00r\00a\00w")
 (data (i32.const 7036) ",")
 (data (i32.const 7048) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 7084) "\1c")
 (data (i32.const 7096) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 7116) "<")
 (data (i32.const 7128) "\01\00\00\00\1e\00\00\00F\00e\00e\00 \00d\00o\00e\00s\00n\00\'\00t\00 \00s\00e\00t")
 (data (i32.const 7180) "|")
 (data (i32.const 7192) "\01\00\00\00^\00\00\00m\00u\00s\00t\00 \00e\00s\00c\00r\00o\00w\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \00o\00n\00e\00 \00t\00o\00k\00e\00n\00 \00o\00r\00 \00N\00F\00T\00 \00o\00n\00 \00a\00 \00s\00i\00d\00e")
 (data (i32.const 7308) "\1c")
 (data (i32.const 7320) "\01\00\00\00\0c\00\00\00F\00O\00O\00B\00A\00R")
 (data (i32.const 7340) "\1c\01")
 (data (i32.const 7352) "\01\00\00\00\06\01\00\00Y\00o\00u\00 \00h\00a\00v\00e\00 \00i\00n\00i\00t\00i\00a\00t\00e\00d\00 \00a\00 \00p\00o\00o\00l\00.\00 \00P\00l\00e\00a\00s\00e\00 \00s\00e\00n\00d\00 \00t\00h\00i\00s\00 \00u\00r\00l\00 \00t\00o\00 \00i\00n\00v\00i\00t\00e\00 \00y\00o\00u\00r\00 \00f\00r\00i\00e\00n\00d\00s\00 \00t\00o\00 \00p\00a\00r\00t\00i\00c\00i\00p\00a\00t\00e\00 \00t\00h\00i\00s\00 \00p\00o\00o\00l\00:\00 \00h\00t\00t\00p\00s\00:\00/\00/\00e\00a\00s\00y\00e\00s\00c\00r\00o\00w\00.\00i\00o\00/\00e\00s\00c\00r\00o\00w\00/\00p\00o\00o\00l\00/")
 (data (i32.const 7628) "\1c")
 (data (i32.const 7640) "\0f\00\00\00\0c\00\00\00\c0\1c\00\00\00\00\00\00\90\t")
 (data (i32.const 7660) "\1c")
 (data (i32.const 7692) ",")
 (data (i32.const 7704) "\01\00\00\00\12\00\00\00l\00o\00g\00e\00s\00c\00r\00o\00w")
 (data (i32.const 7740) "<")
 (data (i32.const 7752) "\01\00\00\00$\00\00\00n\00o\00 \00e\00s\00c\00r\00o\00w\00 \00w\00i\00t\00h\00 \00I\00D\00 ")
 (data (i32.const 7804) ",")
 (data (i32.const 7816) "\01\00\00\00\0e\00\00\00 \00f\00o\00u\00n\00d\00.")
 (data (i32.const 7852) "\1c")
 (data (i32.const 7864) "\0f\00\00\00\0c\00\00\00P\1e\00\00\00\00\00\00\90\1e")
 (data (i32.const 7884) "\1c")
 (data (i32.const 7916) "\1c")
 (data (i32.const 7928) "\0f\00\00\00\0c\00\00\00P\1e\00\00\00\00\00\00\90\1e")
 (data (i32.const 7948) "\1c")
 (data (i32.const 7980) ",")
 (data (i32.const 7992) "\01\00\00\00\1a\00\00\00F\00e\00e\00 \00f\00o\00r\00 \00P\00o\00o\00l\00 ")
 (data (i32.const 8028) ",")
 (data (i32.const 8040) "\01\00\00\00\14\00\00\00 \00c\00a\00n\00c\00e\00l\00l\00e\00d")
 (data (i32.const 8076) "\1c")
 (data (i32.const 8088) "\0f\00\00\00\0c\00\00\00@\1f\00\00\00\00\00\00p\1f")
 (data (i32.const 8108) ",")
 (data (i32.const 8120) "\01\00\00\00\18\00\00\00P\00o\00o\00l\00 \00e\00s\00c\00r\00o\00w\00 ")
 (data (i32.const 8156) "\1c")
 (data (i32.const 8168) "\0f\00\00\00\0c\00\00\00\c0\1f\00\00\00\00\00\00p\1f")
 (data (i32.const 8188) "\1c")
 (data (i32.const 8220) "\1c")
 (data (i32.const 8232) "\0f\00\00\00\0c\00\00\00@\1f\00\00\00\00\00\00p\1f")
 (data (i32.const 8252) "\1c")
 (data (i32.const 8264) "\0f\00\00\00\0c\00\00\00\c0\1f\00\00\00\00\00\00p\1f")
 (data (i32.const 8284) "\1c")
 (data (i32.const 8316) "\1c")
 (data (i32.const 8348) "\1c")
 (data (i32.const 8360) "\0f\00\00\00\0c\00\00\00@\1f\00\00\00\00\00\00p\1f")
 (data (i32.const 8380) "\1c")
 (data (i32.const 8392) "\0f\00\00\00\0c\00\00\00\c0\1f\00\00\00\00\00\00p\1f")
 (data (i32.const 8412) "\\")
 (data (i32.const 8424) "\01\00\00\00L\00\00\00a\00t\00 \00l\00e\00a\00s\00t\00 \00o\00n\00e\00 \00w\00i\00n\00n\00e\00r\00 \00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00p\00r\00o\00v\00i\00d\00e\00d")
 (data (i32.const 8508) "\1c")
 (data (i32.const 8520) "\0f\00\00\00\0c\00\00\00P\1e\00\00\00\00\00\00\90\1e")
 (data (i32.const 8540) "\1c")
 (data (i32.const 8552) "\01\00\00\00\n\00\00\00o\00n\00l\00y\00 ")
 (data (i32.const 8572) "<")
 (data (i32.const 8584) "\01\00\00\00*\00\00\00 \00c\00a\00n\00 \00f\00i\00l\00l\00 \00t\00h\00i\00s\00 \00e\00s\00c\00r\00o\00w")
 (data (i32.const 8636) "\1c")
 (data (i32.const 8648) "\0f\00\00\00\0c\00\00\00p!\00\00\00\00\00\00\90!")
 (data (i32.const 8668) "\1c")
 (data (i32.const 8700) "L")
 (data (i32.const 8712) "\01\00\00\008\00\00\00f\00e\00e\00 \00c\00o\00l\00l\00e\00c\00t\00e\00d\00 \00f\00o\00r\00 \00e\00s\00c\00r\00o\00w\00 \00i\00d\00 ")
 (data (i32.const 8780) ",")
 (data (i32.const 8792) "\01\00\00\00\14\00\00\00 \00f\00o\00r\00 \00p\00o\00o\00l\00.")
 (data (i32.const 8828) "\1c")
 (data (i32.const 8840) "\0f\00\00\00\0c\00\00\00\10\"\00\00\00\00\00\00`\"")
 (data (i32.const 8860) "L")
 (data (i32.const 8872) "\01\00\00\002\00\00\00t\00h\00e\00r\00e\00 \00i\00s\00 \00n\00o\00 \00e\00s\00c\00r\00o\00w\00e\00d\00 \00f\00o\00r\00 ")
 (data (i32.const 8940) "\1c")
 (data (i32.const 8952) "\01\00\00\00\0c\00\00\00 \00u\00s\00e\00r\00!")
 (data (i32.const 8972) "\1c")
 (data (i32.const 8984) "\0f\00\00\00\0c\00\00\00\b0\"\00\00\00\00\00\00\00#")
 (data (i32.const 9004) "<")
 (data (i32.const 9016) "\01\00\00\00*\00\00\00S\00a\00f\00e\00M\00a\00t\00h\00 \00D\00i\00v\00 \00O\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 9068) ",")
 (data (i32.const 9080) "\01\00\00\00\14\00\00\00 \00c\00o\00m\00p\00l\00e\00t\00e\00d")
 (data (i32.const 9116) "\1c")
 (data (i32.const 9128) "\0f\00\00\00\0c\00\00\00\c0\1f\00\00\00\00\00\00\80#")
 (data (i32.const 9148) ",")
 (data (i32.const 9160) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 9196) ",")
 (data (i32.const 9208) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 9244) "<")
 (data (i32.const 9256) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 9308) "<")
 (data (i32.const 9320) "\01\00\00\00\"\00\00\00i\00d\00x\001\002\008\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 9372) "<")
 (data (i32.const 9384) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 9436) "<")
 (data (i32.const 9448) "\01\00\00\00 \00\00\00i\00d\00x\001\002\008\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 9504) "^\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 9540) "B\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 9572) " \00\00\00\00\00\00\00 ")
 (data (i32.const 9612) "\02\t")
 (data (i32.const 9628) "\04A")
 (data (i32.const 9640) "\11\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\13")
 (data (i32.const 9676) " \00\00\00\16\00\00\00 \00\00\00\06")
 (data (i32.const 9708) " \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 9756) " \00\00\00\00\00\00\00 ")
 (data (i32.const 9788) " ")
 (data (i32.const 9820) "\02A\00\00\00\00\00\00\02\02")
 (data (i32.const 9852) " ")
 (data (i32.const 9868) "\02A")
 (data (i32.const 9892) " ")
 (data (i32.const 9924) " \00\00\00\00\00\00\00 ")
 (data (i32.const 9956) " \00\00\00\00\00\00\00 \00\00\00\1a\00\00\00 \00\00\00\1a")
 (data (i32.const 10004) " ")
 (data (i32.const 10036) "A\00\00\00\02")
 (data (i32.const 10092) "\02A")
 (data (i32.const 10228) " ")
 (data (i32.const 10252) " ")
 (table $0 4 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0 $start:~lib/proton-tsc/allow/allow.utils~anonymous|0 $start:~lib/proton-tsc/allow/allow.utils~anonymous|1)
 (export "escrow" (global $escrow.contract/escrow))
 (export "escrow#get:receiver" (func $~lib/as-chain/helpers/Contract#get:receiver))
 (export "escrow#set:receiver" (func $~lib/rt/common/BLOCK#set:mmInfo))
 (export "escrow#get:firstReceiver" (func $~lib/as-chain/helpers/Contract#get:firstReceiver))
 (export "escrow#set:firstReceiver" (func $~lib/rt/common/OBJECT#set:gcInfo))
 (export "escrow#get:action" (func $~lib/as-chain/helpers/Contract#get:action))
 (export "escrow#set:action" (func $~lib/rt/common/OBJECT#set:gcInfo2))
 (export "escrow#constructor" (func $escrow.contract/escrow#constructor))
 (export "escrow#get:contract" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:contract))
 (export "escrow#set:contract" (func $~lib/rt/common/OBJECT#set:rtId))
 (export "escrow#get:parentContract" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:parentContract))
 (export "escrow#set:parentContract" (func $~lib/rt/common/OBJECT#set:rtSize))
 (export "escrow#get:allowedActorTable" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:allowedActorTable))
 (export "escrow#set:allowedActorTable" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable))
 (export "escrow#get:allowedTokenTable" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:allowedTokenTable))
 (export "escrow#set:allowedTokenTable" (func $~lib/as-chain/idxdb/IDXDB#set:dbIndex))
 (export "escrow#get:allowGlobalsSingleton" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:allowGlobalsSingleton))
 (export "escrow#set:allowGlobalsSingleton" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton))
 (export "escrow#setglobals" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#setglobals))
 (export "escrow#settoken" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#settoken))
 (export "escrow#setactor" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#setactor))
 (export "escrow#checkContractIsNotPaused" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused))
 (export "escrow#checkActorIsAllowed" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkActorIsAllowed@varargs))
 (export "escrow#checkTokenIsAllowed" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokenIsAllowed@varargs))
 (export "escrow#checkNftsAreEnabled" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkNftsAreEnabled@varargs))
 (export "escrow#checkTokensAreEnabled" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokensAreEnabled@varargs))
 (export "escrow#findAllowedToken" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken))
 (export "escrow#isTokenAllowed" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokenAllowed))
 (export "escrow#isActorAllowed" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isActorAllowed))
 (export "escrow#isTokensEnabled" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokensEnabled))
 (export "escrow#isNftsEnabled" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isNftsEnabled))
 (export "escrow#isContractsEnabled" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isContractsEnabled))
 (export "escrow#isContractPaused" (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isContractPaused))
 (export "escrow#get:balancesTable" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#get:balancesTable))
 (export "escrow#set:balancesTable" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable))
 (export "escrow#transfer" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#transfer))
 (export "escrow#withdraw" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdraw))
 (export "escrow#withdrawAdmin" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin))
 (export "escrow#substractBalance" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance))
 (export "escrow#addBalance" (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance@varargs))
 (export "escrow#get:escrowsTable" (func $escrow.contract/escrow#get:escrowsTable))
 (export "escrow#set:escrowsTable" (func $escrow.contract/escrow#set:escrowsTable))
 (export "escrow#get:feeTable" (func $escrow.contract/escrow#get:feeTable))
 (export "escrow#set:feeTable" (func $escrow.contract/escrow#set:feeTable))
 (export "escrow#get:escrowGlobalSingleton" (func $escrow.contract/escrow#get:escrowGlobalSingleton))
 (export "escrow#set:escrowGlobalSingleton" (func $escrow.contract/escrow#set:escrowGlobalSingleton))
 (export "escrow#get:feeReceiver" (func $escrow.contract/escrow#get:feeReceiver))
 (export "escrow#set:feeReceiver" (func $escrow.contract/escrow#set:feeReceiver))
 (export "escrow#setfee" (func $escrow.contract/escrow#setfee))
 (export "escrow#startpool" (func $escrow.contract/escrow#startpool))
 (export "escrow#partakepool" (func $escrow.contract/escrow#partakepool))
 (export "escrow#cancelpool" (func $escrow.contract/escrow#cancelpool))
 (export "escrow#fillpool" (func $escrow.contract/escrow#fillpool))
 (export "escrow#logescrow" (func $escrow.contract/escrow#logescrow))
 (export "apply" (func $escrow.contract/apply))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/as-chain/bignum/integer/u128/u128#set:hi (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $start:~lib/proton-tsc/allow/allow.utils~anonymous|0 (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local.set $1
   (i64.load
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (local.set $2
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 9)
    )
   )
   (local.get $1)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (local.get $1)
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block
     (local.set $0
      (i32.add
       (local.tee $1
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $1)
      (local.get $3)
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/ExtendedSymbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 7)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $1)
    (i32.const 1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 11)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 8)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 7)
   )
   (i32.const 2320)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $0)
     )
     (local.get $3)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $4
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (local.get $0)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (local.get $0)
             )
             (i32.const 1)
            )
            (local.get $3)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $4)
        (i64.const 65)
       )
      )
      (i32.const 2384)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.or
       (local.get $4)
       (i64.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.shl
       (i64.load
        (local.get $2)
       )
       (i64.const 8)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.or
    (i64.load
     (local.get $2)
    )
    (i64.extend_i32_u
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor
      (i32.const 2448)
      (i32.const 0)
     )
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
  )
  (call $~lib/as-chain/asset/ExtendedSymbol#constructor
   (local.get $1)
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 12)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2480)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $start:~lib/proton-tsc/allow/allow.utils~anonymous|1 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i64.store
   (local.tee $2
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (i32.const 16)
      )
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (i64.store offset=8
   (local.get $2)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (local.set $0
   (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Symbol#isValid
    (i32.load
     (local.get $0)
    )
   )
   (i32.const 2576)
  )
  (local.get $0)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 2448)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 2448)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 2448)
     )
    )
   )
   (local.set $0
    (i32.const 2448)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2448)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 2448)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 2784)
   (i32.const 1)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 2784)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 2864)
          (i32.const 1)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 2864)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/array/Array<u8>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store8
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $start:escrow.contract
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 10268)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/mi/SAME_PAYER
   (local.get $0)
  )
  (local.set $4
   (call $~lib/as-chain/name/S2N
    (i32.const 2688)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $4)
  )
  (global.set $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT
   (local.get $0)
  )
  (local.set $0
   (i32.const 0)
  )
  (if
   (call $~lib/string/String#get:length
    (i32.const 2896)
   )
   (i32.store16
    (call $~lib/rt/stub/__new
     (i32.const 2)
     (i32.const 1)
    )
    (i32.load16_u
     (i32.const 2896)
    )
   )
  )
  (drop
   (call $~lib/string/String#charCodeAt
    (i32.const 2896)
    (i32.const 0)
   )
  )
  (local.set $5
   (i32.load offset=4
    (local.tee $3
     (call $~lib/array/Array<u8>#constructor
      (i32.const 256)
     )
    )
   )
  )
  (local.set $2
   (select
    (i32.const 0)
    (local.tee $1
     (i32.load offset=12
      (local.get $3)
     )
    )
    (i32.gt_s
     (local.get $1)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $1)
    (local.get $2)
   )
   (call $~lib/memory/memory.fill
    (i32.add
     (local.get $2)
     (local.get $5)
    )
    (i32.const 255)
    (i32.sub
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (global.set $~lib/proton-tsc/atomicassets/base58/BASE_MAP
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $0)
     (i32.const 58)
    )
    (block
     (if
      (i32.ne
       (i32.load8_u
        (i32.add
         (local.tee $1
          (call $~lib/string/String#charCodeAt
           (i32.const 2896)
           (local.get $0)
          )
         )
         (i32.load offset=4
          (global.get $~lib/proton-tsc/atomicassets/base58/BASE_MAP)
         )
        )
       )
       (i32.const 255)
      )
      (unreachable)
     )
     (call $~lib/array/Array<u8>#__uset
      (global.get $~lib/proton-tsc/atomicassets/base58/BASE_MAP)
      (local.get $1)
      (local.get $0)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed (param $0 i32) (param $1 i32)
  (i32.store8 offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked (param $0 i32) (param $1 i32)
  (i32.store8 offset=5
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 6)
     (i32.const 20)
    )
   )
   (local.get $0)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3774946851309382000)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isAllowed (param $0 i32) (param $1 i32)
  (i32.store8 offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isBlocked (param $0 i32) (param $1 i32)
  (i32.store8 offset=13
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 14)
     (i32.const 28)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isAllowed
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isBlocked
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs (result i32)
  (local $0 i32)
  (block $4of4
   (block $1of4
    (block $outOfRange
     (br_table $1of4 $1of4 $4of4 $4of4 $4of4 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $0
    (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor
   (i64.const 0)
   (local.get $0)
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3774946851634287920)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/IDXDB#set:dbIndex (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 26)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:dbIndex
   (local.get $0)
   (i32.const 0)
  )
  (local.get $0)
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 29)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs)
  )
  (local.set $8
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken.get:tableName)
  )
  (local.set $4
   (i64.and
    (i64.load
     (call $~lib/proton-tsc/allow/allow.tables/AllowedToken.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $7
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 27)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $5
   (i64.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $7)
   (i32.const 0)
   (call $~lib/as-chain/idxdb/IDXDB#constructor
    (call $~lib/rt/stub/__new
     (i32.const 28)
     (i32.const 57)
    )
    (local.get $5)
    (local.get $6)
    (local.get $4)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 30)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $0)
   )
  )
  (local.set $5
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $8)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 31)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused (param $0 i32) (param $1 i32)
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict (param $0 i32) (param $1 i32)
  (i32.store8 offset=1
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict (param $0 i32) (param $1 i32)
  (i32.store8 offset=2
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled (param $0 i32) (param $1 i32)
  (i32.store8 offset=3
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 6)
     (i32.const 32)
    )
   )
   (local.get $0)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict
   (local.get $6)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict
   (local.get $6)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled
   (local.get $6)
   (local.get $3)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $6)
   (local.get $4)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $6)
   (local.get $5)
  )
  (local.get $6)
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 33)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
    (i32.const 1)
    (i32.const 1)
    (i32.const 1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (i64.const 3774946890198131584)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.load
    (local.get $4)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3168)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 34)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 35)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (local.set $0
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $3
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 39)
      (i32.const 3200)
     )
    )
   )
   (local.set $2
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 3)
     (i32.const 40)
     (i32.const 3232)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 36)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4152997948076064768)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable (param $0 i32) (param $1 i32)
  (i32.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (block (result i32)
          (if
           (i32.eqz
            (local.get $0)
           )
           (local.set $0
            (call $~lib/rt/stub/__new
             (i32.const 36)
             (i32.const 17)
            )
           )
          )
          (local.get $0)
         )
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 32)
          (i32.const 18)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 19)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor.get:tableName)
  )
  (drop
   (i64.load
    (call $~lib/proton-tsc/allow/allow.tables/AllowedActor.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3136)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 25)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $0)
   (local.get $2)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:dbIndex
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
    (local.get $1)
    (local.get $1)
   )
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
    (local.get $1)
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 41)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/balance/balance.tables/Balance.get:tableName)
  )
  (drop
   (i64.load
    (call $~lib/proton-tsc/balance/balance.tables/Balance.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3264)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 42)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 43)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $escrow.tables/Escrow#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 28)
     (i32.const 44)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $6)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $6)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $6)
   (local.get $3)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $6)
   (local.get $4)
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:dbIndex
   (local.get $6)
   (local.get $5)
  )
  (local.get $6)
 )
 (func $escrow.tables/Escrow#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $6of6
   (block $4of6
    (block $3of6
     (block $2of6
      (block $1of6
       (block $outOfRange
        (br_table $1of6 $1of6 $2of6 $3of6 $4of6 $6of6 $6of6 $outOfRange
         (global.get $~argumentsLength)
        )
       )
       (unreachable)
      )
      (local.set $0
       (global.get $~lib/as-chain/name/EMPTY_NAME)
      )
     )
     (local.set $3
      (call $~lib/rt/__newArray
       (i32.const 0)
       (i32.const 2)
       (i32.const 45)
       (i32.const 3296)
      )
     )
    )
    (local.set $2
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 39)
      (i32.const 3328)
     )
    )
   )
   (local.set $1
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 3)
     (i32.const 40)
     (i32.const 3360)
    )
   )
  )
  (call $escrow.tables/Escrow#constructor
   (i64.const 0)
   (local.get $0)
   (local.get $3)
   (local.get $2)
   (local.get $1)
   (i32.const 0)
  )
 )
 (func $escrow.tables/Escrow.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6201872796205711360)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/Escrow#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $8
   (call $escrow.tables/Escrow.get:tableName)
  )
  (local.set $4
   (i64.and
    (i64.load
     (call $escrow.tables/Escrow.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $7
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 27)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $5
   (i64.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $7)
   (i32.const 0)
   (call $~lib/as-chain/idxdb/IDXDB#constructor
    (call $~lib/rt/stub/__new
     (i32.const 28)
     (i32.const 58)
    )
    (local.get $5)
    (local.get $6)
    (local.get $4)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 47)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $0)
   )
  )
  (local.set $5
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $8)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 48)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $escrow.contract/escrow#set:escrowsTable (param $0 i32) (param $1 i32)
  (i32.store offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $escrow.tables/Fee#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 49)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/ExtendedAsset#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 37)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 38)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $escrow.tables/Fee#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $1
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 250000)
     (call $~lib/as-chain/asset/Symbol#constructor
      (i32.const 3392)
      (i32.const 6)
     )
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const -1267475983267528704)
   )
   (local.set $0
    (call $~lib/as-chain/asset/ExtendedAsset#constructor
     (local.get $1)
     (local.get $0)
    )
   )
  )
  (call $escrow.tables/Fee#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $escrow.tables/Fee.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6527263972431757312)
  )
  (local.get $0)
 )
 (func $escrow.contract/escrow#set:feeTable (param $0 i32) (param $1 i32)
  (i32.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $escrow.tables/EscrowGlobal#constructor (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 53)
    )
   )
   (i64.const 0)
  )
  (local.get $0)
 )
 (func $escrow.contract/escrow#set:escrowGlobalSingleton (param $0 i32) (param $1 i32)
  (i32.store offset=44
   (local.get $0)
   (local.get $1)
  )
 )
 (func $escrow.contract/escrow#set:feeReceiver (param $0 i32) (param $1 i32)
  (i32.store offset=48
   (local.get $0)
   (local.get $1)
  )
 )
 (func $escrow.contract/escrow#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local.set $1
   (i32.load
    (local.tee $0
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#constructor
      (if (result i32)
       (local.get $0)
       (local.get $0)
       (call $~lib/rt/stub/__new
        (i32.const 52)
        (i32.const 16)
       )
      )
      (local.get $1)
      (local.get $2)
      (local.get $3)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $escrow.contract/escrow#set:escrowsTable
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#constructor
    (local.get $1)
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 50)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/Fee#constructor@varargs)
  )
  (local.set $4
   (call $escrow.tables/Fee.get:tableName)
  )
  (drop
   (i64.load
    (call $escrow.tables/Fee.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3424)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 51)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 52)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $escrow.contract/escrow#set:feeTable
   (local.get $0)
   (local.get $2)
  )
  (local.set $4
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 54)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/EscrowGlobal#constructor)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.const 6201872790059076880)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.load
    (local.get $3)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3456)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 55)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $4)
   )
  )
  (local.set $7
   (i64.load
    (local.get $4)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 56)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (call $escrow.contract/escrow#set:escrowGlobalSingleton
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (i64.const 6201872796923347456)
  )
  (call $escrow.contract/escrow#set:feeReceiver
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/helpers/Contract#get:receiver (param $0 i32) (result i32)
  (i32.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:firstReceiver (param $0 i32) (result i32)
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/helpers/Contract#get:action (param $0 i32) (result i32)
  (i32.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:contract (param $0 i32) (result i32)
  (i32.load offset=12
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:parentContract (param $0 i32) (result i32)
  (i32.load offset=16
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:allowedActorTable (param $0 i32) (result i32)
  (i32.load offset=20
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:allowedTokenTable (param $0 i32) (result i32)
  (i32.load offset=24
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#get:allowGlobalsSingleton (param $0 i32) (result i32)
  (i32.load offset=28
   (local.get $0)
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 59)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue (result i64)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3774946890198131584)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<bool> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getValue (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $0)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (drop
    (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack
     (local.tee $1
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
       (i32.const 0)
       (i32.const 0)
       (i32.const 0)
       (i32.const 1)
       (i32.const 1)
       (i32.const 1)
      )
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 60)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 3808)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<bool> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 6)
    )
   )
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=1
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=2
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=3
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=5
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 63)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 3888)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getValue
        (local.get $1)
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $6)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $7)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#setglobals (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
   )
  )
  (local.set $1
   (i32.load offset=12
    (local.get $0)
   )
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find
      (i32.load offset=8
       (local.tee $2
        (i32.load offset=28
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $2)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#update
    (i32.load offset=8
     (local.get $2)
    )
    (local.get $0)
    (local.get $4)
    (local.get $1)
   )
   (block
    (local.set $0
     (i32.const 0)
    )
    (local.set $3
     (i32.load
      (local.tee $2
       (i32.load offset=8
        (local.get $2)
       )
      )
     )
    )
    (local.set $7
     (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
    )
    (local.set $8
     (i64.load
      (local.get $1)
     )
    )
    (local.set $5
     (i32.load offset=12
      (local.tee $4
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
        (local.get $4)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
      (local.get $3)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $3)
       )
       (i64.load offset=16
        (local.get $3)
       )
       (local.get $8)
       (local.get $7)
       (i32.load offset=4
        (local.get $4)
       )
       (local.get $5)
      )
      (local.get $7)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $0)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $2)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $2)
         )
         (local.get $0)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
        (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
        (i64.load
         (local.get $1)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $7
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
      )
      (i64.load offset=8
       (local.get $2)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $2)
      (select
       (i64.const -2)
       (i64.add
        (local.get $7)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $7)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.const 0)
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 3)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i64.load
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 3)
    )
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 62)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 64)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#unpack
    (local.tee $0
     (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getBySecondaryU128 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (block $__inlined_func$~lib/rt/__instanceof (result i32)
     (if
      (i32.le_u
       (local.tee $2
        (i32.load offset=12
         (i32.sub
          (local.tee $3
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (i32.load offset=4
             (i32.load
              (local.get $0)
             )
            )
            (i32.const 0)
           )
          )
          (i32.const 20)
         )
        )
       )
       (i32.load
        (i32.const 9504)
       )
      )
      (loop $do-continue|0
       (drop
        (br_if $__inlined_func$~lib/rt/__instanceof
         (i32.const 1)
         (i32.eq
          (local.get $2)
          (i32.const 57)
         )
        )
       )
       (br_if $do-continue|0
        (local.tee $2
         (i32.load offset=4
          (i32.add
           (i32.shl
            (local.get $2)
            (i32.const 3)
           )
           (i32.const 9508)
          )
         )
        )
       )
      )
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (local.set $2
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/array/Array<u64>#__set
   (local.tee $4
    (call $~lib/array/Array<u64>#constructor
     (i32.const 2)
    )
   )
   (i32.const 0)
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/array/Array<u64>#__set
   (local.get $4)
   (i32.const 1)
   (i64.load offset=8
    (local.get $1)
   )
  )
  (local.set $5
   (call $~lib/as-chain/env/db_idx128_lowerbound
    (i64.load
     (local.get $3)
    )
    (i64.load offset=8
     (local.get $3)
    )
    (i64.load offset=16
     (local.get $3)
    )
    (i32.load offset=4
     (local.get $4)
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
     (local.tee $1
      (if (result i32)
       (if (result i32)
        (i64.eq
         (i64.load
          (local.get $1)
         )
         (call $~lib/array/Array<u64>#__get
          (local.get $4)
          (i32.const 0)
         )
        )
        (i64.eq
         (i64.load offset=8
          (local.get $1)
         )
         (call $~lib/array/Array<u64>#__get
          (local.get $4)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
        (local.get $5)
        (i64.load
         (local.get $2)
        )
        (i32.load offset=24
         (local.get $3)
        )
       )
       (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
        (i32.const -1)
        (i64.const 0)
        (i32.load offset=24
         (local.get $3)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
   (local.get $0)
   (i64.load offset=8
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken (param $0 i32) (param $1 i32) (result i32)
  (local.set $0
   (i32.load offset=24
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getBySecondaryU128
   (local.get $0)
   (call_indirect (type $i32_=>_i32)
    (local.get $1)
    (i32.load
     (i32.const 2288)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
       (local.tee $1
        (i32.load
         (i32.load
          (local.get $0)
         )
        )
       )
       (call $~lib/as-chain/env/db_lowerbound_i64
        (i64.load
         (local.get $1)
        )
        (i64.load offset=8
         (local.get $1)
        )
        (i64.load offset=16
         (local.get $1)
        )
        (i64.const 0)
       )
       (i64.const 0)
       (i32.const 0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $1
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
       (local.get $3)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (local.set $5
      (local.tee $4
       (i64.load
        (if (result i32)
         (local.tee $1
          (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
           (i32.load
            (i32.load
             (local.get $0)
            )
           )
           (local.get $1)
          )
         )
         (local.get $1)
         (block (result i32)
          (global.set $~argumentsLength
           (i32.const 0)
          )
          (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs)
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $0)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 4160)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.const 26)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=13
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.get $1)
   )
   (block
    (local.set $0
     (i32.load offset=8
      (local.get $0)
     )
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (local.set $0
     (call_indirect (type $i32_=>_i32)
      (local.get $0)
      (i32.load
       (i32.const 2288)
      )
     )
    )
    (i64.store
     (local.tee $2
      (i32.load offset=4
       (local.tee $1
        (call $~lib/array/Array<u64>#constructor
         (i32.const 2)
        )
       )
      )
     )
     (i64.load
      (local.get $0)
     )
    )
    (i64.store offset=8
     (local.get $2)
     (i64.load offset=8
      (local.get $0)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (i32.const 1)
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 4240)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
    (local.get $0)
    (i64.load
     (local.get $1)
    )
   )
   (block
    (local.set $3
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#requireFind
      (i32.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#update
     (i32.load
      (local.get $0)
     )
     (local.get $3)
     (local.get $1)
     (local.get $2)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
        (i32.load
         (local.get $0)
        )
        (local.tee $6
         (i64.load
          (local.get $1)
         )
        )
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $7
     (i32.load
      (local.tee $5
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $4
     (i64.load
      (local.get $1)
     )
    )
    (local.set $8
     (i64.load
      (local.get $2)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $4)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $4)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $3)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $5)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $5)
         )
         (local.get $3)
        )
        (i64.load
         (local.get $1)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue
         (local.get $1)
         (local.get $3)
        )
        (i64.load
         (local.get $2)
        )
       )
       (local.set $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $4
       (i64.load
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $5)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $5)
      (select
       (i64.const -2)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $4)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $6)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $6)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $6)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#settoken (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (select
     (local.get $3)
     (i32.const 0)
     (local.get $2)
    )
   )
   (i32.const 3952)
  )
  (local.set $1
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor
    (if (result i64)
     (local.tee $5
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken
       (local.get $0)
       (local.get $1)
      )
     )
     (i64.load
      (local.get $5)
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:availablePrimaryKey
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
  )
  (if
   (select
    (i32.const 1)
    (local.get $3)
    (local.get $2)
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#set
    (i32.load offset=24
     (local.get $0)
    )
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (drop
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#requireFind
      (i32.load
       (local.tee $2
        (i32.load offset=24
         (local.get $0)
        )
       )
      )
      (local.tee $4
       (i64.load
        (local.get $1)
       )
      )
      (i32.const 1648)
     )
    )
    (local.set $0
     (i32.const 0)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (local.get $4)
       )
      )
     )
     (i32.const 4288)
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#remove
     (i32.load
      (local.get $1)
     )
     (local.get $3)
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $0)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (block
       (if
        (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
         (i32.load
          (local.tee $3
           (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (i32.load offset=4
              (local.get $1)
             )
             (local.get $0)
            )
            (local.get $4)
           )
          )
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (i32.load offset=4
           (local.get $1)
          )
          (local.get $0)
         )
         (i32.load
          (local.get $3)
         )
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.eq
      (local.get $4)
      (i64.sub
       (i64.load offset=8
        (local.get $2)
       )
       (i64.const 1)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $2)
      (i64.const -1)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue (param $0 i32) (result i64)
  (i64.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 65)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#unpack
    (local.tee $0
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i32.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 10)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
   (local.get $1)
   (i32.load8_u offset=5
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $4)
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get
    (local.get $0)
    (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
     (local.get $1)
    )
   )
   (block
    (local.set $3
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $4
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#requireFind
      (i32.load
       (local.get $0)
      )
      (local.get $3)
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#update
     (i32.load
      (local.get $0)
     )
     (local.get $4)
     (local.get $1)
     (local.get $2)
    )
   )
   (block
    (local.set $3
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
        (i32.load
         (local.get $0)
        )
        (local.get $3)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $7
     (i32.load
      (local.tee $6
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $5
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $8
     (i64.load
      (local.get $2)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $5)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $5)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $4)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $6)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $6)
         )
         (local.get $4)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
         (local.get $1)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
        (i64.load
         (local.get $2)
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $5
       (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $6)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $6)
      (select
       (i64.const -2)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $5)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $3)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $3)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $3)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#setactor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (select
     (local.get $3)
     (i32.const 0)
     (local.get $2)
    )
   )
   (i32.const 4368)
  )
  (local.set $1
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
  )
  (if
   (select
    (i32.const 1)
    (local.get $3)
    (local.get $2)
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set
    (i32.load offset=20
     (local.get $0)
    )
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (local.set $2
     (i32.load offset=20
      (local.get $0)
     )
    )
    (local.set $4
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#requireFind
      (i32.load
       (local.get $2)
      )
      (local.get $4)
      (i32.const 1648)
     )
    )
    (local.set $3
     (i32.const 0)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
      (local.tee $0
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (local.get $4)
       )
      )
     )
     (i32.const 4288)
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#remove
     (i32.load
      (local.get $1)
     )
     (local.get $0)
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $3)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (block
       (if
        (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
         (i32.load
          (local.tee $0
           (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (i32.load offset=4
              (local.get $1)
             )
             (local.get $3)
            )
            (local.get $4)
           )
          )
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (i32.load offset=4
           (local.get $1)
          )
          (local.get $3)
         )
         (i32.load
          (local.get $0)
         )
        )
       )
       (local.set $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.eq
      (local.get $4)
      (i64.sub
       (i64.load offset=8
        (local.get $2)
       )
       (i64.const 1)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $2)
      (i64.const -1)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (block
    (if
     (i32.eqz
      (local.tee $0
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getValue
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (return
     (local.get $0)
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
   (i32.const 1)
   (i32.const 1)
   (i32.const 1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isContractPaused (param $0 i32) (result i32)
  (i32.load8_u
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 0)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (call $~lib/array/Array<u8>#__uset
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/Name#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local.set $2
   (i64.load
    (local.get $0)
   )
  )
  (local.set $0
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (call $~lib/array/Array<u8>#__set
      (local.get $0)
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $2)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $2)
          (i64.const 15)
         )
        )
       )
      )
     )
     (local.set $2
      (select
       (i64.shr_u
        (local.get $2)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $2)
        (i64.const 4)
       )
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $0)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (call $~lib/array/Array<u8>#slice
     (local.get $0)
     (i32.const 0)
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.eqz
    (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isContractPaused
     (local.get $0)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 4608)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4608)
   )
  )
 )
 (func $~lib/string/String.__not (param $0 i32) (result i32)
  (if (result i32)
   (local.get $0)
   (i32.eqz
    (call $~lib/string/String#get:length
     (local.get $0)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isActorAllowed (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load8_u offset=1
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
     (i32.load offset=28
      (local.get $0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get
      (i32.load offset=20
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.eqz
     (local.get $2)
    )
   )
  )
  (if (result i32)
   (i32.load8_u offset=4
    (local.get $0)
   )
   (i32.const 1)
   (if (result i32)
    (local.get $2)
    (i32.const 0)
    (i32.eqz
     (i32.load8_u offset=5
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  (select
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 10)
     )
     (i32.const 1)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 10000)
      )
      (i32.const 3)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 1000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 100)
    )
   )
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 1000000)
     )
     (i32.const 6)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 1000000000)
      )
      (i32.const 8)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 100000000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 10000000)
    )
   )
   (i32.lt_u
    (local.get $0)
    (i32.const 100000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $1)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $1
     (i32.div_u
      (local.get $1)
      (i32.const 10)
     )
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount64High (param $0 i64) (result i32)
  (select
   (select
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000)
      )
      (i32.const 10)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000)
     )
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000000)
      )
      (i32.const 13)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 1000000000000)
    )
   )
   (select
    (i32.add
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000000)
     )
     (i32.const 16)
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const -8446744073709551616)
      )
      (i32.const 18)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 1000000000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 100000000000000000)
    )
   )
   (i64.lt_u
    (local.get $0)
    (i64.const 1000000000000000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u64> (param $0 i32) (param $1 i64) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.wrap_i64
      (i64.rem_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (i64.ne
     (local.tee $1
      (i64.div_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i64.const 0)
    )
   )
  )
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/util/number/utoa64
   (if
    (i64.eqz
     (local.get $0)
    )
    (block
     (local.set $1
      (i32.const 4960)
     )
     (br $__inlined_func$~lib/util/number/utoa64)
    )
   )
   (if
    (i64.le_u
     (local.get $0)
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $3
         (call $~lib/util/number/decimalCount32
          (local.tee $2
           (i32.wrap_i64
            (local.get $0)
           )
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $3)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $2
         (call $~lib/util/number/decimalCount64High
          (local.get $0)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $0)
     (local.get $2)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 66)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 2)
      )
     )
    )
    (local.get $1)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $2
    (call $~lib/rt/stub/__new
     (local.get $0)
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/Symbol#getSymbolString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 7)
   )
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (local.get $3)
        (i64.const 8)
       )
      )
     )
    )
    (block
     (local.set $0
      (i32.wrap_i64
       (i64.and
        (local.get $3)
        (i64.const 255)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $1)
       (i32.load offset=8
        (local.get $2)
       )
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $0)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $4
   (select
    (i32.const 0)
    (local.tee $0
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i32.gt_s
     (local.get $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $1
     (call $~lib/typedarray/Uint8Array#constructor
      (local.tee $0
       (select
        (local.tee $0
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $1)
            (i32.const 0)
           )
           (select
            (local.tee $0
             (i32.add
              (local.get $0)
              (local.get $1)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $0)
             (i32.const 0)
            )
           )
           (select
            (local.get $1)
            (local.get $0)
            (i32.gt_s
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $0)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
   (i32.add
    (local.get $4)
    (i32.load offset=4
     (local.get $2)
    )
   )
   (local.get $0)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokenAllowed (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (i32.load8_u offset=2
    (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
     (i32.load offset=28
      (local.get $0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (i32.eqz
     (local.get $2)
    )
   )
  )
  (if (result i32)
   (i32.load8_u offset=12
    (local.get $0)
   )
   (i32.const 1)
   (if (result i32)
    (local.get $2)
    (i32.const 0)
    (i32.eqz
     (i32.load8_u offset=13
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isNftsEnabled (param $0 i32) (result i32)
  (i32.load8_u offset=4
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkNftsAreEnabled (param $0 i32) (param $1 i32)
  (local.set $1
   (select
    (i32.const 5152)
    (local.get $1)
    (call $~lib/string/String.__not
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isNftsEnabled
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokensEnabled (param $0 i32) (result i32)
  (i32.load8_u offset=3
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokensAreEnabled (param $0 i32) (param $1 i32)
  (local.set $1
   (select
    (i32.const 5216)
    (local.get $1)
    (call $~lib/string/String.__not
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokensEnabled
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#isContractsEnabled (param $0 i32) (result i32)
  (i32.load8_u offset=5
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
    (i32.load offset=28
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#get:balancesTable (param $0 i32) (result i32)
  (i32.load offset=32
   (local.get $0)
  )
 )
 (func $~lib/as-chain/action/readActionData (result i32)
  (local $0 i32)
  (local $1 i32)
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $0
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 67)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $2
      (call $~lib/array/Array<u64>#constructor
       (local.tee $1
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $0)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
    (local.tee $1
     (i32.shl
      (local.get $1)
      (i32.const 3)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $2)
   )
  )
 )
 (func $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/skipDepositFrom (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i64.eq
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (local.set $2
   (call $~lib/as-chain/name/S2N
    (i32.const 5312)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (local.get $2)
  )
  (if
   (if (result i32)
    (if (result i32)
     (i64.eq
      (i64.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
     (i32.const 1)
     (block (result i32)
      (local.set $2
       (call $~lib/as-chain/name/S2N
        (i32.const 5360)
       )
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $1
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 5)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $1)
       (local.get $2)
      )
      (i64.eq
       (i64.load
        (local.get $0)
       )
       (i64.load
        (local.get $1)
       )
      )
     )
    )
    (i32.const 1)
    (block (result i32)
     (local.set $2
      (call $~lib/as-chain/name/S2N
       (i32.const 5408)
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $1)
      (local.get $2)
     )
     (i64.eq
      (i64.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 0)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 68)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 39)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2448)
     (i32.const 0)
    )
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $~lib/as-chain/asset/ExtendedAsset#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
  )
  (call $~lib/as-chain/asset/ExtendedAsset#constructor
   (local.get $1)
   (local.get $0)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=4
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/balance/balance.tables/Balance#unpack
    (local.tee $0
     (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $~lib/as-chain/asset/Asset#isValid (param $0 i32) (result i32)
  (if (result i32)
   (if (result i32)
    (i64.ge_s
     (i64.load
      (local.get $0)
     )
     (i64.const -4611686018427387903)
    )
    (i64.le_s
     (i64.load
      (local.get $0)
     )
     (i64.const 4611686018427387903)
    )
    (i32.const 0)
   )
   (call $~lib/as-chain/asset/Symbol#isValid
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol (param $0 i32) (result i32)
  (call $~lib/as-chain/asset/ExtendedSymbol#constructor
   (i32.load offset=8
    (i32.load
     (local.get $0)
    )
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/findIndexOfExtendedAsset (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (i32.const -1)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (local.get $0)
     )
    )
    (block $for-break0
     (local.set $4
      (call $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
     (local.set $5
      (call $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol
       (local.get $1)
      )
     )
     (if
      (if (result i32)
       (i64.eq
        (i64.load
         (i32.load
          (local.get $4)
         )
        )
        (i64.load
         (i32.load
          (local.get $5)
         )
        )
       )
       (i64.eq
        (i64.load
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i64.load
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (i32.const 0)
      )
      (block
       (local.set $3
        (local.get $2)
       )
       (br $for-break0)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/array/ensureCapacity
   (local.get $0)
   (local.tee $3
    (i32.add
     (local.tee $2
      (i32.load offset=12
       (local.get $0)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 2)
  )
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $2)
     (i32.const 2)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
 )
 (func $~lib/as-chain/asset/Symbol.fromU64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2448)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (i32.load offset=12
    (local.get $1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (local.get $1)
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $0)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumberArray<u64> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (i32.load offset=12
    (local.get $1)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.tee $1
    (i32.shl
     (i32.load offset=12
      (local.get $1)
     )
     (i32.const 3)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (i32.const 8)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
       (local.get $2)
      )
      (i32.shl
       (i32.load offset=12
        (i32.load offset=8
         (local.get $0)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $4)
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/balance/balance.tables/Balance#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local.set $1
   (if (result i32)
    (local.tee $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#get
      (i32.load offset=32
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (local.get $5)
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 1)
     )
     (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (local.set $7
      (i32.load offset=4
       (local.get $1)
      )
     )
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/asset/Asset#isValid
       (i32.load
        (local.tee $5
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (local.get $2)
          (local.get $6)
         )
        )
       )
      )
      (i32.const 5536)
     )
     (call $~lib/as-chain/system/check
      (i64.gt_s
       (i64.load
        (i32.load
         (local.get $5)
        )
       )
       (i64.const 0)
      )
      (i32.const 5584)
     )
     (if
      (i32.eq
       (local.tee $10
        (call $~lib/proton-tsc/balance/balance.utils/findIndexOfExtendedAsset
         (local.get $7)
         (local.get $5)
        )
       )
       (i32.const -1)
      )
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#push
       (local.get $7)
       (local.get $5)
      )
      (block
       (call $~lib/as-chain/system/check
        (i64.eq
         (i64.load
          (i32.load offset=4
           (local.tee $11
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (local.get $7)
             (local.get $10)
            )
           )
          )
         )
         (i64.load
          (i32.load offset=4
           (local.get $5)
          )
         )
        )
        (i32.const 5664)
       )
       (call $~lib/as-chain/system/check
        (i64.eq
         (i64.load
          (i32.load offset=8
           (local.tee $12
            (i32.load
             (local.get $11)
            )
           )
          )
         )
         (i64.load
          (i32.load offset=8
           (local.tee $5
            (i32.load
             (local.get $5)
            )
           )
          )
         )
        )
        (i32.const 5728)
       )
       (call $~lib/as-chain/system/check
        (i64.ge_s
         (local.tee $8
          (i64.add
           (i64.load
            (local.get $12)
           )
           (i64.load
            (local.get $5)
           )
          )
         )
         (i64.const -4611686018427387903)
        )
        (i32.const 5792)
       )
       (call $~lib/as-chain/system/check
        (i64.le_s
         (local.get $8)
         (i64.const 4611686018427387903)
        )
        (i32.const 5856)
       )
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
        (local.get $7)
        (local.get $10)
        (call $~lib/as-chain/asset/ExtendedAsset#constructor
         (call $~lib/as-chain/asset/Asset#constructor
          (local.get $8)
          (call $~lib/as-chain/asset/Symbol.fromU64
           (i64.load
            (i32.load offset=8
             (local.get $12)
            )
           )
          )
         )
         (i32.load offset=4
          (local.get $11)
         )
        )
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i32.gt_u
    (local.tee $6
     (i32.add
      (local.tee $5
       (i32.load offset=12
        (local.tee $2
         (i32.load offset=8
          (local.get $1)
         )
        )
       )
      )
      (local.tee $7
       (select
        (i32.load offset=12
         (local.get $3)
        )
        (i32.const 0)
        (local.get $3)
       )
      )
     )
    )
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.copy
   (local.tee $10
    (i32.load offset=4
     (local.tee $6
      (call $~lib/rt/__newArray
       (local.get $6)
       (i32.const 3)
       (i32.const 40)
       (i32.const 0)
      )
     )
    )
   )
   (i32.load offset=4
    (local.get $2)
   )
   (local.tee $2
    (i32.shl
     (local.get $5)
     (i32.const 3)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (local.get $2)
    (local.get $10)
   )
   (i32.load offset=4
    (local.get $3)
   )
   (i32.shl
    (local.get $7)
    (i32.const 3)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $6)
  )
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#get
    (local.tee $0
     (i32.load offset=32
      (local.get $0)
     )
    )
    (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
     (local.get $1)
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#update
    (local.get $0)
    (local.get $1)
    (local.get $4)
   )
   (block
    (local.set $8
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
        (i32.load
         (local.get $0)
        )
        (local.get $8)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $2
     (i32.const 0)
    )
    (local.set $5
     (i32.load
      (local.tee $3
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $9
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $13
     (i64.load
      (local.get $4)
     )
    )
    (local.set $6
     (i32.load offset=12
      (local.tee $7
       (call $~lib/proton-tsc/balance/balance.tables/Balance#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor
      (local.get $5)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $5)
       )
       (i64.load offset=16
        (local.get $5)
       )
       (local.get $13)
       (local.get $9)
       (i32.load offset=4
        (local.get $7)
       )
       (local.get $6)
      )
      (local.get $9)
      (i32.const 1)
     )
    )
    (loop $for-loop|00
     (if
      (i32.lt_s
       (local.get $2)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $3)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $3)
         )
         (local.get $2)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
         (local.get $1)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
        (i64.load
         (local.get $4)
        )
       )
       (local.set $2
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (br $for-loop|00)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $9
       (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $3)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $3)
      (select
       (i64.const -2)
       (i64.add
        (local.get $9)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $9)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $8)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $8)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $8)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 69)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/string/String#padStart (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $4
   (i32.shl
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.const 1)
    (i32.eqz
     (local.tee $3
      (i32.shl
       (call $~lib/string/String#get:length
        (i32.const 4960)
       )
       (i32.const 1)
      )
     )
    )
    (i32.gt_u
     (local.get $4)
     (local.tee $2
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $2)
    (i32.const 1)
   )
  )
  (if
   (i32.gt_u
    (local.tee $2
     (i32.sub
      (local.get $2)
      (local.get $4)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $7
     (i32.mul
      (local.tee $5
       (i32.div_u
        (i32.sub
         (local.get $2)
         (i32.const 2)
        )
        (local.get $3)
       )
      )
      (local.get $3)
     )
    )
    (local.set $5
     (i32.mul
      (local.get $3)
      (local.get $5)
     )
    )
    (loop $while-continue|0
     (if
      (i32.gt_u
       (local.get $5)
       (local.get $6)
      )
      (block
       (call $~lib/memory/memory.copy
        (i32.add
         (local.get $1)
         (local.get $6)
        )
        (i32.const 4960)
        (local.get $3)
       )
       (local.set $6
        (i32.add
         (local.get $3)
         (local.get $6)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (local.get $1)
      (local.get $7)
     )
     (i32.const 4960)
     (i32.sub
      (local.get $2)
      (local.get $7)
     )
    )
   )
   (call $~lib/memory/memory.copy
    (local.get $1)
    (i32.const 4960)
    (local.get $2)
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (local.get $1)
    (local.get $2)
   )
   (local.get $0)
   (local.get $4)
  )
  (local.get $1)
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/string/String#get:length
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (if
   (i32.le_s
    (local.tee $2
     (i32.sub
      (if (result i32)
       (i32.lt_s
        (local.get $2)
        (i32.const 0)
       )
       (select
        (local.tee $2
         (i32.add
          (local.get $2)
          (local.get $3)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
       (select
        (local.get $2)
        (local.get $3)
        (i32.lt_s
         (local.get $2)
         (local.get $3)
        )
       )
      )
      (local.get $1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 2448)
   )
  )
  (call $~lib/memory/memory.copy
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.const 1)
    )
   )
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/asset/Asset#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $3
   (i32.wrap_i64
    (i64.and
     (i64.load
      (i32.load offset=8
       (local.get $0)
      )
     )
     (i64.const 255)
    )
   )
  )
  (block $__inlined_func$~lib/util/number/itoa64
   (if
    (i64.eqz
     (local.tee $2
      (i64.load
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (i32.const 4960)
     )
     (br $__inlined_func$~lib/util/number/itoa64)
    )
   )
   (if
    (i64.le_u
     (local.tee $2
      (select
       (i64.sub
        (i64.const 0)
        (local.get $2)
       )
       (local.get $2)
       (local.tee $4
        (i32.wrap_i64
         (i64.shr_u
          (local.get $2)
          (i64.const 63)
         )
        )
       )
      )
     )
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $5
         (i32.add
          (call $~lib/util/number/decimalCount32
           (local.tee $6
            (i32.wrap_i64
             (local.get $2)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $6)
     (local.get $5)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $5
         (i32.add
          (call $~lib/util/number/decimalCount64High
           (local.get $2)
          )
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $5)
    )
   )
   (if
    (local.get $4)
    (i32.store16
     (local.get $1)
     (i32.const 45)
    )
   )
  )
  (local.set $1
   (call $~lib/string/String#padStart
    (local.get $1)
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
  )
  (call $~lib/string/String.__concat
   (call $~lib/string/String.__concat
    (if (result i32)
     (local.get $3)
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (call $~lib/string/String#slice
        (local.get $1)
        (i32.const 0)
        (i32.sub
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (local.get $3)
        )
       )
       (i32.const 6240)
      )
      (call $~lib/string/String#slice
       (local.get $1)
       (i32.sub
        (call $~lib/string/String#get:length
         (local.get $1)
        )
        (local.get $3)
       )
       (call $~lib/string/String#get:length
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
    (i32.const 6272)
   )
   (call $~lib/as-chain/asset/Symbol#getSymbolString
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#transfer (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (if
   (i64.eq
    (i64.load
     (i32.load offset=16
      (local.get $0)
     )
    )
    (i64.load
     (global.get $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT)
    )
   )
   (block
    (local.set $2
     (call $~lib/as-chain/action/readActionData)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#unpack
      (local.tee $1
       (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#constructor
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (call $~lib/rt/__newArray
         (i32.const 0)
         (i32.const 3)
         (i32.const 40)
         (i32.const 5280)
        )
        (i32.const 2448)
       )
      )
      (local.get $2)
     )
    )
    (if
     (call $~lib/proton-tsc/balance/balance.utils/skipDepositFrom
      (i32.load
       (local.get $1)
      )
      (i32.load offset=12
       (local.get $0)
      )
     )
     (return)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=4
        (local.get $1)
       )
      )
      (i64.load
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (i32.const 5440)
    )
    (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkNftsAreEnabled
     (local.get $0)
     (i32.const 2448)
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance
     (local.get $0)
     (i32.load
      (local.get $1)
     )
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 39)
      (i32.const 5504)
     )
     (i32.load offset=8
      (local.get $1)
     )
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (block
    (local.set $2
     (call $~lib/as-chain/action/readActionData)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $~lib/proton-tsc/token/token.inline/Transfer#unpack
      (local.tee $1
       (call $~lib/proton-tsc/token/token.inline/Transfer#constructor
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (call $~lib/as-chain/asset/Asset#constructor@varargs)
        (i32.const 2448)
       )
      )
      (local.get $2)
     )
    )
    (if
     (call $~lib/proton-tsc/balance/balance.utils/skipDepositFrom
      (i32.load
       (local.get $1)
      )
      (i32.load offset=12
       (local.get $0)
      )
     )
     (return)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=4
        (local.get $1)
       )
      )
      (i64.load
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (i32.const 5440)
    )
    (drop
     (i32.load offset=4
      (local.tee $2
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 39)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $2)
     (i32.const 0)
     (call $~lib/as-chain/asset/ExtendedAsset#constructor
      (i32.load offset=8
       (local.get $1)
      )
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokensAreEnabled
     (local.get $0)
     (i32.const 2448)
    )
    (local.set $3
     (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isActorAllowed
      (local.get $0)
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 6064)
     (i32.const 1)
     (call $~lib/as-chain/name/Name#toString
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $3)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 6064)
     )
    )
    (local.set $3
     (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokenAllowed
      (local.get $0)
      (call $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $2)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 6208)
     (i32.const 1)
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (call $~lib/as-chain/asset/Asset#toString
        (i32.load
         (local.tee $4
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (local.get $2)
           (i32.const 0)
          )
         )
        )
       )
       (i32.const 5120)
      )
      (call $~lib/as-chain/name/Name#toString
       (i32.load offset=4
        (local.get $4)
       )
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $3)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 6208)
     )
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance
     (local.get $0)
     (i32.load
      (local.get $1)
     )
     (local.get $2)
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 3)
      (i32.const 40)
      (i32.const 6304)
     )
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/substractToken (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (i32.load
     (local.get $1)
    )
   )
   (i32.const 5536)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (i32.load
      (local.get $1)
     )
    )
    (i64.const 0)
   )
   (i32.const 6464)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $2
     (call $~lib/proton-tsc/balance/balance.utils/findIndexOfExtendedAsset
      (local.get $0)
      (local.get $1)
     )
    )
    (i32.const -1)
   )
   (i32.const 6544)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=4
      (local.tee $3
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
   (i32.const 5664)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $3
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.tee $4
       (i32.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 5728)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (local.get $3)
    )
    (i64.load
     (local.get $4)
    )
   )
   (i32.const 6656)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=4
      (local.tee $3
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
   (i32.const 5664)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $4
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.tee $1
       (i32.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 5728)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.sub
      (i64.load
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 6720)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 6784)
  )
  (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
   (local.get $0)
   (local.get $2)
   (call $~lib/as-chain/asset/ExtendedAsset#constructor
    (call $~lib/as-chain/asset/Asset#constructor
     (local.get $5)
     (call $~lib/as-chain/asset/Symbol.fromU64
      (i64.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (i32.load offset=4
     (local.get $3)
    )
   )
  )
  (if
   (i64.eqz
    (i64.load
     (i32.load
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $0)
       (local.get $2)
      )
     )
    )
   )
   (block
    (call $~lib/memory/memory.copy
     (i32.load offset=4
      (call $~lib/rt/__newArray
       (local.tee $2
        (select
         (local.tee $2
          (select
           (i32.const 1)
           (local.tee $2
            (i32.sub
             (local.tee $3
              (i32.load offset=12
               (local.get $0)
              )
             )
             (local.tee $1
              (if (result i32)
               (i32.lt_s
                (local.get $2)
                (i32.const 0)
               )
               (select
                (local.tee $1
                 (i32.add
                  (local.get $2)
                  (local.get $3)
                 )
                )
                (i32.const 0)
                (i32.gt_s
                 (local.get $1)
                 (i32.const 0)
                )
               )
               (select
                (local.get $2)
                (local.get $3)
                (i32.lt_s
                 (local.get $2)
                 (local.get $3)
                )
               )
              )
             )
            )
           )
           (i32.gt_s
            (local.get $2)
            (i32.const 1)
           )
          )
         )
         (i32.const 0)
         (i32.gt_s
          (local.get $2)
          (i32.const 0)
         )
        )
       )
       (i32.const 2)
       (i32.const 39)
       (i32.const 0)
      )
     )
     (local.tee $6
      (i32.add
       (local.tee $4
        (i32.load offset=4
         (local.get $0)
        )
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
     (i32.shl
      (local.get $2)
      (i32.const 2)
     )
    )
    (if
     (i32.ne
      (local.get $3)
      (local.tee $1
       (i32.add
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (call $~lib/memory/memory.copy
      (local.get $6)
      (i32.add
       (local.get $4)
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
      (i32.shl
       (i32.sub
        (local.get $3)
        (local.get $1)
       )
       (i32.const 2)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (i32.sub
      (local.get $3)
      (local.get $2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/substractNfts (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (local.get $1)
     )
    )
    (block
     (local.set $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.set $7
      (call $~lib/array/Array<u64>#__get
       (local.get $1)
       (local.get $5)
      )
     )
     (local.set $2
      (i32.const 0)
     )
     (block $__inlined_func$~lib/array/Array<u64>#indexOf
      (if
       (select
        (i32.le_s
         (local.tee $4
          (i32.load offset=12
           (local.get $3)
          )
         )
         (i32.const 0)
        )
        (i32.const 1)
        (local.get $4)
       )
       (block
        (local.set $2
         (i32.const -1)
        )
        (br $__inlined_func$~lib/array/Array<u64>#indexOf)
       )
      )
      (local.set $3
       (i32.load offset=4
        (local.get $3)
       )
      )
      (loop $while-continue|0
       (if
        (i32.lt_s
         (local.get $2)
         (local.get $4)
        )
        (block
         (br_if $__inlined_func$~lib/array/Array<u64>#indexOf
          (i64.eq
           (local.get $7)
           (i64.load
            (i32.add
             (local.get $3)
             (i32.shl
              (local.get $2)
              (i32.const 3)
             )
            )
           )
          )
         )
         (local.set $2
          (i32.add
           (local.get $2)
           (i32.const 1)
          )
         )
         (br $while-continue|0)
        )
       )
      )
      (local.set $2
       (i32.const -1)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 6960)
      (i32.const 1)
      (call $~lib/number/U64#toString
       (call $~lib/array/Array<u64>#__get
        (local.get $1)
        (local.get $5)
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 6960)
      (i32.const 3)
      (call $~lib/as-chain/name/Name#toString
       (i32.load
        (local.get $0)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.ne
       (local.get $2)
       (i32.const -1)
      )
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 6960)
      )
     )
     (call $~lib/memory/memory.copy
      (i32.load offset=4
       (call $~lib/rt/__newArray
        (local.tee $4
         (select
          (local.tee $4
           (select
            (i32.const 1)
            (local.tee $4
             (i32.sub
              (local.tee $3
               (i32.load offset=12
                (local.tee $6
                 (i32.load offset=8
                  (local.get $0)
                 )
                )
               )
              )
              (local.tee $2
               (if (result i32)
                (i32.lt_s
                 (local.get $2)
                 (i32.const 0)
                )
                (select
                 (local.tee $2
                  (i32.add
                   (local.get $2)
                   (local.get $3)
                  )
                 )
                 (i32.const 0)
                 (i32.gt_s
                  (local.get $2)
                  (i32.const 0)
                 )
                )
                (select
                 (local.get $2)
                 (local.get $3)
                 (i32.lt_s
                  (local.get $2)
                  (local.get $3)
                 )
                )
               )
              )
             )
            )
            (i32.gt_s
             (local.get $4)
             (i32.const 1)
            )
           )
          )
          (i32.const 0)
          (i32.gt_s
           (local.get $4)
           (i32.const 0)
          )
         )
        )
        (i32.const 3)
        (i32.const 40)
        (i32.const 0)
       )
      )
      (local.tee $9
       (i32.add
        (local.tee $8
         (i32.load offset=4
          (local.get $6)
         )
        )
        (i32.shl
         (local.get $2)
         (i32.const 3)
        )
       )
      )
      (i32.shl
       (local.get $4)
       (i32.const 3)
      )
     )
     (if
      (i32.ne
       (local.get $3)
       (local.tee $2
        (i32.add
         (local.get $2)
         (local.get $4)
        )
       )
      )
      (call $~lib/memory/memory.copy
       (local.get $9)
       (i32.add
        (local.get $8)
        (i32.shl
         (local.get $2)
         (i32.const 3)
        )
       )
       (i32.shl
        (i32.sub
         (local.get $3)
         (local.get $2)
        )
        (i32.const 3)
       )
      )
     )
     (call $~lib/rt/common/OBJECT#set:rtId
      (local.get $6)
      (i32.sub
       (local.get $3)
       (local.get $4)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local.set $4
   (i32.load offset=32
    (local.get $0)
   )
  )
  (local.set $5
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 6432)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (local.get $1)
   )
  )
  (local.set $1
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 6432)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $6
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
      (i32.load
       (local.get $4)
      )
      (local.get $5)
     )
    )
   )
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#get
      (i32.load
       (i32.load
        (local.get $4)
       )
      )
      (local.get $6)
     )
    )
   )
   (local.set $1
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (call $~lib/proton-tsc/balance/balance.utils/substractToken
      (i32.load offset=4
       (local.get $1)
      )
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $2)
       (local.get $4)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/proton-tsc/balance/balance.utils/substractNfts
   (local.get $1)
   (local.get $3)
  )
  (if
   (if (result i32)
    (i32.load offset=12
     (i32.load offset=8
      (local.get $1)
     )
    )
    (i32.const 0)
    (i32.eqz
     (i32.load offset=12
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
   )
   (block
    (local.set $2
     (i32.load offset=32
      (local.get $0)
     )
    )
    (local.set $5
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#getPrimaryValue
      (local.get $1)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#requireFind
      (i32.load
       (local.get $2)
      )
      (local.get $5)
      (i32.const 1648)
     )
    )
    (local.set $0
     (i32.const 0)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (local.get $5)
       )
      )
     )
     (i32.const 4288)
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#remove
     (i32.load
      (local.get $1)
     )
     (local.get $3)
    )
    (loop $for-loop|00
     (if
      (i32.lt_s
       (local.get $0)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (block
       (if
        (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
         (i32.load
          (local.tee $3
           (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
            (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
             (i32.load offset=4
              (local.get $1)
             )
             (local.get $0)
            )
            (local.get $5)
           )
          )
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (i32.load offset=4
           (local.get $1)
          )
          (local.get $0)
         )
         (i32.load
          (local.get $3)
         )
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $for-loop|00)
      )
     )
    )
    (if
     (i64.eq
      (local.get $5)
      (i64.sub
       (i64.load offset=8
        (local.get $2)
       )
       (i64.const 1)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $2)
      (i64.const -1)
     )
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#update
    (i32.load offset=32
     (local.get $0)
    )
    (local.get $1)
    (global.get $~lib/as-chain/mi/SAME_PAYER)
   )
  )
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 71)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $0)
     (i64.const 0)
    )
   )
   (local.set $2
    (call $~lib/as-chain/name/S2N
     (i32.const 7104)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $1)
    (local.get $2)
   )
  )
  (call $~lib/as-chain/action/PermissionLevel#constructor
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 74)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#send (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#pack (param $0 i32) (result i32)
  (local $1 i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (call $~lib/as-chain/varint/calcPackedVarUint32Length
         (i32.load offset=12
          (i32.load offset=8
           (local.get $0)
          )
         )
        )
        (i32.const 16)
       )
       (i32.shl
        (i32.load offset=12
         (i32.load offset=8
          (local.get $0)
         )
        )
        (i32.const 3)
       )
      )
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local.set $8
   (i32.load offset=12
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $7)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (local.set $9
      (i32.load offset=4
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $2)
        (local.get $7)
       )
      )
     )
     (local.set $11
      (i32.load
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $2)
        (local.get $7)
       )
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $5
       (call $~lib/rt/stub/__new
        (i32.const 4)
        (i32.const 70)
       )
      )
      (i32.const 0)
     )
     (local.set $10
      (call $~lib/as-chain/name/S2N
       (i32.const 7056)
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $6
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $6)
      (local.get $10)
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $6)
     )
     (global.set $~argumentsLength
      (i32.const 1)
     )
     (local.set $6
      (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
       (local.get $8)
      )
     )
     (local.set $12
      (i32.load
       (local.get $5)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $5
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 72)
       )
      )
      (local.get $12)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo
      (local.get $5)
      (local.get $9)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo2
      (local.get $5)
      (local.get $6)
     )
     (local.set $9
      (call $~lib/proton-tsc/token/token.inline/Transfer#constructor
       (local.get $8)
       (local.get $1)
       (local.get $11)
       (local.get $4)
      )
     )
     (drop
      (i32.load offset=4
       (local.tee $6
        (call $~lib/rt/__newArray
         (i32.const 1)
         (i32.const 2)
         (i32.const 73)
         (i32.const 0)
        )
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
      (local.get $6)
      (i32.const 0)
      (i32.load offset=8
       (local.get $5)
      )
     )
     (call $~lib/as-chain/action/Action#send
      (call $~lib/as-chain/action/Action#constructor
       (i32.load offset=4
        (local.get $5)
       )
       (i32.load
        (local.get $5)
       )
       (local.get $6)
       (call $~lib/proton-tsc/token/token.inline/Transfer#pack
        (local.get $9)
       )
      )
     )
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $2
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 75)
    )
   )
   (i32.const 0)
  )
  (local.set $10
   (call $~lib/as-chain/name/S2N
    (i32.const 7056)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $10)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $5)
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (local.get $3)
    )
    (i32.const 0)
   )
   (block
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (local.set $5
     (global.get $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT)
    )
    (local.set $7
     (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
      (local.get $2)
     )
    )
    (local.set $8
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 76)
      )
     )
     (local.get $8)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $5)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (local.get $7)
    )
    (local.set $2
     (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#constructor
      (local.get $2)
      (local.get $1)
      (local.get $3)
      (local.get $4)
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $1
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 73)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $1)
     (i32.const 0)
     (i32.load offset=8
      (local.get $0)
     )
    )
    (call $~lib/as-chain/action/Action#send
     (call $~lib/as-chain/action/Action#constructor
      (i32.load offset=4
       (local.get $0)
      )
      (i32.load
       (local.get $0)
      )
      (local.get $1)
      (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#pack
       (local.get $2)
      )
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdraw (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (i32.const 7008)
  )
 )
 (func $escrow.contract/escrow#get:escrowsTable (param $0 i32) (result i32)
  (i32.load offset=36
   (local.get $0)
  )
 )
 (func $escrow.contract/escrow#get:feeTable (param $0 i32) (result i32)
  (i32.load offset=40
   (local.get $0)
  )
 )
 (func $escrow.contract/escrow#get:escrowGlobalSingleton (param $0 i32) (result i32)
  (i32.load offset=44
   (local.get $0)
  )
 )
 (func $escrow.contract/escrow#get:feeReceiver (param $0 i32) (result i32)
  (i32.load offset=48
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 77)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $escrow.tables/Fee#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/Fee#unpack
    (local.tee $0
     (call $escrow.tables/Fee#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Fee>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $escrow.tables/Fee#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.const 32)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $6
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Fee>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (i64.load
       (local.get $6)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.tee $2
     (call $escrow.tables/Fee#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $6)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $escrow.contract/escrow#setfee (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (call $escrow.tables/Fee#constructor
    (local.get $1)
    (local.get $2)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.get $0)
   )
  )
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Fee>#get
    (local.tee $0
     (i32.load offset=40
      (local.get $0)
     )
    )
    (i64.load
     (local.get $2)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#find
        (i32.load
         (local.get $0)
        )
        (i64.load
         (local.get $2)
        )
       )
      )
     )
     (i32.const 1424)
    )
    (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#update
     (i32.load
      (local.get $0)
     )
     (local.get $3)
     (local.get $2)
     (local.get $6)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Fee>#find
        (i32.load
         (local.get $0)
        )
        (local.tee $1
         (i64.load
          (local.get $2)
         )
        )
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $7
     (i32.load
      (local.tee $5
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $4
     (i64.load
      (local.get $2)
     )
    )
    (local.set $8
     (i64.load
      (local.get $6)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $escrow.tables/Fee#pack
        (local.get $2)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Fee>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $4)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $4)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $3)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $5)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $5)
         )
         (local.get $3)
        )
        (i64.load
         (local.get $2)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
        (i64.load
         (local.get $6)
        )
       )
       (local.set $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $4
       (i64.load
        (local.get $2)
       )
      )
      (i64.load offset=8
       (local.get $5)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $5)
      (select
       (i64.const -2)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $4)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $1)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $1)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $1)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 78)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $escrow.tables/EscrowGlobal#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#getValue (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $0)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (drop
    (call $escrow.tables/EscrowGlobal#unpack
     (local.tee $1
      (call $escrow.tables/EscrowGlobal#constructor)
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $escrow.tables/EscrowGlobal#getPrimaryValue (result i64)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6201872790059076880)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $escrow.tables/EscrowGlobal#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 8)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $escrow.tables/EscrowGlobal#getPrimaryValue)
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#getValue
        (local.get $1)
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (call $escrow.tables/EscrowGlobal#getPrimaryValue)
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i32.load offset=12
    (local.tee $2
     (call $escrow.tables/EscrowGlobal#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $6)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $7)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 79)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $escrow.tables/Escrow#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=8
    (local.get $0)
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (i32.const 16)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=12
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 8)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (local.get $2)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (i32.add
   (i32.add
    (i32.add
     (call $~lib/as-chain/varint/calcPackedVarUint32Length
      (i32.load offset=12
       (i32.load offset=20
        (local.get $0)
       )
      )
     )
     (local.get $2)
    )
    (i32.shl
     (i32.load offset=12
      (i32.load offset=20
       (local.get $0)
      )
     )
     (i32.const 3)
    )
   )
   (i32.const 4)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (i32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $escrow.tables/Escrow#getSize
      (local.get $0)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i32.eqz
    (local.get $1)
   )
   (block
    (local.set $2
     (i64.load
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $0
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i32.const 0)
     (local.get $2)
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (i32.const 0)
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 4240)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $escrow.tables/Escrow#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $escrow.tables/Escrow#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $escrow.inline/LogEscrow#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (call $escrow.tables/Escrow#getSize
       (i32.load
        (local.get $0)
       )
      )
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load offset=4
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $escrow.inline/sendLogEscrow (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 81)
    )
   )
   (i32.const 0)
  )
  (local.set $5
   (call $~lib/as-chain/name/S2N
    (i32.const 7712)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $4)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $4
   (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
    (local.get $0)
   )
  )
  (local.set $6
   (i32.load
    (local.get $3)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 82)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 80)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 73)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $3)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $3)
    )
    (i32.load
     (local.get $3)
    )
    (local.get $1)
    (call $escrow.inline/LogEscrow#pack
     (local.get $0)
    )
   )
  )
 )
 (func $escrow.contract/escrow#startpool (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (if
   (i32.eqz
    (local.tee $6
     (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Fee>#get
      (i32.load offset=40
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 7136)
    )
    (return)
   )
  )
  (local.set $7
   (i32.load offset=8
    (local.get $6)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $6
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 39)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $6)
   (i32.const 0)
   (local.get $7)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
   (local.get $0)
   (local.get $1)
   (local.get $6)
   (local.get $4)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
   (local.get $0)
   (local.get $1)
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.load offset=12
     (local.get $3)
    )
    (i32.const 1)
    (i32.load offset=12
     (local.get $4)
    )
   )
   (i32.const 7200)
  )
  (block $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<escrow.tables/EscrowGlobal>#get
   (if
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.tee $6
      (call $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#find
       (i32.load offset=8
        (local.tee $6
         (i32.load offset=44
          (local.get $0)
         )
        )
       )
       (i64.load
        (local.get $6)
       )
      )
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $7
        (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#getValue
         (local.get $6)
        )
       )
      )
      (unreachable)
     )
     (br $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<escrow.tables/EscrowGlobal>#get)
    )
   )
   (local.set $7
    (call $escrow.tables/EscrowGlobal#constructor)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
   (i64.add
    (local.tee $12
     (i64.load
      (local.get $7)
     )
    )
    (i64.const 1)
   )
  )
  (local.set $6
   (i32.load offset=12
    (local.get $0)
   )
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $9
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#find
      (i32.load offset=8
       (local.tee $8
        (i32.load offset=44
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $8)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#update
    (i32.load offset=8
     (local.get $8)
    )
    (local.get $9)
    (local.get $7)
    (local.get $6)
   )
   (block
    (local.set $9
     (i32.const 0)
    )
    (local.set $11
     (i32.load
      (local.tee $8
       (i32.load offset=8
        (local.get $8)
       )
      )
     )
    )
    (local.set $10
     (call $escrow.tables/EscrowGlobal#getPrimaryValue)
    )
    (local.set $13
     (i64.load
      (local.get $6)
     )
    )
    (local.set $14
     (i32.load offset=12
      (local.tee $7
       (call $escrow.tables/EscrowGlobal#pack
        (local.get $7)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor
      (local.get $11)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $11)
       )
       (i64.load offset=16
        (local.get $11)
       )
       (local.get $13)
       (local.get $10)
       (i32.load offset=4
        (local.get $7)
       )
       (local.get $14)
      )
      (local.get $10)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $9)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $8)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=4
          (local.get $8)
         )
         (local.get $9)
        )
        (call $escrow.tables/EscrowGlobal#getPrimaryValue)
        (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getSecondaryValue)
        (i64.load
         (local.get $6)
        )
       )
       (local.set $9
        (i32.add
         (local.get $9)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $10
       (call $escrow.tables/EscrowGlobal#getPrimaryValue)
      )
      (i64.load offset=8
       (local.get $8)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $8)
      (select
       (i64.const -2)
       (i64.add
        (local.get $10)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $10)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
  (local.set $2
   (call $escrow.tables/Escrow#constructor
    (local.get $12)
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#store
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $2)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.const -1267475983267528704)
  )
  (local.set $4
   (call $~lib/as-chain/asset/ExtendedAsset#constructor
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.const 1)
     (call $~lib/as-chain/asset/Symbol#constructor
      (i32.const 7328)
      (i32.const 6)
     )
    )
    (local.get $3)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 7648)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $12)
   )
  )
  (local.set $5
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 7648)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 39)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $3)
   (i32.const 0)
   (local.get $4)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
   (local.get $0)
   (local.get $1)
   (local.get $3)
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 3)
    (i32.const 40)
    (i32.const 7680)
   )
   (local.get $5)
  )
  (call $escrow.inline/sendLogEscrow
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $2)
   (i32.const 3040)
  )
 )
 (func $~lib/array/Array<~lib/as-chain/name/Name>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 45)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u32> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (local.get $1)
 )
 (func $escrow.tables/Escrow#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/name/Name>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.const 0)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=12
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=16
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/idxdb/IDXDB#set:dbIndex
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/Escrow#unpack
    (local.tee $0
     (call $escrow.tables/Escrow#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#get (result i32)
   (if
    (local.tee $0
     (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#get
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#get
     (local.get $0)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (call $escrow.tables/Escrow#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 3488)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 3552)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 3696)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $escrow.tables/Escrow#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $escrow.tables/Escrow#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $escrow.tables/Escrow#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (block $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#getByKey (result i32)
    (drop
     (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#getByKey
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
        (local.tee $4
         (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
          (local.tee $3
           (i32.load
            (local.get $0)
           )
          )
          (i64.load
           (local.get $1)
          )
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#get
     (i32.load
      (local.get $3)
     )
     (local.get $4)
    )
   )
   (block
    (local.set $3
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#requireFind
      (i32.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#update
     (i32.load
      (local.get $0)
     )
     (local.get $3)
     (local.get $1)
     (local.get $2)
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#store
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
  )
 )
 (func $escrow.contract/escrow#partakepool (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (local.set $3
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 7872)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
    (local.get $3)
    (local.get $2)
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7872)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $4
     (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Fee>#get
      (i32.load offset=40
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 7136)
    )
    (return)
   )
  )
  (local.set $5
   (i32.load offset=8
    (local.get $4)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $4
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 39)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $4)
   (i32.const 0)
   (local.get $5)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
   (local.get $0)
   (local.get $1)
   (local.get $4)
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 3)
    (i32.const 40)
    (i32.const 7904)
   )
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
   (local.get $0)
   (local.get $1)
   (i32.load offset=16
    (local.get $3)
   )
   (i32.load offset=20
    (local.get $3)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#push
   (i32.load offset=12
    (local.get $3)
   )
   (local.get $1)
  )
  (local.set $1
   (call $escrow.tables/Escrow#constructor
    (i64.load
     (local.get $3)
    )
    (i32.load offset=8
     (local.get $3)
    )
    (i32.load offset=12
     (local.get $3)
    )
    (i32.load offset=16
     (local.get $3)
    )
    (i32.load offset=20
     (local.get $3)
    )
    (i32.load offset=24
     (local.get $3)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#set
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (drop
   (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1648)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
   )
   (i32.const 4288)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#remove
   (i32.load
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $4
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=4
            (local.get $2)
           )
           (local.get $1)
          )
          (local.get $3)
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i32.load
        (local.get $4)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.eq
    (local.get $3)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $escrow.contract/escrow#cancelpool (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (if
   (i32.eqz
    (local.tee $3
     (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Fee>#get
      (i32.load offset=40
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 7136)
    )
    (return)
   )
  )
  (local.set $7
   (i32.load offset=8
    (local.get $3)
   )
  )
  (local.set $3
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 7936)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
    (local.get $3)
    (local.get $2)
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7936)
    )
   )
  )
  (if
   (i64.eq
    (i64.load
     (local.get $1)
    )
    (i64.load
     (i32.load offset=8
      (local.get $3)
     )
    )
   )
   (block
    (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove
     (i32.load offset=36
      (local.get $0)
     )
     (local.get $3)
    )
    (local.set $4
     (i32.load offset=8
      (local.get $3)
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $1
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 39)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $1)
     (i32.const 0)
     (local.get $7)
    )
    (local.set $5
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 3)
      (i32.const 40)
      (i32.const 7968)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 8096)
     (i32.const 1)
     (call $~lib/number/U64#toString
      (local.get $2)
     )
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
     (local.get $0)
     (local.get $4)
     (local.get $1)
     (local.get $5)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 8096)
     )
    )
    (local.set $1
     (i32.load offset=8
      (local.get $3)
     )
    )
    (local.set $4
     (i32.load offset=16
      (local.get $3)
     )
    )
    (local.set $5
     (i32.load offset=20
      (local.get $3)
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 8176)
     (i32.const 1)
     (call $~lib/number/U64#toString
      (local.get $2)
     )
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
     (local.get $0)
     (local.get $1)
     (local.get $4)
     (local.get $5)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 8176)
     )
    )
    (local.set $4
     (i32.const 0)
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $4)
       (i32.load offset=12
        (i32.load offset=12
         (local.get $3)
        )
       )
      )
      (block
       (local.set $5
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=12
          (local.get $3)
         )
         (local.get $4)
        )
       )
       (drop
        (i32.load offset=4
         (local.tee $1
          (call $~lib/rt/__newArray
           (i32.const 1)
           (i32.const 2)
           (i32.const 39)
           (i32.const 0)
          )
         )
        )
       )
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
        (local.get $1)
        (i32.const 0)
        (local.get $7)
       )
       (local.set $6
        (call $~lib/rt/__newArray
         (i32.const 0)
         (i32.const 3)
         (i32.const 40)
         (i32.const 8208)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 8240)
        (i32.const 1)
        (call $~lib/number/U64#toString
         (local.get $2)
        )
       )
       (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
        (local.get $0)
        (local.get $5)
        (local.get $1)
        (local.get $6)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 8240)
        )
       )
       (local.set $1
        (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
         (i32.load offset=12
          (local.get $3)
         )
         (local.get $4)
        )
       )
       (local.set $5
        (i32.load offset=16
         (local.get $3)
        )
       )
       (local.set $6
        (i32.load offset=20
         (local.get $3)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 8272)
        (i32.const 1)
        (call $~lib/number/U64#toString
         (local.get $2)
        )
       )
       (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
        (local.get $0)
        (local.get $1)
        (local.get $5)
        (local.get $6)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 8272)
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (call $escrow.inline/sendLogEscrow
     (i32.load offset=12
      (local.get $0)
     )
     (local.get $3)
     (i32.const 3104)
    )
   )
   (block
    (local.set $5
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 45)
      (i32.const 8304)
     )
    )
    (loop $for-loop|1
     (if
      (i32.lt_s
       (local.get $4)
       (i32.load offset=12
        (i32.load offset=12
         (local.get $3)
        )
       )
      )
      (block
       (if
        (i64.ne
         (i64.load
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
           (i32.load offset=12
            (local.get $3)
           )
           (local.get $4)
          )
         )
         (i64.load
          (local.get $1)
         )
        )
        (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#push
         (local.get $5)
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (i32.load offset=12
           (local.get $3)
          )
          (local.get $4)
         )
        )
        (if
         (i64.eq
          (i64.load
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (i32.load offset=12
             (local.get $3)
            )
            (local.get $4)
           )
          )
          (i64.load
           (local.get $1)
          )
         )
         (block
          (local.set $8
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (i32.load offset=12
             (local.get $3)
            )
            (local.get $4)
           )
          )
          (drop
           (i32.load offset=4
            (local.tee $6
             (call $~lib/rt/__newArray
              (i32.const 1)
              (i32.const 2)
              (i32.const 39)
              (i32.const 0)
             )
            )
           )
          )
          (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
           (local.get $6)
           (i32.const 0)
           (local.get $7)
          )
          (local.set $9
           (call $~lib/rt/__newArray
            (i32.const 0)
            (i32.const 3)
            (i32.const 40)
            (i32.const 8336)
           )
          )
          (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
           (i32.const 8368)
           (i32.const 1)
           (call $~lib/number/U64#toString
            (local.get $2)
           )
          )
          (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
           (local.get $0)
           (local.get $8)
           (local.get $6)
           (local.get $9)
           (call $~lib/staticarray/StaticArray<~lib/string/String>#join
            (i32.const 8368)
           )
          )
          (local.set $6
           (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
            (i32.load offset=12
             (local.get $3)
            )
            (local.get $4)
           )
          )
          (local.set $8
           (i32.load offset=16
            (local.get $3)
           )
          )
          (local.set $9
           (i32.load offset=20
            (local.get $3)
           )
          )
          (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
           (i32.const 8400)
           (i32.const 1)
           (call $~lib/number/U64#toString
            (local.get $2)
           )
          )
          (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
           (local.get $0)
           (local.get $6)
           (local.get $8)
           (local.get $9)
           (call $~lib/staticarray/StaticArray<~lib/string/String>#join
            (i32.const 8400)
           )
          )
         )
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $for-loop|1)
      )
     )
    )
    (local.set $1
     (call $escrow.tables/Escrow#constructor
      (i64.load
       (local.get $3)
      )
      (i32.load offset=8
       (local.get $3)
      )
      (local.get $5)
      (i32.load offset=16
       (local.get $3)
      )
      (i32.load offset=20
       (local.get $3)
      )
      (i32.load offset=24
       (local.get $3)
      )
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#set
     (i32.load offset=36
      (local.get $0)
     )
     (local.get $1)
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (call $escrow.inline/sendLogEscrow
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.const 3104)
  )
 )
 (func $escrow.contract/escrow#fillpool (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i64)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (i32.gt_s
    (i32.load offset=12
     (local.get $3)
    )
    (i32.const 0)
   )
   (i32.const 8432)
  )
  (local.set $5
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8528)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (local.set $1
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $5
       (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
        (local.get $5)
        (local.get $2)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 8528)
        )
       )
      )
     )
    )
    (i64.load
     (local.get $1)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8656)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=8
     (local.get $5)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 8656)
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Fee>#get
      (i32.load offset=40
       (local.get $0)
      )
      (i64.const 0)
     )
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.const 0)
     (i32.const 7136)
    )
    (return)
   )
  )
  (local.set $6
   (i32.load offset=8
    (local.get $1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.add
      (i32.load offset=12
       (i32.load offset=12
        (local.get $5)
       )
      )
      (i32.const 1)
     )
    )
    (block
     (local.set $7
      (i32.load offset=48
       (local.get $0)
      )
     )
     (drop
      (i32.load offset=4
       (local.tee $1
        (call $~lib/rt/__newArray
         (i32.const 1)
         (i32.const 2)
         (i32.const 39)
         (i32.const 0)
        )
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
      (local.get $1)
      (i32.const 0)
      (local.get $6)
     )
     (local.set $8
      (call $~lib/rt/__newArray
       (i32.const 0)
       (i32.const 3)
       (i32.const 40)
       (i32.const 8688)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 8848)
      (i32.const 1)
      (call $~lib/number/U64#toString
       (local.get $2)
      )
     )
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
      (local.get $0)
      (local.get $7)
      (local.get $1)
      (local.get $8)
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 8848)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $5)
  )
  (local.set $4
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (local.set $6
      (i32.load offset=12
       (local.get $5)
      )
     )
     (local.set $8
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $3)
       (local.get $4)
      )
     )
     (local.set $1
      (i32.const 0)
     )
     (block $__inlined_func$~lib/array/Array<~lib/as-chain/name/Name>#indexOf
      (if
       (select
        (i32.le_s
         (local.tee $7
          (i32.load offset=12
           (local.get $6)
          )
         )
         (i32.const 0)
        )
        (i32.const 1)
        (local.get $7)
       )
       (block
        (local.set $1
         (i32.const -1)
        )
        (br $__inlined_func$~lib/array/Array<~lib/as-chain/name/Name>#indexOf)
       )
      )
      (local.set $6
       (i32.load offset=4
        (local.get $6)
       )
      )
      (loop $while-continue|0
       (if
        (i32.lt_s
         (local.get $1)
         (local.get $7)
        )
        (block
         (br_if $__inlined_func$~lib/array/Array<~lib/as-chain/name/Name>#indexOf
          (i64.eq
           (i64.load
            (i32.load
             (i32.add
              (local.get $6)
              (i32.shl
               (local.get $1)
               (i32.const 2)
              )
             )
            )
           )
           (i64.load
            (local.get $8)
           )
          )
         )
         (local.set $1
          (i32.add
           (local.get $1)
           (i32.const 1)
          )
         )
         (br $while-continue|0)
        )
       )
      )
      (local.set $1
       (i32.const -1)
      )
     )
     (local.set $1
      (if (result i32)
       (i32.ge_s
        (local.get $1)
        (i32.const 0)
       )
       (i32.const 1)
       (i64.eq
        (i64.load
         (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
          (local.get $3)
          (local.get $4)
         )
        )
        (i64.load
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 8992)
      (i32.const 1)
      (call $~lib/as-chain/name/Name#toString
       (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
        (local.get $3)
        (local.get $4)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (local.get $1)
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 8992)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (local.set $4
   (i32.load offset=4
    (local.tee $1
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
      (i32.load offset=16
       (local.get $5)
      )
      (i32.const 0)
     )
    )
   )
  )
  (local.set $4
   (i32.load offset=4
    (local.tee $1
     (call $~lib/as-chain/asset/ExtendedAsset#constructor
      (call $~lib/as-chain/asset/Asset#constructor
       (i64.mul
        (i64.load
         (i32.load
          (local.get $1)
         )
        )
        (i64.add
         (i64.extend_i32_s
          (i32.load offset=12
           (i32.load offset=12
            (local.get $5)
           )
          )
         )
         (i64.const 1)
        )
       )
       (i32.load offset=8
        (i32.load
         (local.get $1)
        )
       )
      )
      (local.get $4)
     )
    )
   )
  )
  (local.set $9
   (i64.load
    (i32.load
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.ne
    (local.tee $10
     (i64.extend_i32_s
      (i32.load offset=12
       (local.get $3)
      )
     )
    )
    (i64.const 0)
   )
   (i32.const 9024)
  )
  (local.set $6
   (call $~lib/as-chain/asset/ExtendedAsset#constructor
    (call $~lib/as-chain/asset/Asset#constructor
     (i64.div_u
      (local.get $9)
      (local.get $10)
     )
     (i32.load offset=8
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $4)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|2
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (local.set $7
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (drop
      (i32.load offset=4
       (local.tee $4
        (call $~lib/rt/__newArray
         (i32.const 1)
         (i32.const 2)
         (i32.const 39)
         (i32.const 0)
        )
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
      (local.get $4)
      (i32.const 0)
      (local.get $6)
     )
     (local.set $8
      (i32.load offset=20
       (local.get $5)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 9136)
      (i32.const 1)
      (call $~lib/number/U64#toString
       (local.get $2)
      )
     )
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
      (local.get $0)
      (local.get $7)
      (local.get $4)
      (local.get $8)
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 9136)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|2)
    )
   )
  )
  (call $escrow.inline/sendLogEscrow
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $5)
   (i32.const 3072)
  )
 )
 (func $escrow.contract/escrow#logescrow (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.get $0)
   )
  )
 )
 (func $escrow.contract/startpoolAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/name/Name>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.const 0)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=8
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.contract/partakepoolAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.contract/fillpoolAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/name/Name>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $2
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.const 0)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=16
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.contract/logescrowAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $escrow.tables/Escrow#constructor@varargs
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.contract/withdrawAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.contract/settokenAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<bool>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.contract/transferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $escrow.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $2)
  )
  (local.set $7
   (call $escrow.contract/escrow#constructor
    (i32.const 0)
    (local.get $3)
    (local.get $4)
    (local.get $5)
   )
  )
  (local.set $8
   (call $~lib/as-chain/action/readActionData)
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417269101093715968)
     )
     (block
      (drop
       (call $escrow.tables/Fee#unpack
        (block (result i32)
         (call $~lib/as-chain/name/Name#set:N
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 83)
           )
          )
          (i64.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
       )
      )
      (local.set $9
       (i64.load
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $escrow.contract/escrow#setfee
       (local.get $7)
       (local.get $9)
       (local.get $3)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157529619936313344)
     )
     (block
      (drop
       (call $escrow.contract/startpoolAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 20)
            (i32.const 84)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:rtId
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:rtSize
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $6
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $4
       (local.get $3)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (local.set $5
       (local.get $3)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=8
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $10
         (i32.load offset=12
          (local.get $6)
         )
        )
       )
       (unreachable)
      )
      (call $escrow.contract/escrow#startpool
       (local.get $7)
       (local.get $4)
       (local.get $5)
       (local.get $3)
       (local.get $10)
       (i32.load offset=16
        (local.get $6)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -6219590651556322816)
     )
     (block
      (drop
       (call $escrow.contract/partakepoolAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 85)
           )
          )
          (i32.const 0)
         )
         (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
          (local.get $3)
          (i64.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $escrow.contract/escrow#partakepool
       (local.get $7)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4730614997324152832)
     )
     (block
      (drop
       (call $escrow.contract/partakepoolAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 16)
            (i32.const 86)
           )
          )
          (i32.const 0)
         )
         (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
          (local.get $3)
          (i64.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $escrow.contract/escrow#cancelpool
       (local.get $7)
       (local.get $3)
       (i64.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 6603150970333429760)
     )
     (block
      (drop
       (call $escrow.contract/fillpoolAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 20)
            (i32.const 87)
           )
          )
          (i32.const 0)
         )
         (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
          (local.get $3)
          (i64.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:rtSize
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $9
       (i64.load offset=8
        (local.get $4)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load offset=16
          (local.get $4)
         )
        )
       )
       (unreachable)
      )
      (call $escrow.contract/escrow#fillpool
       (local.get $7)
       (local.get $3)
       (local.get $9)
       (local.get $4)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -8279678648783470592)
     )
     (block
      (drop
       (call $escrow.contract/logescrowAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 8)
            (i32.const 88)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 2448)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $escrow.contract/escrow#logescrow
       (local.get $7)
       (local.get $3)
       (i32.load offset=4
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636196532224)
     )
     (block
      (drop
       (call $escrow.contract/withdrawAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 12)
            (i32.const 89)
           )
          )
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/rt/common/OBJECT#set:gcInfo2
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $5
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $4
       (local.get $3)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=8
          (local.get $5)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdraw
       (local.get $7)
       (local.get $4)
       (local.get $3)
       (local.get $5)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417247484950216704)
     )
     (block
      (drop
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack
        (block (result i32)
         (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 6)
            (i32.const 90)
           )
          )
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
          (local.get $3)
          (i32.const 0)
         )
         (local.get $3)
        )
        (local.get $8)
       )
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#setglobals
       (local.get $7)
       (i32.load8_u
        (local.get $3)
       )
       (i32.load8_u offset=1
        (local.get $3)
       )
       (i32.load8_u offset=2
        (local.get $3)
       )
       (i32.load8_u offset=3
        (local.get $3)
       )
       (i32.load8_u offset=4
        (local.get $3)
       )
       (i32.load8_u offset=5
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417017204164263936)
     )
     (block
      (drop
       (call $escrow.contract/settokenAction#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 6)
            (i32.const 91)
           )
          )
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#settoken
       (local.get $7)
       (local.get $3)
       (i32.load8_u offset=4
        (local.get $4)
       )
       (i32.load8_u offset=5
        (local.get $4)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417357892714233856)
     )
     (block
      (drop
       (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#unpack
        (block (result i32)
         (call $~lib/rt/common/BLOCK#set:mmInfo
          (local.tee $3
           (call $~lib/rt/stub/__new
            (i32.const 6)
            (i32.const 92)
           )
          )
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
          (local.get $3)
          (i32.const 0)
         )
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
          (local.get $3)
          (i32.const 0)
         )
         (local.tee $4
          (local.get $3)
         )
        )
        (local.get $8)
       )
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#setactor
       (local.get $7)
       (local.get $3)
       (i32.load8_u offset=4
        (local.get $4)
       )
       (i32.load8_u offset=5
        (local.get $4)
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (drop
      (call $escrow.contract/transferAction#unpack
       (call $~lib/rt/stub/__new
        (i32.const 0)
        (i32.const 93)
       )
       (local.get $8)
      )
     )
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#transfer
      (local.get $7)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkActorIsAllowed@varargs (param $0 i32) (param $1 i32) (param $2 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $2
    (i32.const 2448)
   )
  )
  (if
   (call $~lib/string/String.__not
    (local.get $2)
   )
   (local.set $2
    (block (result i32)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4816)
      (i32.const 1)
      (call $~lib/as-chain/name/Name#toString
       (local.get $1)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4816)
      (i32.const 3)
      (call $~lib/as-chain/name/Name#toString
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 4816)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isActorAllowed
    (local.get $0)
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokenIsAllowed@varargs (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (local.set $2
    (i32.const 2448)
   )
  )
  (if
   (call $~lib/string/String.__not
    (local.get $2)
   )
   (local.set $2
    (block (result i32)
     (local.set $2
      (i32.load
       (local.get $1)
      )
     )
     (local.set $5
      (call $~lib/array/Array<u8>#constructor
       (i32.const 7)
      )
     )
     (local.set $4
      (i64.load
       (local.get $2)
      )
     )
     (loop $for-loop|0
      (if
       (i32.eqz
        (i64.eqz
         (local.tee $4
          (i64.shr_u
           (local.get $4)
           (i64.const 8)
          )
         )
        )
       )
       (block
        (call $~lib/array/Array<u8>#__set
         (local.get $5)
         (local.get $3)
         (i32.wrap_i64
          (i64.and
           (local.get $4)
           (i64.const 255)
          )
         )
        )
        (local.set $3
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (br $for-loop|0)
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4912)
      (i32.const 1)
      (call $~lib/string/String.__concat
       (call $~lib/string/String.__concat
        (call $~lib/string/String.__concat
         (call $~lib/string/String.__concat
          (call $~lib/number/U64#toString
           (i64.and
            (i64.load
             (local.get $2)
            )
            (i64.const 255)
           )
          )
          (i32.const 5088)
         )
         (call $~lib/as-chain/asset/Symbol#getSymbolString
          (local.get $2)
         )
        )
        (i32.const 5120)
       )
       (call $~lib/as-chain/name/Name#toString
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4912)
      (i32.const 3)
      (call $~lib/as-chain/name/Name#toString
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 4912)
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/proton-tsc/allow/allow.contract/AllowContract#isTokenAllowed
    (local.get $0)
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkNftsAreEnabled@varargs (param $0 i32) (param $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $1
    (i32.const 2448)
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkNftsAreEnabled
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokensAreEnabled@varargs (param $0 i32) (param $1 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $1
    (i32.const 2448)
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkTokensAreEnabled
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (global.get $~argumentsLength)
       (i32.const 3)
      )
     )
    )
    (unreachable)
   )
   (local.set $4
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
   (local.get $4)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $1)
   )
  )
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $1)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 73)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $6
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=8
       (local.get $0)
      )
      (local.get $4)
      (local.get $2)
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $3
      (call $~lib/array/Array<u8>#constructor
       (local.tee $2
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $1)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (block $folding-inner5
   (block $folding-inner4
    (block $folding-inner3
     (block $folding-inner2
      (block $folding-inner1
       (block $folding-inner0
        (br_if $folding-inner0
         (i32.eq
          (local.tee $2
           (i32.load
            (i32.sub
             (local.get $0)
             (i32.const 8)
            )
           )
          )
          (i32.const 83)
         )
        )
        (block $default
         (block $case28
          (block $case27
           (block $case24
            (block $case23
             (block $case22
              (block $case21
               (block $case20
                (block $case19
                 (block $case18
                  (block $case17
                   (block $case16
                    (block $case15
                     (block $case13
                      (block $case11
                       (block $case9
                        (block $case7
                         (block $case6
                          (block $case4
                           (if
                            (i32.ne
                             (local.get $2)
                             (i32.const 84)
                            )
                            (block
                             (br_if $folding-inner1
                              (i32.or
                               (i32.eq
                                (local.get $2)
                                (i32.const 85)
                               )
                               (i32.eq
                                (local.get $2)
                                (i32.const 86)
                               )
                              )
                             )
                             (br_if $case4
                              (i32.eq
                               (local.get $2)
                               (i32.const 87)
                              )
                             )
                             (br_if $folding-inner2
                              (i32.eq
                               (local.get $2)
                               (i32.const 88)
                              )
                             )
                             (br_if $case6
                              (i32.eq
                               (local.get $2)
                               (i32.const 93)
                              )
                             )
                             (br_if $case7
                              (i32.eq
                               (local.get $2)
                               (i32.const 89)
                              )
                             )
                             (br_if $folding-inner3
                              (i32.eq
                               (local.get $2)
                               (i32.const 90)
                              )
                             )
                             (br_if $case9
                              (i32.eq
                               (local.get $2)
                               (i32.const 91)
                              )
                             )
                             (br_if $folding-inner4
                              (i32.eq
                               (local.get $2)
                               (i32.const 92)
                              )
                             )
                             (br_if $case11
                              (i32.eq
                               (local.get $2)
                               (i32.const 53)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (local.get $2)
                               (i32.const 49)
                              )
                             )
                             (br_if $case13
                              (i32.eq
                               (local.get $2)
                               (i32.const 44)
                              )
                             )
                             (br_if $folding-inner2
                              (i32.eq
                               (local.get $2)
                               (i32.const 80)
                              )
                             )
                             (br_if $case15
                              (i32.eq
                               (local.get $2)
                               (i32.const 71)
                              )
                             )
                             (br_if $case16
                              (i32.eq
                               (local.get $2)
                               (i32.const 74)
                              )
                             )
                             (br_if $case17
                              (i32.eq
                               (local.get $2)
                               (i32.const 5)
                              )
                             )
                             (br_if $case18
                              (i32.eq
                               (local.get $2)
                               (i32.const 8)
                              )
                             )
                             (br_if $case19
                              (i32.eq
                               (local.get $2)
                               (i32.const 7)
                              )
                             )
                             (br_if $case20
                              (i32.eq
                               (local.get $2)
                               (i32.const 38)
                              )
                             )
                             (br_if $case21
                              (i32.eq
                               (local.get $2)
                               (i32.const 37)
                              )
                             )
                             (br_if $case22
                              (i32.eq
                               (local.get $2)
                               (i32.const 36)
                              )
                             )
                             (br_if $case23
                              (i32.eq
                               (local.get $2)
                               (i32.const 69)
                              )
                             )
                             (br_if $case24
                              (i32.eq
                               (local.get $2)
                               (i32.const 9)
                              )
                             )
                             (br_if $folding-inner3
                              (i32.eq
                               (local.get $2)
                               (i32.const 32)
                              )
                             )
                             (br_if $folding-inner4
                              (i32.eq
                               (local.get $2)
                               (i32.const 20)
                              )
                             )
                             (br_if $case27
                              (i32.eq
                               (local.get $2)
                               (i32.const 28)
                              )
                             )
                             (br_if $case28
                              (i32.eq
                               (local.get $2)
                               (i32.const 67)
                              )
                             )
                             (br $default)
                            )
                           )
                           (return
                            (call $escrow.contract/startpoolAction#unpack
                             (local.get $0)
                             (local.get $1)
                            )
                           )
                          )
                          (return
                           (call $escrow.contract/fillpoolAction#unpack
                            (local.get $0)
                            (local.get $1)
                           )
                          )
                         )
                         (return
                          (call $escrow.contract/transferAction#unpack
                           (local.get $0)
                           (local.get $1)
                          )
                         )
                        )
                        (return
                         (call $escrow.contract/withdrawAction#unpack
                          (local.get $0)
                          (local.get $1)
                         )
                        )
                       )
                       (return
                        (call $escrow.contract/settokenAction#unpack
                         (local.get $0)
                         (local.get $1)
                        )
                       )
                      )
                      (return
                       (call $escrow.tables/EscrowGlobal#unpack
                        (local.get $0)
                        (local.get $1)
                       )
                      )
                     )
                     (return
                      (call $escrow.tables/Escrow#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (call $~lib/rt/common/BLOCK#set:mmInfo
                     (local.get $0)
                     (call $~lib/as-chain/serializer/Decoder#unpackName
                      (local.tee $1
                       (call $~lib/as-chain/serializer/Decoder#constructor
                        (local.get $1)
                       )
                      )
                     )
                    )
                    (call $~lib/rt/common/OBJECT#set:gcInfo
                     (local.get $0)
                     (call $~lib/as-chain/serializer/Decoder#unpackName
                      (local.get $1)
                     )
                    )
                    (return
                     (i32.load offset=4
                      (local.get $1)
                     )
                    )
                   )
                   (return
                    (call $~lib/as-chain/action/Action#unpack
                     (local.get $0)
                     (local.get $1)
                    )
                   )
                  )
                  (call $~lib/as-chain/name/Name#set:N
                   (local.get $0)
                   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                    (call $~lib/as-chain/serializer/Decoder#constructor
                     (local.get $1)
                    )
                   )
                  )
                  (return
                   (i32.const 8)
                  )
                 )
                 (call $~lib/as-chain/name/Name#set:N
                  (local.get $0)
                  (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                   (local.tee $1
                    (call $~lib/as-chain/serializer/Decoder#constructor
                     (local.get $1)
                    )
                   )
                  )
                 )
                 (call $~lib/as-chain/system/check
                  (call $~lib/as-chain/asset/Symbol#isValid
                   (local.get $0)
                  )
                  (i32.const 9168)
                 )
                 (return
                  (i32.load offset=4
                   (local.get $1)
                  )
                 )
                )
                (call $~lib/as-chain/serializer/Decoder#unpack
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Decoder#constructor
                   (local.get $1)
                  )
                 )
                 (i32.load
                  (local.get $0)
                 )
                )
                (call $~lib/as-chain/system/check
                 (call $~lib/as-chain/asset/Symbol#isValid
                  (i32.load
                   (local.get $0)
                  )
                 )
                 (i32.const 2576)
                )
                (br $folding-inner5)
               )
               (local.set $3
                (i64.load
                 (i32.add
                  (i32.load offset=4
                   (i32.load
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Decoder#constructor
                      (local.get $1)
                     )
                    )
                   )
                  )
                  (i32.load offset=4
                   (local.get $1)
                  )
                 )
                )
               )
               (call $~lib/as-chain/serializer/Decoder#incPos
                (local.get $1)
                (i32.const 8)
               )
               (call $~lib/as-chain/name/Name#set:N
                (local.get $0)
                (local.get $3)
               )
               (call $~lib/as-chain/serializer/Decoder#unpack
                (local.get $1)
                (i32.load offset=8
                 (local.get $0)
                )
               )
               (call $~lib/as-chain/system/check
                (call $~lib/as-chain/asset/Asset#isValid
                 (local.get $0)
                )
                (i32.const 9216)
               )
               (return
                (i32.load offset=4
                 (local.get $1)
                )
               )
              )
              (call $~lib/as-chain/serializer/Decoder#unpack
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
               (i32.load
                (local.get $0)
               )
              )
              (call $~lib/as-chain/system/check
               (call $~lib/as-chain/asset/Asset#isValid
                (i32.load
                 (local.get $0)
                )
               )
               (i32.const 9216)
              )
              (br $folding-inner5)
             )
             (return
              (call $~lib/proton-tsc/balance/balance.tables/Balance#unpack
               (local.get $0)
               (local.get $1)
              )
             )
            )
            (return
             (call $~lib/proton-tsc/token/token.inline/Transfer#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (call $~lib/as-chain/name/Name#set:N
            (local.get $0)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
             (local.tee $1
              (call $~lib/as-chain/serializer/Decoder#constructor
               (local.get $1)
              )
             )
            )
           )
           (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
            (local.get $0)
            (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
             (local.get $1)
            )
           )
           (return
            (i32.const 16)
           )
          )
          (return
           (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#unpack
            (local.get $0)
            (local.get $1)
           )
          )
         )
         (return
          (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (unreachable)
       )
       (return
        (call $escrow.tables/Fee#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $escrow.contract/partakepoolAction#unpack
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (return
      (call $escrow.contract/logescrowAction#unpack
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (return
     (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (return
    (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#unpack
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryReturnValue#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 61)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $2
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 58)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $2)
        (i32.const 57)
       )
      )
      (br $default)
     )
    )
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (local.set $0
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_find_primary
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $2)
       (local.get $1)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $3
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i32.const 0)
     (i64.load
      (local.get $2)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryReturnValue#constructor
      (local.get $0)
      (call $~lib/as-chain/idxdb/SecondaryValue#constructor
       (i32.const 0)
       (local.get $3)
      )
     )
    )
   )
   (local.set $2
    (call $~lib/rt/stub/__alloc
     (i32.const 16)
    )
   )
   (local.set $3
    (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
     (call $~lib/as-chain/env/db_idx128_find_primary
      (i64.load
       (local.get $0)
      )
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (local.get $2)
      (local.get $1)
     )
     (local.get $1)
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (call $~lib/array/Array<u64>#__set
    (local.tee $0
     (call $~lib/array/Array<u64>#constructor
      (i32.const 2)
     )
    )
    (i32.const 0)
    (i64.load
     (local.get $2)
    )
   )
   (call $~lib/array/Array<u64>#__set
    (local.get $0)
    (i32.const 1)
    (i64.load offset=8
     (local.get $2)
    )
   )
   (return
    (call $~lib/as-chain/idxdb/SecondaryReturnValue#constructor
     (local.get $3)
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (i32.const 1)
      (local.get $0)
     )
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $0
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 58)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $0)
        (i32.const 57)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 9264)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (call $~lib/as-chain/env/db_idx64_update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $0)
    )
    (return)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load
      (local.get $2)
     )
     (i32.const 1)
    )
    (i32.const 9328)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
     (i32.const 2)
    )
    (i32.const 9328)
   )
   (call $~lib/as-chain/env/db_idx128_update
    (i32.load
     (local.get $1)
    )
    (local.get $3)
    (i32.load offset=4
     (i32.load offset=4
      (local.get $2)
     )
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $4
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 58)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $4)
        (i32.const 57)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 9392)
    )
    (local.set $5
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $5)
    )
    (drop
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_store
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (return)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load
      (local.get $2)
     )
     (i32.const 1)
    )
    (i32.const 9456)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
     (i32.const 2)
    )
    (i32.const 9328)
   )
   (drop
    (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
     (call $~lib/as-chain/env/db_idx128_store
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (local.get $3)
      (local.get $1)
      (i32.load offset=4
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
     (local.get $1)
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $escrow.contract/startpoolAction#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (i32.const 8)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 8)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=8
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (i32.add
   (i32.add
    (local.get $1)
    (i32.shl
     (i32.load offset=12
      (local.get $0)
     )
     (i32.const 3)
    )
   )
   (i32.const 4)
  )
 )
 (func $escrow.contract/partakepoolAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 16)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $folding-inner2
   (block $folding-inner1
    (block $folding-inner0
     (block $default
      (block $case28
       (block $case27
        (block $case26
         (block $case25
          (block $case24
           (block $case23
            (block $case22
             (block $case21
              (block $case20
               (block $case19
                (block $case18
                 (block $case17
                  (block $case16
                   (block $case15
                    (block $case14
                     (block $case13
                      (block $case12
                       (block $case11
                        (block $case10
                         (block $case9
                          (block $case8
                           (block $case7
                            (block $case6
                             (block $case5
                              (block $case4
                               (block $case3
                                (block $case2
                                 (block $case1
                                  (if
                                   (i32.ne
                                    (local.tee $1
                                     (i32.load
                                      (i32.sub
                                       (local.get $0)
                                       (i32.const 8)
                                      )
                                     )
                                    )
                                    (i32.const 83)
                                   )
                                   (block
                                    (br_if $case1
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 84)
                                     )
                                    )
                                    (br_if $case2
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 85)
                                     )
                                    )
                                    (br_if $case3
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 86)
                                     )
                                    )
                                    (br_if $case4
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 87)
                                     )
                                    )
                                    (br_if $case5
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 88)
                                     )
                                    )
                                    (br_if $case6
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 93)
                                     )
                                    )
                                    (br_if $case7
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 89)
                                     )
                                    )
                                    (br_if $case8
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 90)
                                     )
                                    )
                                    (br_if $case9
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 91)
                                     )
                                    )
                                    (br_if $case10
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 92)
                                     )
                                    )
                                    (br_if $case11
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 53)
                                     )
                                    )
                                    (br_if $case12
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 49)
                                     )
                                    )
                                    (br_if $case13
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 44)
                                     )
                                    )
                                    (br_if $case14
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 80)
                                     )
                                    )
                                    (br_if $case15
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 71)
                                     )
                                    )
                                    (br_if $case16
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 74)
                                     )
                                    )
                                    (br_if $case17
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 5)
                                     )
                                    )
                                    (br_if $case18
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 8)
                                     )
                                    )
                                    (br_if $case19
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 7)
                                     )
                                    )
                                    (br_if $case20
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 38)
                                     )
                                    )
                                    (br_if $case21
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 37)
                                     )
                                    )
                                    (br_if $case22
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 36)
                                     )
                                    )
                                    (br_if $case23
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 69)
                                     )
                                    )
                                    (br_if $case24
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 9)
                                     )
                                    )
                                    (br_if $case25
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 32)
                                     )
                                    )
                                    (br_if $case26
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 20)
                                     )
                                    )
                                    (br_if $case27
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 28)
                                     )
                                    )
                                    (br_if $case28
                                     (i32.eq
                                      (local.get $1)
                                      (i32.const 67)
                                     )
                                    )
                                    (br $default)
                                   )
                                  )
                                  (if
                                   (i32.eqz
                                    (i32.load offset=8
                                     (local.get $0)
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                                   (local.tee $1
                                    (call $~lib/as-chain/serializer/Encoder#constructor
                                     (i32.const 32)
                                    )
                                   )
                                   (i64.load
                                    (local.get $0)
                                   )
                                  )
                                  (if
                                   (i32.eqz
                                    (local.tee $0
                                     (i32.load offset=8
                                      (local.get $0)
                                     )
                                    )
                                   )
                                   (unreachable)
                                  )
                                  (call $~lib/as-chain/serializer/Encoder#pack
                                   (local.get $1)
                                   (local.get $0)
                                  )
                                  (br $folding-inner2)
                                 )
                                 (local.set $1
                                  (call $~lib/as-chain/serializer/Encoder#constructor
                                   (call $escrow.contract/startpoolAction#getSize
                                    (local.get $0)
                                   )
                                  )
                                 )
                                 (if
                                  (i32.eqz
                                   (local.tee $2
                                    (i32.load
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (unreachable)
                                 )
                                 (call $~lib/as-chain/serializer/Encoder#pack
                                  (local.get $1)
                                  (local.get $2)
                                 )
                                 (if
                                  (i32.eqz
                                   (local.tee $2
                                    (i32.load offset=4
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (unreachable)
                                 )
                                 (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                                  (local.get $1)
                                  (local.get $2)
                                 )
                                 (if
                                  (i32.eqz
                                   (local.tee $2
                                    (i32.load offset=8
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (unreachable)
                                 )
                                 (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                                  (local.get $1)
                                  (local.get $2)
                                 )
                                 (if
                                  (i32.eqz
                                   (local.tee $2
                                    (i32.load offset=12
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (unreachable)
                                 )
                                 (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                                  (local.get $1)
                                  (local.get $2)
                                 )
                                 (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                                  (local.get $1)
                                  (i32.load offset=16
                                   (local.get $0)
                                  )
                                 )
                                 (br $folding-inner2)
                                )
                                (return
                                 (call $escrow.contract/partakepoolAction#pack
                                  (local.get $0)
                                 )
                                )
                               )
                               (return
                                (call $escrow.contract/partakepoolAction#pack
                                 (local.get $0)
                                )
                               )
                              )
                              (if
                               (i32.eqz
                                (i32.load
                                 (local.get $0)
                                )
                               )
                               (unreachable)
                              )
                              (if
                               (i32.eqz
                                (local.tee $1
                                 (i32.load offset=16
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (local.set $2
                               (i32.add
                                (call $~lib/as-chain/varint/calcPackedVarUint32Length
                                 (i32.load offset=12
                                  (local.get $1)
                                 )
                                )
                                (i32.const 16)
                               )
                              )
                              (local.set $1
                               (i32.const 0)
                              )
                              (loop $for-loop|0
                               (if
                                (i32.eqz
                                 (local.tee $3
                                  (i32.load offset=16
                                   (local.get $0)
                                  )
                                 )
                                )
                                (unreachable)
                               )
                               (if
                                (i32.lt_s
                                 (local.get $1)
                                 (i32.load offset=12
                                  (local.get $3)
                                 )
                                )
                                (block
                                 (if
                                  (i32.eqz
                                   (local.tee $3
                                    (i32.load offset=16
                                     (local.get $0)
                                    )
                                   )
                                  )
                                  (unreachable)
                                 )
                                 (drop
                                  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                                   (local.get $3)
                                   (local.get $1)
                                  )
                                 )
                                 (local.set $2
                                  (i32.add
                                   (local.get $2)
                                   (i32.const 8)
                                  )
                                 )
                                 (local.set $1
                                  (i32.add
                                   (local.get $1)
                                   (i32.const 1)
                                  )
                                 )
                                 (br $for-loop|0)
                                )
                               )
                              )
                              (local.set $1
                               (call $~lib/as-chain/serializer/Encoder#constructor
                                (local.get $2)
                               )
                              )
                              (if
                               (i32.eqz
                                (local.tee $2
                                 (i32.load
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (call $~lib/as-chain/serializer/Encoder#pack
                               (local.get $1)
                               (local.get $2)
                              )
                              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                               (local.get $1)
                               (i64.load offset=8
                                (local.get $0)
                               )
                              )
                              (if
                               (i32.eqz
                                (local.tee $0
                                 (i32.load offset=16
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                               (local.get $1)
                               (local.get $0)
                              )
                              (br $folding-inner2)
                             )
                             (if
                              (i32.eqz
                               (local.tee $1
                                (i32.load
                                 (local.get $0)
                                )
                               )
                              )
                              (unreachable)
                             )
                             (local.set $1
                              (call $~lib/as-chain/serializer/Encoder#constructor
                               (i32.add
                                (call $escrow.tables/Escrow#getSize
                                 (local.get $1)
                                )
                                (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                 (i32.load offset=4
                                  (local.get $0)
                                 )
                                )
                               )
                              )
                             )
                             (if
                              (i32.eqz
                               (local.tee $2
                                (i32.load
                                 (local.get $0)
                                )
                               )
                              )
                              (unreachable)
                             )
                             (call $~lib/as-chain/serializer/Encoder#pack
                              (local.get $1)
                              (local.get $2)
                             )
                             (call $~lib/as-chain/serializer/Encoder#packString
                              (local.get $1)
                              (i32.load offset=4
                               (local.get $0)
                              )
                             )
                             (br $folding-inner2)
                            )
                            (return
                             (call $~lib/as-chain/serializer/Encoder#getBytes
                              (call $~lib/as-chain/serializer/Encoder#constructor
                               (i32.const 0)
                              )
                             )
                            )
                           )
                           (if
                            (i32.eqz
                             (i32.load
                              (local.get $0)
                             )
                            )
                            (unreachable)
                           )
                           (if
                            (i32.eqz
                             (local.tee $1
                              (i32.load offset=4
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (local.set $2
                            (i32.add
                             (call $~lib/as-chain/varint/calcPackedVarUint32Length
                              (i32.load offset=12
                               (local.get $1)
                              )
                             )
                             (i32.const 8)
                            )
                           )
                           (local.set $1
                            (i32.const 0)
                           )
                           (loop $for-loop|00
                            (if
                             (i32.eqz
                              (local.tee $3
                               (i32.load offset=4
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (if
                             (i32.lt_s
                              (local.get $1)
                              (i32.load offset=12
                               (local.get $3)
                              )
                             )
                             (block
                              (if
                               (i32.eqz
                                (local.tee $3
                                 (i32.load offset=4
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (drop
                               (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__get
                                (local.get $3)
                                (local.get $1)
                               )
                              )
                              (local.set $2
                               (i32.add
                                (local.get $2)
                                (i32.const 24)
                               )
                              )
                              (local.set $1
                               (i32.add
                                (local.get $1)
                                (i32.const 1)
                               )
                              )
                              (br $for-loop|00)
                             )
                            )
                           )
                           (if
                            (i32.eqz
                             (local.tee $1
                              (i32.load offset=8
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (local.set $1
                            (i32.add
                             (call $~lib/as-chain/varint/calcPackedVarUint32Length
                              (i32.load offset=12
                               (local.get $1)
                              )
                             )
                             (local.get $2)
                            )
                           )
                           (if
                            (i32.eqz
                             (local.tee $2
                              (i32.load offset=8
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (local.set $1
                            (call $~lib/as-chain/serializer/Encoder#constructor
                             (i32.add
                              (local.get $1)
                              (i32.shl
                               (i32.load offset=12
                                (local.get $2)
                               )
                               (i32.const 3)
                              )
                             )
                            )
                           )
                           (if
                            (i32.eqz
                             (local.tee $2
                              (i32.load
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (call $~lib/as-chain/serializer/Encoder#pack
                            (local.get $1)
                            (local.get $2)
                           )
                           (if
                            (i32.eqz
                             (local.tee $2
                              (i32.load offset=4
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                            (local.get $1)
                            (local.get $2)
                           )
                           (if
                            (i32.eqz
                             (local.tee $0
                              (i32.load offset=8
                               (local.get $0)
                              )
                             )
                            )
                            (unreachable)
                           )
                           (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                            (local.get $1)
                            (local.get $0)
                           )
                           (br $folding-inner2)
                          )
                          (return
                           (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
                            (local.get $0)
                           )
                          )
                         )
                         (if
                          (i32.eqz
                           (i32.load
                            (local.get $0)
                           )
                          )
                          (unreachable)
                         )
                         (local.set $1
                          (call $~lib/as-chain/serializer/Encoder#constructor
                           (i32.const 18)
                          )
                         )
                         (br $folding-inner0)
                        )
                        (if
                         (i32.eqz
                          (i32.load
                           (local.get $0)
                          )
                         )
                         (unreachable)
                        )
                        (local.set $1
                         (call $~lib/as-chain/serializer/Encoder#constructor
                          (i32.const 10)
                         )
                        )
                        (br $folding-inner0)
                       )
                       (return
                        (call $escrow.tables/EscrowGlobal#pack
                         (local.get $0)
                        )
                       )
                      )
                      (return
                       (call $escrow.tables/Fee#pack
                        (local.get $0)
                       )
                      )
                     )
                     (return
                      (call $escrow.tables/Escrow#pack
                       (local.get $0)
                      )
                     )
                    )
                    (return
                     (call $escrow.inline/LogEscrow#pack
                      (local.get $0)
                     )
                    )
                   )
                   (call $~lib/as-chain/serializer/Encoder#packName
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Encoder#constructor
                      (i32.const 16)
                     )
                    )
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (call $~lib/as-chain/serializer/Encoder#packName
                    (local.get $1)
                    (i32.load offset=4
                     (local.get $0)
                    )
                   )
                   (br $folding-inner2)
                  )
                  (return
                   (call $~lib/as-chain/action/Action#pack
                    (local.get $0)
                   )
                  )
                 )
                 (i64.store
                  (i32.load offset=4
                   (local.tee $1
                    (call $~lib/array/Array<u8>#constructor
                     (i32.const 8)
                    )
                   )
                  )
                  (i64.load
                   (local.get $0)
                  )
                 )
                 (return
                  (local.get $1)
                 )
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Encoder#constructor
                   (i32.const 8)
                  )
                 )
                 (i64.load
                  (local.get $0)
                 )
                )
                (br $folding-inner2)
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.tee $1
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (i32.const 16)
                 )
                )
                (i32.load
                 (local.get $0)
                )
               )
               (br $folding-inner1)
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (i32.const 16)
                )
               )
               (i64.load
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#pack
               (local.get $1)
               (i32.load offset=8
                (local.get $0)
               )
              )
              (br $folding-inner2)
             )
             (call $~lib/as-chain/serializer/Encoder#pack
              (local.tee $1
               (call $~lib/as-chain/serializer/Encoder#constructor
                (i32.const 24)
               )
              )
              (i32.load
               (local.get $0)
              )
             )
             (br $folding-inner1)
            )
            (return
             (call $~lib/proton-tsc/balance/balance.tables/Balance#pack
              (local.get $0)
             )
            )
           )
           (return
            (call $~lib/proton-tsc/token/token.inline/Transfer#pack
             (local.get $0)
            )
           )
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
           (local.tee $1
            (call $~lib/as-chain/serializer/Encoder#constructor
             (i32.const 16)
            )
           )
           (i64.load
            (local.get $0)
           )
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
           (local.get $1)
           (i64.load offset=8
            (local.get $0)
           )
          )
          (br $folding-inner2)
         )
         (return
          (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
           (local.get $0)
          )
         )
        )
        (return
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack
          (local.get $0)
         )
        )
       )
       (return
        (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack
         (local.get $0)
        )
       )
      )
      (return
       (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#pack
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (if
     (i32.eqz
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/serializer/Encoder#pack
     (local.get $1)
     (local.get $2)
    )
    (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
     (local.get $1)
     (i32.load8_u offset=4
      (local.get $0)
     )
    )
    (call $~lib/as-chain/serializer/Encoder#packNumber<bool>
     (local.get $1)
     (i32.load8_u offset=5
      (local.get $0)
     )
    )
    (br $folding-inner2)
   )
   (call $~lib/as-chain/serializer/Encoder#pack
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $0
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 58)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $0)
        (i32.const 57)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/env/db_idx64_remove
     (i32.load
      (local.get $1)
     )
    )
    (return)
   )
   (call $~lib/as-chain/env/db_idx128_remove
    (i32.load
     (local.get $1)
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~setArgumentsLength (param $0 i32)
  (global.set $~argumentsLength
   (local.get $0)
  )
 )
 (func $~start
  (call $start:escrow.contract)
 )
)
