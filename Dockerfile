FROM cboettig/labnotebook 
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    liblapack-dev \
    librsvg2-dev \
    libudunits2-dev \
    libsndfile1-dev \
    libfftw3-dev \
  && wget https://sourceforge.net/projects/mcmc-jags/files/JAGS/4.x/Source/JAGS-4.2.0.tar.gz -O jags.tar.gz \
  && tar -xf jags.tar.gz \
  && cd JAGS* \
  && ./configure && make && make install \
  && cd / ** rm -rf jags.tar.gz JAGS* \
&& install2.r --error \
     -r "http://www.bioconductor.org/packages/release/bioc" \
     -r "http://cran.rstudio.com" \
     -r "http://r-nimble.org" \
     rjags \
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
     nimble \
  && . /etc/environment && echo "options(repos='$MRAN')" > .Rprofile \
  && installGithub.r \
    hadley/xml2 \
    cloudyr/aws.signature \
    cloudyr/aws.s3 \
    richfitz/drat.builder \
    ropensci/EML \
    ropensci/ropkgs \
    rstudio/rticles \
    hadley/multidplyr \
    cboettig/appl \
    cboettig/earlywarning \
    cboettig/pdg_control \
    cboettig/multiple_uncertainty \
    cboettig/knitcitations \
    cboettig/regimeshifts  \
    cboettig/nonparametric-bayes \
    cboettig/gpmanagement \
    yihui/printr \
  && rm .Rprofile \
  && r -e 'source("https://install-github.me/MangoTheCat/goodpractice")' \
  && rm -rf /tmp/downloaded_packages

