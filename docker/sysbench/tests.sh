docker run -it davequick/image:benchmark bash
sysbench --test=cpu --cpu-max-prime=20000 run
sysbench --test=fileio --file-total-size=1G prepare
sysbench --test=fileio --file-total-size=1G --file-test-mode=rndrw  --max-time=300 --max-requests=0 run
sysbench --test=fileio --file-total-size=1G cleanup




Cloud at cost:

Prime numbers limit: 20000
Threads fairness:
    events (avg/stddev):           2032.0000/0.00
    execution time (avg/stddev):   9.9789/0.00

128 files, 8MiB each
1GiB total file size
Block size 16KiB
Number of IO requests: 0
Read/Write ratio for combined random IO test: 1.50
Periodic FSYNC enabled, calling fsync() each 100 requests.
Calling fsync() at the end of test, Enabled.
Using synchronous I/O mode
Doing random r/w test
Throughput:
    read, MiB/s:                  2.97
    written, MiB/s:               1.98





My laptop:
Threads fairness:
    events (avg/stddev):           4135.0000/0.00
    execution time (avg/stddev):   9.9212/0.00

Throughput:
    read, MiB/s:                  20.98
    written, MiB/s:               13.99
