# Practica 8: Automatización de Servidores con Docker y Ansible

Este repositorio contiene la solución a la Práctica 8, en la cual se utiliza **Docker Compose** para desplegar una arquitectura simulada de 5 servidores virtuales basados en Ubuntu, y **Ansible** para automatizar la configuración del sistema, gestión de usuarios, creación de archivos e instalación de paquetes.

---

## 🛠️ Tecnologías Utilizadas

* **Docker & Docker Compose:** Creación y orquestación de contenedores en la máquina anfitriona.
* **Ubuntu 22.04:** Sistema operativo base para los contenedores.
* **Ansible:** Herramienta Agentless para la gestión de configuración e infraestructura como código.
* **WSL (Windows Subsystem for Linux):** Entorno de ejecución para Ansible en Windows.

---

## 📁 Estructura del Proyecto

```text
.
├── Dockerfile          # Definición de la imagen de Ubuntu con SSH y sudo
├── docker-compose.yml  # Orquestación de los 5 servidores contenedores
├── inventario.ini      # Definición de los hosts y credenciales para Ansible
├── ansible.cfg         # Configuración predeterminada de Ansible
├── playbook.yml        # Tareas de automatización para los servidores
└── README.md           # Documentación del proyecto