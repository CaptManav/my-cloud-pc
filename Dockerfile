FROM kasmweb/ubuntu-jammy-desktop:1.15.0

# Set environment defaults for Railway
ENV VNC_PW=Friend123
ENV KASM_PORT=6901

# Expose the streaming port externally
EXPOSE 6901
