FROM cboettig/labnotebook 
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install -t unstable r-cran-rjags librsvg2-dev libudunits2-dev \
  && install2.r --error \
     -r "http://www.bioconductor.org/packages/release/bioc" \
     -r "http://cran.rstudio.com" \
     -r "packages.ropensci.org" \
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
     drat.builder \
     ropkgs \
     EML \
     RNeXML \
     rfishbase \
  && installGithub.r \
    cboettig/earlywarning \
    cboettig/pdg_control \
    cboettig/multiple_uncertainty \
    cboettig/knitcitations \
    cboettig/regimeshifts  \
    cboettig/nonparametric-bayes \
    cboettig/pmc \
    nimble-dev/nimble/packages/nimble@stable \
    cboettig/gpmanagement \
    cloudyr/aws.signature \
    cloudyr/aws.s3 \
    cboettig/appl \
    hadley/multidplyr \
  && rm -rf /tmp/downloaded_packages

#RUN apt-get update && apt-get -y install libboost-dev \
#  && cd /opt/ && wget http://bigbird.comp.nus.edu.sg/pmwiki/farm/appl/uploads/Main/appl-0.96.tar.gz \
#  && tar -xvf appl-0.96.tar.gz \
#  && cd appl-0.96/src && make && rm /*.tar.gz 

# ENV PATH /opt/appl-0.96/src:$PATH

#RUN apt-get update && apt-get -y install libboost-all-dev wget build-essential \
#  && wget http://www0.cs.ucl.ac.uk/staff/D.Silver/web/Applications_files/pomcp-1.0.tar.gz \
#  && tar -xvf pomcp-1.0.tar.gz \
#  && cd pomcp-1.0 && ./configure --with-boost-libdir=/usr/lib/$(dpkg-architecture -qDEB_HOST_MULTIARCH) \
#  && make && make install \
#  && rm /*.tar.gz 


