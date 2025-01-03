FROM duplicati/duplicati:latest
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  unzip \
  man-db \
  && rm -rf /var/lib/apt/lists/* \
  && curl https://rclone.org/install.sh | bash \
  && rm -rf /var/lib/apt/lists/*
