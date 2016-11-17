FROM cboettig/labnotebook 
MAINTAINER Carl Boettiger cboettig@ropensci.org 



## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install \
  jags/testing \
  librsvg2-dev \
  libudunits2-dev \
  libsndfile1-dev \
  libfftw3-dev \
  sysstat \
  && install2.r --error \
     -r "http://www.bioconductor.org/packages/release/bioc" \
     -r "http://cran.rstudio.com" \
     -r "http://r-nimble.org" \
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
  && /usr/local/lib/R/site-library/littler/examples/installGithub.r \
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
  && r -e 'source("https://install-github.me/MangoTheCat/goodpractice")' \
  && rm -rf /tmp/downloaded_packages \
  && sed -i 's/false/true/' /etc/default/sysstat

