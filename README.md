## DTU HPC setup

Setup R and relevant packages for a DTU HPC account ( http://www.hpc.dtu.dk ) .

### Get Started

Login to your account

```shell
ssh $USER@login.gbar.dtu.dk
qrsh
```

Clone this repo to your home folder and run the main script

```shell
git clone https://github.com/DTUAqua/hpc_setup
cd hpc_setup
export PATH=${HOME}/bin:$PATH
MAKE="make -j8" make all
```

### Submitting a script

Say we have an R script

```shell
echo "m <- diag(1e3)+1; system.time(for(i in 1:10) m%*%m)" > script.R
```

We can run the script the usual way by

```shell
R --vanilla < script.R
```

In order to submit this script to the queue replace the above line by

```shell
submit "R --vanilla < script.R"
```
