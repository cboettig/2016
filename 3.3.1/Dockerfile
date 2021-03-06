FROM rocker/verse:3.3.1
MAINTAINER Carl Boettiger cboettig@ropensci.org 

## Install additional R package dependencies ###
RUN apt-get update && apt-get -y install --no-install-recommends \
  libopenblas-dev \
  liblapack-dev \
  librsvg2-dev \
  libudunits2-dev \
  libsndfile1-dev \
  libfftw3-dev \
  libv8-3.14-dev \
  libxslt-dev \
  jekyll \
  ruby-rouge \
## install jags from source, jessie version too old 
  && wget https://sourceforge.net/projects/mcmc-jags/files/JAGS/4.x/Source/JAGS-4.2.0.tar.gz -O jags.tar.gz \
  && tar -xf jags.tar.gz \
  && cd JAGS* && ./configure && make && make install \
  && cd / && rm -rf jags.tar.gz JAGS* \
## Install R packages from fixed repo
  && . /etc/environment \
  && install2.r --error -r $MRAN \
    drat \
    FKF \
    MDPtoolbox \
    sde \
    FastGP \
    seewave \
    nimble \
    remotes \
    rjags \
    XML \
    highlight \
    magick \
  && wget https://raw.githubusercontent.com/eddelbuettel/littler/master/inst/examples/installGithub.r -O /usr/local/bin/installGithub.r \
  && chmod +x /usr/local/bin/installGithub.r \
  && . /etc/environment && echo "options(repos='$MRAN')" > .Rprofile \
  ## --update FALSE means missing dependencies fail to install (with warning only)
  && installGithub.r --update FALSE \
    hadley/xml2 \
    cloudyr/aws.signature \
    cloudyr/aws.s3 \
    richfitz/drat.builder \
    ropensci/EML \
    rstudio/rticles \
    cboettig/appl \
    cboettig/mdplearning \
    yihui/printr \
    hadley/pkgdown \
  && rm .Rprofile \
  && chown -R root:staff /usr/local/lib/R/site-library \
# Save me from configuring this each time
  && git config --system user.name 'Carl Boettiger' \
  && git config --system user.email 'cboettig@gmail.com' \
  && git config --system credential.helper 'cache --timeout=3600' \
  && git config --system push.default simple


