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
make all
```
