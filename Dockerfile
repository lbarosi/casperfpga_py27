FROM gbrowdy/python-2.7.6

WORKDIR /usr/src/app

RUN apt-get update -y && \
     apt-get install -y nano python-pip unzip && \
     rm -fr /var/lib/apt/lists

RUN git clone --branch py27 https://github.com/casper-astro/casperfpga.git

#extracting
WORKDIR /usr/src/app/

COPY . .

WORKDIR /usr/src/app/sources

RUN tar xvfz future-0.16.0.tar.gz
RUN tar xvfz futures-3.0.5.tar.gz
RUN tar xvfz ply-3.9.tar.gz
RUN tar xvfz odict-1.5.2.tar.gz
RUN tar xvfz backports.ssl_match_hostname-3.5.0.1.tar.gz
RUN tar xvfz singledispatch-3.4.0.3.tar.gz
RUN tar xvfz certifi-2016.9.26.tar.gz
RUN tar xvfz backports_abc-0.4.tar.gz
RUN tar xvfz tornado-4.3.tar.gz
RUN unzip setuptools-18.5.zip
RUN tar xvfz decorator-4.0.10.tar.gz
RUN tar xvfz pathlib2-2.1.0.tar.gz
RUN tar xvfz pickleshare-0.7.4.tar.gz
RUN unzip simplegeneric-0.8.1.zip
RUN tar xvfz ipython_genutils-0.2.0.tar.gz
RUN tar xvfz traitlets-4.2.2.tar.gz
RUN tar xvfz wcwidth-0.1.7.tar.gz
RUN tar xvfz prompt_toolkit-1.0.4.tar.gz
RUN tar xvfz Pygments-2.1.3.tar.gz
RUN tar xvfz requests-2.12.4.tar.gz
RUN tar xvfz ipython-5.3.0.tar.gz
RUN tar xvfz pkginfo-1.4.1.tar.gz
RUN unzip numpy-1.16.0.zip
RUN tar xvfz katversion-0.7.tar.gz
RUN tar xvfz pexpect-4.2.1.tar.gz
RUN tar xvfz ptyprocess-0.5.1.tar.gz
RUN tar xvfz katcp-0.6.2.tar.gz
RUN tar xvfz backports.shutil_get_terminal_size-1.0.0.tar.gz

#installing sources
WORKDIR /usr/src/app/sources/future-0.16.0
RUN python setup.py install

WORKDIR /usr/src/app/sources/futures-3.0.5
RUN python setup.py install

WORKDIR /usr/src/app/sources/ply-3.9
RUN python setup.py install

WORKDIR /usr/src/app/sources/odict-1.5.2
RUN python setup.py install

WORKDIR /usr/src/app/sources/backports.ssl_match_hostname-3.5.0.1
RUN python setup.py install

WORKDIR /usr/src/app/sources/singledispatch-3.4.0.3
RUN python setup.py install

WORKDIR /usr/src/app/sources/certifi-2016.9.26
RUN python setup.py install

WORKDIR /usr/src/app/sources/backports_abc-0.4
RUN python setup.py install

WORKDIR /usr/src/app/sources/tornado-4.3
RUN python setup.py install

WORKDIR /usr/src/app/sources/setuptools-18.5
RUN python setup.py install

WORKDIR /usr/src/app/sources/decorator-4.0.10
RUN python setup.py install

WORKDIR /usr/src/app/sources/pathlib2-2.1.0
RUN python setup.py install

WORKDIR /usr/src/app/sources/pickleshare-0.7.4
RUN python setup.py install

WORKDIR /usr/src/app/sources/simplegeneric-0.8.1
RUN python setup.py install

WORKDIR /usr/src/app/sources/ipython_genutils-0.2.0
RUN python setup.py install

WORKDIR /usr/src/app/sources/traitlets-4.2.2
RUN python setup.py install

WORKDIR /usr/src/app/sources/wcwidth-0.1.7
RUN python setup.py install

WORKDIR /usr/src/app/sources/prompt_toolkit-1.0.4
RUN python setup.py install

WORKDIR /usr/src/app/sources/Pygments-2.1.3
RUN python setup.py install

WORKDIR /usr/src/app/sources/requests-2.12.4
RUN python setup.py install

WORKDIR /usr/src/app/sources/ipython-5.3.0
RUN python setup.py install

WORKDIR /usr/src/app/sources/pkginfo-1.4.1
RUN python setup.py install

WORKDIR /usr/src/app/sources/numpy-1.16.0
RUN python setup.py install

WORKDIR /usr/src/app/sources/katversion-0.7
RUN python setup.py install

WORKDIR /usr/src/app/sources/pexpect-4.2.1
RUN python setup.py install

WORKDIR /usr/src/app/sources/ptyprocess-0.5.1
RUN python setup.py install

WORKDIR /usr/src/app/sources/katcp-0.6.2
RUN python setup.py install

WORKDIR /usr/src/app/sources/backports.shutil_get_terminal_size-1.0.0
RUN python setup.py install

WORKDIR /usr/src/app/casperfpga
RUN python setup.py install

WORKDIR /usr/src/app/
CMD [ "python"]
