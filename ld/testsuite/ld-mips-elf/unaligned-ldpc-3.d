#name: MIPS LDPC from unaligned symbol 3
#source: unaligned-ldpc-3.s
#source: unaligned-syms.s
#as: -EB -32 -mips64r6
#ld: -EB -Ttext 0x1c000000 -Tdata 0x1c080000 -e 0x1c000000
#error: \A[^\n]*: In function `foo':\n
#error:   \(\.text\+0x[0-9a-f]+\): PC-relative load from unaligned address\n
#error:   [^\n]*: final link failed: Bad value\Z
