FROM gentoo/stage3-amd64-hardened-nomultilib as main
COPY --from=gentoo/portage /usr/portage /usr/portage
COPY etc/portage /etc/portage
RUN eselect news read --quiet all \
 && eselect news purge
RUN emerge -uDN @system
RUN emerge -uDN @world
