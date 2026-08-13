# OrangeHRM Overview

OrangeHRM is a flexible HR management platform offering both a free open-source edition and paid cloud plans, with modular features covering recruitment, onboarding, performance, leave, and core HR. Prices start at free for the Starter edition, while Advanced cloud plans are custom‑quoted per employee per month (PEPM).

- OrangeHRM is a web-based Human Resource Management System (HRMS).
- Runs on the AMP stack: `Apache`, `MariaDB`, `PHP`
- Supports enterprise HR functions like employee management, payroll, recruitment, performance appraisal, and more.


## 📂 Folder Structure


| **[File/Folder](ca://s?q=OrangeHRM_Docker_files)** | **Purpose** |
|----------------------------------|------------------------------------------------|
| **[Dockerfile](ca://s?q=OrangeHRM_Dockerfile)** | Builds the Apache + PHP environment with required modules and SSL support |
| **[docker-compose.yaml](ca://s?q=OrangeHRM_docker_compose)** | Defines services: web (Apache/PHP) and db (MariaDB) |
| **[apache/orangehrm.conf](ca://s?q=OrangeHRM_Apache_config)** | Apache VirtualHost configuration for `localhost/ohrm` |
| **[certs/](ca://s?q=OrangeHRM_SSL_certs)** | Stores SSL certificates for HTTPS access |
| **[config/php.ini](ca://s?q=OrangeHRM_php_ini)** | Custom PHP settings optimized for OrangeHRM |
| **[backup.sh](ca://s?q=OrangeHRM_backup_script)** | Script to back up MariaDB database manually or via cron |
| **[README.md](ca://s?q=OrangeHRM_README)** | Documentation and usage instructions |

---

## 🧱 OrangeHRM Docker Setup (Localhost)

## 🚀 Usage Summary
1. Clone this folder: `orangehrm_project/`
2. **Build and start containers**
   ```bash
   cd orangehrm_project
   docker compose up -d --build
   ```
3. Access OrangeHRM:
HTTP: http://localhost/ohrm
HTTPS: https://localhost/ohrm (self-signed certs in certs/)
4. Backup database:
   ```bash
   ./backup.sh
   ```

## 🧠 Credits & Vision

Built by @sethuaung
Strategic lead in bilingual curriculum design, digital forensics, and open-source ethics.
This project reflects our commitment to scalable, inclusive, emotionally resonant learning ecosystems.


## 📝 License

MIT License — feel free to remix, adapt, and celebrate responsibly.
