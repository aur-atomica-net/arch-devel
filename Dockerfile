FROM atomica/arch-base:latest

COPY arch-devel.sh /arch-devel.sh

RUN ["/bin/bash", "/arch-devel.sh"]
