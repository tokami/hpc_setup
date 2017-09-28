file <- Sys.getenv("DATA")
outfile <- sub("data","results",file)
cat("file:")
print(file)
cat("outfile:")
print(outfile)

## Run analysis
load(file)
m <- mean(obs)
save(m, file=outfile)
