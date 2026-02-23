# 🎓 Academic Admin MVC System

A custom-built University Academic Administration System developed using a pure PHP MVC architecture (no frameworks).

This project was refactored from an older academic system and modernized with:

- Clean MVC folder structure
- AJAX-based login system
- Environment variable configuration (.env)
- Secure routing using PHP built-in server router
- Git version control
- Database backup structure

---

## 🏗️ Architecture

This project follows a custom MVC (Model-View-Controller) structure:


- **Models** → Handle database logic
- **Views** → Frontend templates
- **Controllers** → Business logic
- **Core** → Routing and base controller
- **Public** → Entry point (index.php)

---

## ⚙️ Technologies Used

- PHP (Custom MVC)
- MySQL
- jQuery (AJAX)
- Bootstrap
- SweetAlert2
- DataTables
- PHPOffice

---

## 🔐 Environment Setup

This project uses a `.env` file for database configuration.

Create a file in the root directory:

Add:

DB_HOST=localhost
DB_NAME=your_database_name
DB_USER=your_username
DB_PASS=your_password

---

## 🗄️ Database Setup

1. Create a MySQL database.
2. Import the file:

---

## ▶️ Running Locally

From the `public` directory:

Then visit: http://localhost:8000

---

## ✨ Features

- Secure login system (AJAX-based)
- MVC routing system
- Role-based structure
- Modular folder organization
- Environment-based configuration

---

## 📌 Future Improvements

- Docker containerization
- CSRF protection
- Improved authentication security
- REST API endpoints
- Role permission management

---

## 👨‍💻 Author

Developed and refactored by Kevin - (Alex-Sintex)
Part of a university academic administration system modernization project.
