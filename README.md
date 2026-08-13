# OrangeHRM Overview

OrangeHRM is a flexible HR management platform offering both a free open-source edition and paid cloud plans, with modular features covering recruitment, onboarding, performance, leave, and core HR. Prices start at free for the Starter edition, while Advanced cloud plans are custom‑quoted per employee per month (PEPM).

- OrangeHRM is a web-based Human Resource Management System (HRMS).
- Runs on the AMP stack: `Apache`, `MariaDB`, `PHP`
- Supports enterprise HR functions like employee management, payroll, recruitment, performance appraisal, and more.

## 🔑 Demo Access

- URL: opensource-demo.orangehrmlive.com
- Username: Admin
- Password: admin123
- Version: OrangeHRM OS 5.9 (latest open-source release)

## 📦 Modules Available in Demo

- Admin → User management, roles, permissions
- PIM (Personnel Information Management) → Employee records, job details, reporting structure
- Leave → Leave requests, approvals, accruals
- Time → Timesheets, project tracking
- Recruitment → Job postings, candidate applications, interview scheduling
- Performance → Appraisals, KPIs, performance reviews
- Dashboard → Quick access to employee stats, leave balances, and announcements

## 🌟 Benefits of Using Demo

- Hands-on exploration: Test workflows without setup.
- Training tool: Ideal for classroom demos or onboarding HR staff.
- Safe sandbox: Experiment with features without affecting production data.
- Feature comparison: Evaluate open-source vs. paid cloud editions.

## 💰 Pricing Context

- Starter (Open Source): Free, self-hosted (like the demo).
- Advanced Cloud: Custom per-employee-per-month pricing, includes recruitment, performance, leave, time, and mobile access.
- Enterprise Support: Tailored pricing for implementation, training, and premium support.

---

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
