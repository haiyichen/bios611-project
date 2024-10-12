FROM rocker/rstudio:latest
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN R -e "install.packages(c('rmarkdown'))"

WORKDIR /usr/src/app