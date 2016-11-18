FROM rocker/verse:3.3.2 
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install --no-install-recommends \
  liblapack-dev \
  librsvg2-dev \
  libudunits2-dev \
  libsndfile1-dev \
  libfftw3-dev \
## install jags from source, jessie version too old 
  && wget https://sourceforge.net/projects/mcmc-jags/files/JAGS/4.x/Source/JAGS-4.2.0.tar.gz -O jags.tar.gz \
  && tar -xf jags.tar.gz \
  && cd JAGS* && ./configure && make && make install \
  && cd / && rm -rf jags.tar.gz JAGS* \
  && . /etc/environment \
  && install2.r --error -r $MRAN FKF MDPtoolbox sde FastGP seewave nimble remotes rjags \
  && Rscript -e "options(repos='$MRAN'); remotes::install_github(c('cloudyr/aws.signature', 'cloudyr/aws.s3', 'ropensci/EML', 'rstudio/rticles', 'cboettig/appl', 'yihui/printr', 'MangoTheCat/goodpractice'), upgrade_dependencies = FALSE)"

