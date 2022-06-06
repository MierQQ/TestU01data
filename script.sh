#!/bin/bash
for test in rabbit alphabit
do
mkdir "$test"_results
cd "$test"_results
	for nb in 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576 2097152 4194304 4294967296
	do
../$test 24 16598013 12820163 1 $nb > "$test"_"$nb"_1 &
../$test 31 65539 0 1 $nb > "$test"_"$nb"_2 &
../$test 32 1099087573 0 1 $nb > "$test"_"$nb"_3 &
../$test 32 69069 1 1 $nb > "$test"_"$nb"_4 &
../$test 32 69069 5 1 $nb > "$test"_"$nb"_5 &
../$test 32 1664525 1013904223 1 $nb > "$test"_"$nb"_6 &
../$test 32 22695477 1 1 $nb > "$test"_"$nb"_7 &
../$test 32 1103515245 12345 1 $nb > "$test"_"$nb"_8 &
../$test 32 134775813 1 1 $nb > "$test"_"$nb"_9 &
../$test 32 214013 2531011 1 $nb > "$test"_"$nb"_10 &
../$test 46 19073486328125 0 1 $nb > "$test"_"$nb"_11 &
../$test 48 25214903917 11 1 $nb > "$test"_"$nb"_12 &
../$test 48 19073486328125 0 1 $nb > "$test"_"$nb"_13 &
../$test 48 33952834046453 0 1 $nb > "$test"_"$nb"_14 &
../$test 48 44485709377909 0 1 $nb > "$test"_"$nb"_15
	done
cd ..
done

test=smallcrush
mkdir "$test"_results
cd "$test"_results
../$test 24 16598013 12820163 1 > "$test"_1 &
../$test 31 65539 0 1 > "$test"_2 &
../$test 32 1099087573 0 1 > "$test"_3 &
../$test 32 69069 1 1 > "$test"_4 &
../$test 32 69069 5 1 > "$test"_5 &
../$test 32 1664525 1013904223 1 > "$test"_6 &
../$test 32 22695477 1 1 > "$test"_7 &
../$test 32 1103515245 12345 1 > "$test"_8 &
../$test 32 134775813 1 1 > "$test"_9 &
../$test 32 214013 2531011 1 > "$test"_10 &
../$test 46 19073486328125 0 1 > "$test"_11 &
../$test 48 25214903917 11 1 > "$test"_12 &
../$test 48 19073486328125 0 1 > "$test"_13 &
../$test 48 33952834046453 0 1 > "$test"_14 &
../$test 48 44485709377909 0 1 > "$test"_15
cd ..
