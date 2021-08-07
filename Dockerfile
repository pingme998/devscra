FROM developeranaz/rc-index:latest
COPY entrypoint1.sh /entrypoint1.sh
RUN chmod +x /entrypoint1.sh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
