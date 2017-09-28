Simple makefile example
=======================

## Normal execution

Normal execution can be performed independent of HPC e.g. on your
laptop:

```shell
make
```

or in parallel (using 2 cores)

```shell
make -j2
```

## Submit via the `submit` command

We can also run it in parallel using the `submit` command. However,
this approach is limited to one compute node. We must request the
number of cores that are used by the parallel job:

```shell
MC_CORES=2 submit "make -j2"
```

## Submit via the `qmake` command

To take full advantage of all HPC nodes we can submit using
`qmake`. This is only relevant when using *many* cores:

```shell
submit "qmake -j2"
```

**Note** `qmake` spawns job submissions hence we do not need to
  request the number of cores.
