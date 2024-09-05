FROM rocker/rstudio:latest
RUN apt-get update && \
    apt-get install -y man-db && \
    yes | unminimize && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 8787