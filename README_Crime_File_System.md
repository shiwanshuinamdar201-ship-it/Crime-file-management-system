# 🗂️ Crime File Management System

<div align="center">

![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=for-the-badge&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![REST API](https://img.shields.io/badge/REST_API-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![HTML/CSS](https://img.shields.io/badge/HTML%2FCSS%2FJS-E34F26?style=for-the-badge&logo=html5&logoColor=white)

**A secure, full-stack web application for managing and retrieving criminal case records**

*Team of 2*

</div>

---

## 📌 The Problem

Police stations and law enforcement agencies often rely on paper-based or fragmented digital systems for managing criminal records. This leads to slow case retrieval, data loss, and unauthorized access risks. This system centralizes case management with structured data, secure authentication, and fast search.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔐 **Secure Auth** | Role-based login — Admin vs Officer permissions |
| ➕ **Case Management** | Add, update, and close criminal cases with full audit trail |
| 🔍 **Smart Search** | Search by suspect name, case ID, date range, or crime type |
| 📋 **Record History** | Full timeline of updates per case |
| 🗄️ **Structured DB** | Normalized MySQL schema for fast, reliable queries |
| ✅ **Input Validation** | Server-side validation on all data entry points |

---

## 🏗️ System Architecture

```
┌─────────────────────────────────────────────────┐
│                  FRONTEND                       │
│  HTML + CSS + JavaScript                        │
│  → Case forms, search UI, dashboard             │
└────────────────────┬────────────────────────────┘
                     │ HTTP requests
                     ▼
┌─────────────────────────────────────────────────┐
│               REST API LAYER                    │
│  Python (Flask / FastAPI)                       │
│                                                 │
│  POST   /api/cases          → Create case       │
│  GET    /api/cases/:id      → Fetch case        │
│  PUT    /api/cases/:id      → Update case       │
│  GET    /api/cases/search   → Search records    │
│  POST   /api/auth/login     → Authenticate      │
└────────────────────┬────────────────────────────┘
                     │ SQL queries
                     ▼
┌─────────────────────────────────────────────────┐
│               DATABASE LAYER                    │
│  MySQL — normalized relational schema           │
│                                                 │
│  Tables: users, cases, suspects,                │
│          evidence, case_updates                 │
└─────────────────────────────────────────────────┘
```

---

## 🗄️ Database Schema

```sql
-- Core tables (simplified)

CREATE TABLE cases (
    case_id     INT PRIMARY KEY AUTO_INCREMENT,
    title       VARCHAR(255) NOT NULL,
    crime_type  ENUM('theft','assault','fraud','cybercrime','other'),
    status      ENUM('open','investigating','closed') DEFAULT 'open',
    filed_date  DATETIME DEFAULT CURRENT_TIMESTAMP,
    officer_id  INT REFERENCES users(user_id)
);

CREATE TABLE suspects (
    suspect_id  INT PRIMARY KEY AUTO_INCREMENT,
    case_id     INT REFERENCES cases(case_id),
    full_name   VARCHAR(255),
    dob         DATE,
    address     TEXT,
    status      ENUM('wanted','arrested','released','acquitted')
);

CREATE TABLE case_updates (
    update_id   INT PRIMARY KEY AUTO_INCREMENT,
    case_id     INT REFERENCES cases(case_id),
    updated_by  INT REFERENCES users(user_id),
    note        TEXT,
    timestamp   DATETIME DEFAULT CURRENT_TIMESTAMP
    -- Full audit trail — nothing is deleted, only updated
);
```

---

## 🔐 Auth & Security

```python
# Role-based access control
PERMISSIONS = {
    'admin':   ['create', 'read', 'update', 'delete', 'manage_users'],
    'officer': ['create', 'read', 'update'],
    'viewer':  ['read']
}

def require_permission(action):
    """Decorator — blocks unauthorized API calls before they hit the DB."""
    def decorator(f):
        @wraps(f)
        def wrapper(*args, **kwargs):
            user_role = get_current_user_role()
            if action not in PERMISSIONS.get(user_role, []):
                return jsonify({'error': 'Unauthorized'}), 403
            return f(*args, **kwargs)
        return wrapper
    return decorator
```

---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/shiwanshuinamdar201-ship-it/Crime-file-management-system.git
cd Crime-file-management-system

# Install Python dependencies
pip install -r requirements.txt

# Set up MySQL database
mysql -u root -p < schema.sql

# Configure environment
cp .env.example .env
# Edit .env: set DB_HOST, DB_USER, DB_PASSWORD, SECRET_KEY

# Run the application
python app.py
# Opens at http://localhost:5000
```

### Default Test Credentials
```
Admin:   admin@system.com  / admin123
Officer: officer@system.com / officer123
```

---

## 📁 Project Structure

```
Crime-file-management-system/
├── app.py                      # Flask application entry point
├── routes/
│   ├── auth.py                 # Login, logout, session management
│   ├── cases.py                # Case CRUD endpoints
│   └── search.py               # Search and filter logic
├── models/
│   ├── case.py                 # Case model + DB interactions
│   ├── suspect.py              # Suspect model
│   └── user.py                 # User model + RBAC
├── static/
│   ├── css/style.css
│   └── js/main.js
├── templates/
│   ├── dashboard.html
│   ├── case_form.html
│   └── search.html
├── schema.sql                  # Full MySQL schema with indexes
├── .env.example
└── requirements.txt
```

---

## 💡 Key Learnings

- **Soft deletes** (status flags) are better than hard deletes for legal/audit systems — you never truly delete a criminal record
- Parameterized queries (never string concatenation) are non-negotiable — SQL injection is the #1 risk in record systems
- Role-based access at the **API layer** (not just the UI) is essential — frontend checks are bypassable
- Normalized schema with foreign keys catches data inconsistency at the DB level, not the application level

---

## 🧠 Skills Demonstrated

`Full-Stack Development` `RESTful API Design` `MySQL` `Database Design` `Authentication & RBAC` `Input Validation` `Python (Flask)` `HTML/CSS/JS` `System Design`

---

<div align="center">
Made by <a href="https://github.com/shiwanshuinamdar201-ship-it">Shiwanshu Inamdar</a> & team · B.Tech CSE Data Science · D.Y. Patil International University
</div>
