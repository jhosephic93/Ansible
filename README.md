# Ansible

- Ansible se usa para instalar y ejecutar scripts dentro de un server (instancia), por ejemplo apache, php, etc.

| Característica                 | Ansible Tower                           | Ansible Engine                                    | Red Hat Ansible Automation Platform        |
|--------------------------------|-----------------------------------------|---------------------------------------------------|--------------------------------------------|
| Interfaz                       | Interfaz web                            | Línea de comandos                                 | Interfaz web y línea de comandos           |
| Gestión de inventarios         | Sí, con interfaz visual                 | Sí, archivo de texto                              | Sí, con interfaz visual y archivo de texto |
| Planificación de tareas        | Sí, permite programar tareas            | No, se ejecuta manualmente                        | Sí, permite programar tareas               |
| Roles y permisos               | Sí, gestión avanzada de usuarios        | No                                                | Sí, gestión avanzada de usuarios           |
| APIs y Integraciones           | Sí, integración con servicios           | Limitado                                          | Sí, integración amplia con servicios       |
| Escalabilidad                  | Moderada                                | Baja                                              | Alta, diseñada para entornos empresariales |
| Soporte                        | Soporte comercial disponible            | Soporte comunitario                               | Soporte comercial de nivel empresarial     |
| Automatización de Workflows    | Sí                                      | No, solo playbooks                                | Sí, con capacidades avanzadas              |
| Gestión de credenciales        | Sí, almacenamiento seguro               | No, almacenado en playbooks                       | Sí, almacenamiento seguro                  |
| Analítica y Reportes           | Sí, reportes y auditoría                | No                                                | Sí, reportes avanzados y auditoría         |
| Capacidades de Orquestación    | Sí                                      | Sí, pero más limitado                             | Sí, capacidades avanzadas                  |
| Es de Pago                     | Sí, con versión limitada gratuita (AWX) | No, es gratuito                                   | Sí, es de pago                             |
| Sistemas Operativos Soportados | Linux (RHEL, CentOS, Ubuntu)            | Linux, macOS, BSD, (parcialmente Windows vía WSL) | Linux (RHEL, CentOS)                       |
