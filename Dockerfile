FROM debian:bookworm-slim

# Notwendige Werkzeuge installieren
RUN apt-get update && apt-get install -y wget ca-certificates && rm -rf /var/lib/apt/lists/*

# Das von dir gefundene Paket direkt laden und installieren
RUN wget https://github.com/amadvance/snapraid/releases/download/v14.0/snapraid_14.0-1_amd64.deb \
    && dpkg -i snapraid_14.0-1_amd64.deb \
    && rm snapraid_14.0-1_amd64.deb

# Damit der Container an bleibt und wir Befehle ausführen können
CMD ["tail", "-f", "/dev/null"]
