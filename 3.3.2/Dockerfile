FROM rocker/verse:3.3.2 
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install \
  librsvg2-dev \
  libudunits2-dev \
  libsndfile1-dev \
  libfftw3-dev \
  && . /etc/environment \
  && install2.r --error -r $MRAN FKF MDPtoolbox sde FastGP seewave nimble remotes \
  && Rscript -e "options(repos='$MRAN'); remotes::install_github(c('cloudyr/aws.signature', 'cloudyr/aws.s3', 'ropensci/EML', 'rstudio/rticles', 'cboettig/appl', 'yihui/printr', 'MangoTheCat/goodpractice'), upgrade_dependencies = FALSE)"

