FROM centos

ENV username="default" \
    password="default" \
    server="Server" \
    token="changetoken"
    
RUN yum install -y centos-release-scl \
    epel-release && \
    rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro && \
    rpm -Uvh https://centos7.iuscommunity.org/ius-release.rpm && \
    rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm && \
    yum --enablerepo=ius-archive install -y python2-pip \
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
    ffmpeg-devel \
    tkinter && \
    pip2 install --upgrade pip setuptools pypandoc && \
    pip2 install -e git+https://github.com/hellowlol/bw_plex.git#egg=bw_plex[all]
    
CMD ["sh", "-c", "bw_plex -u ${username} -p ${password} -s '${server}' -t ${token} watch"]
