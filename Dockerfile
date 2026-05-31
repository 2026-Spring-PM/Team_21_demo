FROM chwoong/team_00_project:0.1.0

USER root
RUN apt-get update && apt-get install -y \
    cmake g++ \
    libgl1-mesa-dev libx11-dev libxrandr-dev libxcursor-dev \
    libxi-dev libudev-dev libfreetype-dev libflac-dev libvorbis-dev \
    libfontconfig-dev libxinerama-dev libxkbcommon-dev libxcb1-dev \
    libmbedtls-dev libssh2-1-dev libharfbuzz-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace