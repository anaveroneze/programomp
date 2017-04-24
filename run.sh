#!/bin/bash
PROG=./myprime_openmp

for i in `seq 1 30`
do
	echo "Run $i"
	for t in 1 2 4 8
	do
		echo "Threads: $t"
		export OMP_NUM_THREADS=$t
		$PROG > output-$i-$t.txt
	done
done
