Using BLAS
==========

Some models benefit from using a parallel BLAS. One such is the 4D
latent random field model `ar1_4D` from the TMB example
collection. Here we have scaled the model up to using `18^4 = 104976`
latent variables.

To get good performance with this model it is important to use **good
ordering algorithms**. This is done by placing
`runSymbolicAnalysis(obj)`
after `obj` is created. You should see the output
`Flopcount 868874519187.000000`
I.e. one Cholesky factorization requires almost 1 teraflop.

The number of requested threads are passed to `submit` through the
environment variable `OMP_NUM_THREADS`. For example, to use 8 threads
to fit the model use

```shell
OMP_NUM_THREADS=8 submit "R --vanilla < ar1_4D.R"
```

In general this approach has limited scalability. Here are some
timings using 1,2,4, and 8 threads respectively on an
`Intel(R) Xeon(R) CPU E5-2660 v3 @ 2.60GHz`:

| Threads  |  Time (sec) |
|----------|-------------|
| 1        | 3578.539    |
| 2        | 2044.150    |
| 4        | 1266.590    |
| 8        | 764.396     |

**NOTE**: We get a speedup of 4.7 using 8 threads. Using too many
  threads can sometimes result in a slowdown !
