SECONDS=3

all: results/x.RData results/y.RData

data/x.RData:
	mkdir -p data
	echo
	echo "Making the x dataset"
	echo "obs <- rnorm(10); save(obs, file='data/x.RData')" | R --slave
	sleep $(SECONDS)

data/y.RData:
	mkdir -p data
	echo
	echo "Making the y dataset"
	echo "obs <- rnorm(10); save(obs, file='data/y.RData')" | R --slave
	sleep $(SECONDS)

results/x.RData: data/x.RData
	mkdir -p results
	echo
	echo "Making the x results"
	DATA="data/x.RData" R --slave < script.R
	sleep $(SECONDS)

results/y.RData: data/y.RData
	mkdir -p results
	echo
	echo "Making the y results"
	DATA="data/y.RData" R --slave < script.R
	sleep $(SECONDS)

clean:
	rm -rf data results Job.*
