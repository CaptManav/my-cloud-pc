FROM debian:bookworm-slim

# Install lightweight XFCE desktop environment and VNC server
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    tightvncserver \
    novnc \
    websockify \
    curl \
    procps \
    && apt-get clean

# Setup environment variables for display
ENV DISPLAY=:1
ENV PORT=6901

# Create startup script to launch the desktop and proxy on any port
RUN echo '#!/bin/bash\n\
rm -rf /tmp/.X11-unix/X1\n\
vncserver :1 -geometry 1280x720 -depth 24 -SecurityTypes None &\n\
sleep 3\n\
websockify --web /usr/share/novnc 6901 localhost:5901\n\
' > /startup.sh && chmod +x /startup.sh

EXPOSE 6901

CMD ["/startup.sh"]
