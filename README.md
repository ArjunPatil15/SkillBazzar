# 🎓 Skill-Bazzar - E-Learning Platform

[![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)](https://www.java.com/)
[![JSP](https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white)](https://www.oracle.com/java/technologies/jsp.html)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **Skill-Bazzar** is a comprehensive e-learning platform that connects students, instructors, and administrators in a seamless educational ecosystem. Built with Java Enterprise technologies, it provides robust course management, user authentication, and payment processing capabilities.

## ✨ Features

### 🎯 **Multi-Role User Management**
- **Students**: Browse courses, make purchases, access learning materials
- **Instructors**: Create and manage courses, upload lectures, track sales
- **Administrators**: Oversee platform operations, manage users, monitor transactions

### 📚 **Course Management System**
- Dynamic course creation and editing
- Video lecture uploads and management
- Course categorization and search functionality
- Sales tracking and analytics

### 🔐 **Security & Authentication**
- Role-based access control (RBAC)
- Secure login validation
- Session management
- Password protection



## 🏗️ Architecture

```
Skill-Bazzar/
├── src/main/java/com/ninfinity/
│   ├── controller/          # Servlet controllers
│   ├── dao/                # Data Access Objects
│   ├── entities/           # JPA entities
│   └── helper/             # Utility classes
├── src/main/webapp/        # Web resources
│   ├── WEB-INF/           # Configuration files
│   ├── JSP pages          # View templates
│   └── Static resources   # CSS, JS, images
└── Database                # MySQL database schema
```

## 🚀 Technology Stack

| Component | Technology | Version |
|-----------|------------|---------|
| **Backend** | Java Servlet/JSP | Java 8+ |
| **Database** | MySQL | 5.7+ |
| **Frontend** | HTML5, CSS3, JavaScript | - |
| **UI Framework** | Bootstrap | 4.x |
| **Server** | Apache Tomcat | 8.5+ |
| **Build Tool** | Maven | 3.6+ |

## 📋 Prerequisites

Before running this application, ensure you have the following installed:

- **Java Development Kit (JDK)** 8 or higher
- **Apache Tomcat** 8.5 or higher
- **MySQL Database** 5.7 or higher
- **Maven** 3.6 or higher (for building)
- **Git** (for version control)

## 🛠️ Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/skill-bazzar.git
cd skill-bazzar
```

### 2. Database Setup
```sql
-- Create database
CREATE DATABASE skill_bazzar;
USE skill_bazzar;

-- Import the provided SQL schema
-- (Database schema file will be provided separately)
```

### 3. Configure Database Connection
Update the database connection parameters in `src/main/java/com/ninfinity/dao/DatabaseConnect.java`:

```java
// Update these values according to your MySQL configuration
private static final String URL = "jdbc:mysql://localhost:3306/skill_bazzar";
private static final String USERNAME = "your_username";
private static final String PASSWORD = "your_password";
```

### 4. Build the Project
```bash
mvn clean compile
mvn package
```

### 5. Deploy to Tomcat
1. Copy the generated WAR file to Tomcat's `webapps` directory
2. Start Tomcat server
3. Access the application at `http://localhost:8080/skill-bazzar`

## 🔧 Configuration

### Environment Variables
Set the following environment variables if needed:
```bash
export DB_HOST=localhost
export DB_PORT=3306
export DB_NAME=skill_bazzar
export DB_USER=your_username
export DB_PASSWORD=your_password
```

### Application Properties
Key configuration files:
- `WEB-INF/web.xml` - Web application configuration
- `META-INF/MANIFEST.MF` - Application manifest
- Database connection settings in DAO classes

## 📖 Usage

### For Students
1. **Registration**: Create a new account with email and password
2. **Course Discovery**: Browse available courses by category
3. **Purchase**: Select and purchase desired courses
4. **Learning**: Access course materials and video lectures
5. **Progress Tracking**: Monitor learning progress

### For Instructors
1. **Account Setup**: Register as an instructor
2. **Course Creation**: Add new courses with descriptions and pricing
3. **Content Management**: Upload video lectures and course materials
4. **Analytics**: Track course sales and student engagement
5. **Revenue Management**: Monitor earnings and payment status

### For Administrators
1. **User Management**: Oversee student and instructor accounts
2. **Platform Monitoring**: Track overall system performance
3. **Transaction Oversight**: Monitor payment processing and sales
4. **Content Moderation**: Ensure quality and compliance


## 📊 Performance Optimization

- **Database Indexing**: Optimized database queries
- **Connection Pooling**: Efficient database connection management
- **Caching**: Strategic data caching implementation
- **Resource Optimization**: Optimized static resource delivery

## 🤝 Contributing

We welcome contributions to improve Skill-Bazzar! Please follow these steps:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Contribution Guidelines
- Follow Java coding conventions
- Add appropriate comments and documentation
- Include unit tests for new features
- Ensure all tests pass before submitting

## 🐛 Issue Reporting

If you encounter any bugs or have feature requests:

1. Check existing issues to avoid duplicates
2. Create a new issue with detailed description
3. Include steps to reproduce the problem
4. Provide system information and error logs


## 🙏 Acknowledgments

- **Bootstrap** for the responsive UI framework
- **MySQL** for the robust database system
- **Apache Tomcat** for the application server
- **Java Community** for the excellent 

<div align="center">

**Made with ❤️ by Arjun**

</div> 