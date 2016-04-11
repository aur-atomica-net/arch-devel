FROM atomica/arch-base:latest

COPY arch-devel.sh /arch-devel.sh
COPY makepkg.sh /makepkg.sh

RUN ["/bin/bash", "/arch-devel.sh"]
