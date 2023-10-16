FROM ubuntu: latest

#update apt-get which allows loading into ubuntu
#install apt-get additional packages that help the action
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PyYAML


COPY feed.py /usr/bin/feed.py 

COPY entrypoint.sh /entrypoint.sh

#the file that runs once the machine is done procuring
ENTRYPOINT ["/entrypoint.sh"]