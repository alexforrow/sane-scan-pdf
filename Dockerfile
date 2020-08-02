FROM archlinux:latest

RUN pacman -Syu --noconfirm --needed base base-devel asp sane sane-frontends python netpbm hplip bc
RUN pacman -S --noconfirm rclone

COPY scan /opt
COPY scan_perpage /opt
