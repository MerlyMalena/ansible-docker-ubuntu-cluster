FROM ubuntu:22.04

# Evitar prompts interactivos durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instalar SSH server, sudo y Python3 (requerido por Ansible)
RUN apt-get update && apt-get install -y \
    openssh-server \
    sudo \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Crear directorio para la celda de SSH
RUN mkdir /var/run/sshd

# Crear usuario ansible con password ansible y darle acceso sudo sin contraseña
RUN useradd -m -s /bin/bash ansible && \
    echo 'ansible:ansible' | chpasswd && \
    usermod -aG sudo ansible && \
    echo 'ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Exponer puerto SSH
EXPOSE 22

# Iniciar el servicio SSH al arrancar el contenedor
CMD ["/usr/sbin/sshd", "-D"]