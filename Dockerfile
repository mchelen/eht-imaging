FROM continuumio/miniconda2

# install gcc and common build dependencies
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        pylint

WORKDIR /eht-imaging

COPY . .

# install dependencies
RUN pip install . \
    && conda install -c conda-forge pynfft
