FROM cboettig/labnotebook 
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install -t unstable \
  r-cran-rjags \
  librsvg2-dev \
  libudunits2-dev \
  libsndfile1-dev \
  libfftw3-dev \
  && install2.r --error \
     -r "http://www.bioconductor.org/packages/release/bioc" \
     -r "http://cran.rstudio.com" \
     FKF \
     dlm \
     KFAS \
     mcmc \
     MDPtoolbox \
     igraph \
     sde \
     FastGP \
     rbenchmark \
     PVAClone \
     triangle \
     bbmle \
     nlstools \
     drc \
     RNeXML \
     geiger \
     phytools \
     rfishbase \
     seewave \
     pmc \
  && installGithub.r \
    nimble-dev/nimble/packages/nimble@stable \
    cloudyr/aws.signature \
    cloudyr/aws.s3 \
    richfitz/drat.builder \
    ropensci/EML \
    ropensci/ropkgs \
    hadley/multidplyr \
    cboettig/appl \
    cboettig/earlywarning \
    cboettig/pdg_control \
    cboettig/multiple_uncertainty \
    cboettig/knitcitations \
    cboettig/regimeshifts  \
    cboettig/nonparametric-bayes \
    cboettig/gpmanagement \
  && rm -rf /tmp/downloaded_packages

