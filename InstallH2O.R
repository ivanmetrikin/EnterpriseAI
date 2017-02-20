# Install `h2o` package from CRAN
install.packages("h2o")

# Install `mlbench` package from CRAN for datasets
install.packages("mlbench")

# Install "h2oEnsemble" for model stacking
# Reference: https://github.com/h2oai/h2o-3/tree/master/h2o-r/ensemble
install.packages(
  "https://h2o-release.s3.amazonaws.com/h2o-ensemble/R/h2oEnsemble_0.1.8.tar.gz",
  repos = NULL)

# Install SparklyR
install.packages("sparklyr")
install.packages("rsparkling")