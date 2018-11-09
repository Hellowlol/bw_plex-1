FROM centos

RUN yum install -y centos-release-scl epel-release
RUN rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
RUN rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN rpm -Uvh https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y \
    python2-pip \
    python27 \
    git \
    libXrender \
    pandoc \
    gcc \
    python2-devel \
    swig \
    pulseaudio \
    pulseaudio-libs-devel \
    alsa-lib-devel \
    ffmpeg \
    ffmpeg-devel
RUN yum --enablerepo=ius-archive install -y tkinter
 
RUN pip2 install --upgrade pip && \
    pip2 install --upgrade setuptools && \
    pip2 install pypandoc && \
    pip2 install -e git+https://github.com/Hellowlol/bw_plex.git#egg=bw_plex[all]
	
CMD bw_plex -u ${username} -p ${password} -s ${server} -t ${token} watch
