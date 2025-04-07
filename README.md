# 🎓 SkillBazzar
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

## Your Gateway to Online Learning & Course Monetization

**SkillBazzar** is a comprehensive online platform that bridges the gap between educators and learners. It empowers institutes and instructors to publish and monetize their courses, while offering students an intuitive space to explore, purchase, and learn new skills. With built-in dashboards, secure QR payments, and smart progress tracking, SkillBazzar redefines modern e-learning.

---

## 🚀 Key Features

- 🎥 **Course Management**: Admins and instructors can effortlessly create, update, and manage course content with video previews.
- 👥 **User Roles & Access**: Separate, role-based dashboards for **Admins**, **Instructors**, and **Students**.
- 💳 **Secure Payments**: QR-based payment integration for seamless and safe transactions.
- 📈 **Instructor Dashboard**: Real-time insights into earnings, student enrollments, and course performance.
- 📚 **Student Dashboard**: Access to purchased courses, progress tracking, and certificate downloads.
- 📊 **Admin Reports**: View platform-wide purchase reports and manage users at scale.

---

## 📁 Repository Structure

| File Name                             | Description                            |
|--------------------------------------|----------------------------------------|
| `skillbazzardb_usertable.sql`        | User accounts and role management      |
| `skillbazzardb_courses.sql`          | Course metadata and instructor link    |
| `skillbazzardb_course_links.sql`     | Video/resource links per course        |
| `skillbazzardb_course_reviews.sql`   | Student-submitted ratings and reviews  |
| `skillbazzardb_orders.sql`           | Order and payment records              |
| `skillbazzardb_studentprogress.sql`  | Student learning progress per course   |

> ✅ **Note:** All foreign keys are defined with `ON DELETE CASCADE`, ensuring automatic cleanup of child records when parent entries are removed.

---

## 🧱 Database Schema Overview

### 🧑‍💼 `users`
Stores all user profiles — students, instructors, and admins.

| Field       | Type           | Description                        |
|-------------|----------------|------------------------------------|
| user_id     | INT PRIMARY KEY| Auto-increment                     |
| name        | VARCHAR        | Full name                          |
| email       | VARCHAR UNIQUE | Unique identifier                  |
| password    | VARCHAR        | Encrypted/hashed password          |
| role        | ENUM           | `student`, `instructor`, or `admin`|
| created_at  | TIMESTAMP      | Auto-set on account creation       |

---

### 📘 `courses`
Course listings created by instructors.

| Field         | Type           | Description                             |
|---------------|----------------|-----------------------------------------|
| course_id     | INT PRIMARY KEY| Unique course identifier                |
| title         | VARCHAR        | Course title                            |
| description   | TEXT           | Detailed description                    |
| price         | DECIMAL        | Cost of the course                      |
| instructor_id | INT            | FK → `users(user_id)` (ON DELETE CASCADE) |
| created_at    | TIMESTAMP      | Course creation date                    |

---

### 🔗 `course_links`
Holds course content links (videos, PDFs, etc.).

| Field       | Type           | Description                        |
|-------------|----------------|------------------------------------|
| link_id     | INT PRIMARY KEY|                                    |
| course_id   | INT            | FK → `courses(course_id)`          |
| title       | VARCHAR        | Title of the content               |
| link_url    | TEXT           | URL to the hosted resource         |

---

### ⭐ `course_reviews`
Stores ratings and optional reviews from enrolled students.

| Field       | Type           | Description                            |
|-------------|----------------|----------------------------------------|
| review_id   | INT PRIMARY KEY|                                        |
| student_id  | INT            | FK → `users(user_id)` (ON DELETE CASCADE) |
| course_id   | INT            | FK → `courses(course_id)`              |
| rating      | INT            | Integer (1–5 stars)                    |
| review_text | TEXT           | Optional review message                |
| created_at  | TIMESTAMP      | Auto-filled                           |

---

### 🛒 `orders`
Captures each course purchase and payment detail.

| Field       | Type           | Description                            |
|-------------|----------------|----------------------------------------|
| order_id    | INT PRIMARY KEY|                                        |
| student_id  | INT            | FK → `users(user_id)` (ON DELETE CASCADE) |
| course_id   | INT            | FK → `courses(course_id)`              |
| amount      | DECIMAL        | Paid amount                            |
| status      | VARCHAR        | e.g. `paid`, `pending`, `failed`       |
| order_date  | TIMESTAMP      | Purchase timestamp                     |

---

### 📊 `student_progress`
Tracks the learning journey of each student per course.

| Field         | Type           | Description                            |
|---------------|----------------|----------------------------------------|
| progress_id   | INT PRIMARY KEY|                                        |
| student_id    | INT            | FK → `users(user_id)` (ON DELETE CASCADE) |
| course_id     | INT            | FK → `courses(course_id)`              |
| progress      | INT            | Completion percentage (0–100)          |
| last_updated  | TIMESTAMP      | Timestamp of last progress update      |

---

## 🔁 Cascading Deletes (Data Integrity)

SkillBazzar uses `ON DELETE CASCADE` for all dependent relationships:

- Deleting a **user** also removes their courses, reviews, orders, and progress records.
- Deleting a **course** removes its associated links, reviews, and progress data.

This ensures automatic cleanup of orphaned data and maintains referential integrity.

---

## ⚙️ Installation Guide

1. **Clone the Repository**
```bash
git clone https://github.com/ArjunPatil15/SkillBazzar.git
```

2. **Set Up the Database**
- Create a new MySQL database:
```sql
CREATE DATABASE skillbazzardb;
```
- Import all SQL files in proper order:
```bash
mysql -u root -p skillbazzar_db < skillbazzardb_usertable.sql
mysql -u root -p skillbazzar_db < skillbazzardb_courses.sql
mysql -u root -p skillbazzar_db < skillbazzardb_course_links.sql
mysql -u root -p skillbazzar_db < skillbazzardb_course_reviews.sql
mysql -u root -p skillbazzar_db < skillbazzardb_orders.sql
mysql -u root -p skillbazzar_db < skillbazzardb_studentprogress.sql
```

3. **Deploy the Application**
- Configure DB credentials in your Java project.
- Run the application on **Apache Tomcat** or any Java EE-compatible server.
- Access it at:
```
http://localhost:8080/skillBazzar
```

---

## 🧰 Tech Stack

- **Backend**: Java (Servlets, JSP)
- **Frontend**: HTML, CSS, JavaScript
- **Database**: MySQL
- **Server**: Apache Tomcat

---

## 🔐 Access Panel Overview

| Role       | Capabilities                                           |
|------------|--------------------------------------------------------|
| **Admin**     | Manage users, courses, reports, and overall platform |
| **Instructor**| Upload and manage courses, track sales              |
| **Student**   | Purchase courses, track progress, download certificates |

---

## ⭐ Support & Contribution

If you found this project helpful, feel free to:

- ⭐ Star the repo
- 🐛 Report issues or suggest features
- 📢 Share it with your peers

Let’s build better learning experiences together!

---

## 📜 License

This project is licensed under the **MIT License**. Feel free to use and modify it as per your needs.
