FROM rocker/verse:3.3.2 
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install \
  librsvg2-dev \
  libudunits2-dev \
  libsndfile1-dev \
  libfftw3-dev \
  && Rscript -e "install.packages(c('FKF', 'MDPtoolbox', 'sde', 'FastGP', 'seewave', 'nimble'))" \
  && Rscript -e "devtools::install_github(c('cloudyr/aws.signature', 'cloudyr/aws.s3', 'ropensci/EML', 'rstudio/rticles', 'cboettig/appl', 'yihui/printr'))" \
  && Rscript -e 'source("https://install-github.me/MangoTheCat/goodpractice")' 

