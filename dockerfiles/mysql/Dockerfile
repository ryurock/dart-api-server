FROM mysql:5.7.25

# Set debian default locale to ja_JP.UTF-8
RUN apt-get update \
 && apt-get install -y \
    apt-utils \
    locales \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen \
 && locale-gen ja_JP.UTF-8 \
 && echo "alias ll='ls -la --color=auto'" >> /etc/profile.d/common.sh \
 && echo "alias grep='grep --color'" >> /etc/profile.d/common.sh \
 && echo "alias df='df -h'" >> /etc/profile.d/common.sh \
 && echo "alias ps='ps --sort=start_time'" >> /etc/profile.d/common.sh

ENV LC_ALL ja_JP.UTF-8

# Set MySQL config file
RUN mkdir -p /etc/my.cnf.d
COPY files/etc/* /etc/