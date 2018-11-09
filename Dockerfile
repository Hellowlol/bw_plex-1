
FROM centos

RUN yum install -y centos-release-scl epel-release
RUN yum install -y \
    python2-pip \
    git \
    pandoc \
    gcc \
    python-devel \
    swig \
    pulseaudio \
    pulseaudio-libs-devel \
    alsa-lib-devel
 
RUN pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install pypandoc && \
    pip install bw_plex[all] && \
    pip install -e git+https://github.com/Hellowlol/bw_plex.git#egg=bw_plex[all]
