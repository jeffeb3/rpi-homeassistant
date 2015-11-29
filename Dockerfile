
# Pull base image
FROM sena/rpi-python3

# Install libyaml
RUN apt-get update && apt-get install -y \
    libyaml \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Install home assistant
RUN pip3 install homeassistant

# Define working directory
WORKDIR /data

# Define default command
CMD ["hass", "--open-ui", "--config", "/data/.homeassistant"]

