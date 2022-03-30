FROM tufin/oasdiff
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]