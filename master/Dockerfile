FROM ros:kinetic-ros-core

RUN apt-get -y update

RUN apt-get -y install sudo

ENV uid 1000 
ENV gid 1000 

RUN export uid=${uid} gid=${gid} && \
    mkdir -p /home/ros && \
    echo "ros:x:${uid}:${gid}:ros,,,:/home/ros:/bin/bash" >> /etc/passwd && \
    echo "ros:x:${uid}:" >> /etc/group && \
    echo "ros ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ros && \
    chmod 0440 /etc/sudoers.d/ros && \
    chown ${uid}:${gid} -R /home/ros

COPY ./docker-entrypoint.sh /

USER ros
ENV HOME /home/ros

RUN echo "source /docker-entrypoint.sh" | tee >> ~/.bashrc

ENTRYPOINT ["/docker-entrypoint.sh"]
