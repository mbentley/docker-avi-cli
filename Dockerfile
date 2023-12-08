FROM mbentley/alpine:latest
LABEL maintainer="Matt Bentley <mbentley@mbentley.net>"

# install prereqs
RUN apk add --no-cache py3-pip

# set build arg for avi cli URL
ARG AVI_CLI_URL="${AVI_CLI_URL:-}"

# install the avi CLI
RUN pip install --no-cache-dir --break-system-packages "${AVI_CLI_URL}"

ENTRYPOINT ["avi_shell"]
CMD ["-h"]
