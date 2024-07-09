FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    python3-venv \
    git

RUN python3 -m venv /opt/venv

# Install PyYAML in the virtual environment
RUN /opt/venv/bin/pip install PyYAML

# Copy the application code
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

# Ensure the entrypoint script uses the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

ENTRYPOINT ["/entrypoint.sh"]
