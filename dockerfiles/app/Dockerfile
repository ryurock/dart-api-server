FROM google/dart

RUN apt-get update && apt-get install -y \
    procps \
    locales \
    vim \
    zip \
 && apt-get clean \
 && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen ja_JP.UTF-8 \
 && /usr/sbin/update-locale LANG=ja_JP.UTF-8 \
 && echo "alias ll='ls -la --color=auto'" >> /etc/profile.d/common.sh \
 && echo "alias grep='grep --color'" >> /etc/profile.d/common.sh \
 && echo "alias df='df -h'" >> /etc/profile.d/common.sh \
 && echo "alias ps='ps --sort=start_time'" >> /etc/profile.d/common.sh \
 && echo "export PATH='$PATH:/usr/lib/dart/bin:$HOME/.pub-cache/bin'" >> /etc/profile.d/common.sh

ENV LC_ALL ja_JP.UTF-8

WORKDIR /app