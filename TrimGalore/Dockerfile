FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install gcc make libbz2-dev \
	zlib1g-dev \
	libncurses5-dev \
	libncursesw5-dev \
	liblzma-dev \
	bzip2 g++ \
	rsync \
	libsqlite3-dev \
	bzip2 \
	openjdk-11-jre -y
	
RUN apt-get install perl -y
RUN apt install cutadapt -y

WORKDIR /
 
	RUN apt-get update && apt-get -y upgrade && apt-get install -y wget zip default-jre && \
		apt-get clean && apt-get purge && \
    	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

	RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip && \
		unzip fastqc_v0.12.1.zip && \
		rm fastqc_v0.12.1.zip  


WORKDIR /FastQC/
	RUN chmod +x fastqc
	RUN ln -s /FastQC/fastqc /usr/local/bin/fastqc


WORKDIR /

    RUN wget https://github.com/FelixKrueger/TrimGalore/archive/0.6.10.tar.gz -O trim_galore.tar.gz && \
	tar xvzf trim_galore.tar.gz
	ENV PATH=$PATH:/FastQC/:/TrimGalore-0.6.1/
	RUN ln -s /TrimGalore-0.6.10/trim_galore /usr/local/bin/trim_galore
