FROM continuumio/miniconda3:latest
ENV USER=root
RUN apt-get -y install sudo 
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends software-properties-common wget unzip hmmer build-essential
RUN pip install tempdir h5py
RUN conda install -c bioconda orfm mfqe krona diamond pplacer
RUN pip install cython
RUN pip install graftm 
WORKDIR /data
ENTRYPOINT ["graftM"]
