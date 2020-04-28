
FROM  ros:melodic
RUN mkdir -p /home/ayush/

COPY . /home/ayush/cki_ws


WORKDIR /home/ayush/cki_ws

COPY ./entry.sh /
RUN chmod +x /entry.sh
RUN chmod +x ./src/request/src/client.py
ENTRYPOINT ["/entry.sh"]


