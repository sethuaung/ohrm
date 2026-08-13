# OrangeHRM Overview

OrangeHRM is a flexible HR management platform offering both a free open-source edition and paid cloud plans, with modular features covering recruitment, onboarding, performance, leave, and core HR. Prices start at free for the Starter edition, while Advanced cloud plans are custom‑quoted per employee per month (PEPM).

- OrangeHRM is a web-based Human Resource Management System (HRMS).
- Runs on the AMP stack: `Apache`, `MariaDB`, `PHP`
- Supports enterprise HR functions like employee management, payroll, recruitment, performance appraisal, and more.

## OHRM Demo

- Demo site : https://opensource-demo.orangehrmlive.com/

## 📂 Structure

orangehrm_project/
├── Dockerfile
├── docker-compose.yaml
├── apache/
│   └── orangehrm.conf
├── certs/
│   ├── fullchain.pem      # self-signed cert (public)
│   ├── privkey.pem        # self-signed cert (private)
├── config/
│   └── php.ini            # custom PHP settings
├── backup.sh
└── README.md


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
