FROM developeranaz/rc-index:latest
RUN curl -O 'https://downloads.rclone.org/rclone-current-linux-arm.zip' && \
    unzip rclone-current-linux-arm.zip && \
    cp /rclone-*-linux-arm/rclone /usr/bin/ && \
    chown root:root /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone
COPY rcindex /usr/bin/rcindex
RUN chmod +x /usr/bin/rcindex
CMD rcindex
