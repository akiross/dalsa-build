FROM fedora:29

# Install packages first, so we cache this layer when building
RUN dnf -y update ; \
    dnf group install -y "C Development Tools and Libraries" ; \
    dnf install -y sudo findutils libglade2-devel libglade2-devel \
    gtk-doc intltool libcap-devel libXext-devel gcc-c++ ; dnf clean all

RUN groupadd -r gevlib && \
    useradd --no-log-init -r -g gevlib gevlib

RUN groupadd -r gev_nettweak && \
    useradd --no-log-init -r -g gev_nettweak gev_nettweak
