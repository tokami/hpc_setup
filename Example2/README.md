Parallel residual calculation
=============================

The TMB example `rickervalidation` demonstrates model validation based
on quantile residuals. We have modified the example by passing
`parallel=TRUE` to the `oneStepPredict` function.

The environment variable `MC_CORES` controls the number of cores used
by `mclapply`. Here we submit a job using 12 cores:

```shell
MC_CORES=12 submit "R --vanilla < rickervalidation.R"
```

| Cores    |  Time (sec) |
|----------|-------------|
| 1        | 174.744     |
| 12       | 11.569      |

**Note** This technique scales well. However, based on experiments
  with the HPC queue, it seems one can only reserve up to 19 cores
  this way.
