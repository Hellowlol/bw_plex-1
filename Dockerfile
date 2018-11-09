FROM centos

RUN yum install -y centos-release-scl epel-release
RUN rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
RUN rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN yum install -y \
    python-pip \
    git \
	libXrender \
    pandoc \
    gcc \
    python-devel \
    swig \
    pulseaudio \
    pulseaudio-libs-devel \
    alsa-lib-devel \
	ffmpeg \
	ffmpeg-devel
 
RUN pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install pypandoc && \
    pip install -e git+https://github.com/Hellowlol/bw_plex.git#egg=bw_plex[all]
	
CMD bw_plex -u ${username} -p ${password} -s ${server} -t ${token} watch
