# 🎓 AI Study Assistant

An AI-powered Study Assistant built using **Java, JSP, Servlets, Maven, MySQL, Apache Tomcat, and Google's Gemini AI API**. The application helps students ask academic questions, receive AI-generated answers, manage their accounts, and access a simple learning dashboard through a modern web interface.

---

## 📖 Project Overview

AI Study Assistant is a web application developed as a college capstone project under **SDG 4 – Quality Education**.

The main objective of this project is to provide students with an intelligent study companion that can answer questions, explain concepts, and make learning easier using Artificial Intelligence.

---

## ✨ Features

* 🤖 AI-powered question answering using Gemini AI
* 👤 Student Registration
* 🔐 Secure Login & Logout
* 💬 Interactive AI Chat Interface
* 📊 Student Dashboard
* 🏠 Home Page
* ℹ️ About Page
* 🎨 Responsive User Interface
* ⚡ Fast AI response generation
* 💾 MySQL Database Integration
* ☁️ Maven-based Java Web Project

---

## 🛠️ Technology Stack

### Frontend

* JSP
* HTML5
* CSS3
* JavaScript

### Backend

* Java
* JSP & Servlets
* Maven

### Database

* MySQL

### AI

* Google Gemini API

### Server

* Apache Tomcat 9

### IDE

* Eclipse IDE

### Build Tool

* Maven

---

## 📂 Project Structure

```text
AIStudyAssistant
│
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com.devpathak
│   │   │       ├── ai
│   │   │       ├── controller
│   │   │       ├── dao
│   │   │       ├── model
│   │   │       └── util
│   │   │
│   │   └── webapp
│   │       ├── WEB-INF
│   │       ├── index.jsp
│   │       ├── login.jsp
│   │       ├── register.jsp
│   │       ├── dashboard.jsp
│   │       ├── chat.jsp
│   │       └── about.jsp
│
├── pom.xml
└── README.md
```

---

## ⚙️ Software Requirements

* Java 17 or later
* Eclipse IDE
* Apache Tomcat 9
* Maven
* MySQL Server
* MySQL Workbench
* Git
* GitHub

---

## 🚀 Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Devpathak75/devai.git
```

### 2. Open in Eclipse

* Import as **Existing Maven Project**
* Wait for Maven dependencies to download.

### 3. Configure MySQL

Create a database.

Update your database connection details in the project.

Example:

```java
URL = "jdbc:mysql://localhost:3306/database_name";
USERNAME = "root";
PASSWORD = "your_password";
```

### 4. Configure Gemini API

Do **not** hardcode your API key.

Store it securely (for example, as an environment variable) and configure the application to read it at runtime.

### 5. Deploy

* Configure Apache Tomcat.
* Run the project on the server.

Open:

```
http://localhost:8080/AIStudyAssistant/
```

---

## 📸 Screens

* Home Page
* Login Page
* Registration Page
* Dashboard
* AI Chat Page
* About Page

(Add screenshots here after uploading them.)

---

## 🔄 Project Workflow

```text
Student
   │
   ▼
Login / Register
   │
   ▼
Dashboard
   │
   ▼
Ask Question
   │
   ▼
Gemini AI API
   │
   ▼
AI Generates Response
   │
   ▼
Display Answer
```

---

## 📚 Learning Outcomes

This project demonstrates practical knowledge of:

* Java Web Development
* JSP and Servlets
* MVC Architecture
* Maven Project Management
* MySQL Database Connectivity
* JDBC
* REST API Integration
* AI API Integration
* Session Management
* Git & GitHub
* Software Development Lifecycle

---

## 🎯 Future Enhancements

* PDF Notes Generation
* AI Quiz Generator
* Chat History
* Voice Input
* Voice Response
* Dark Mode
* File Upload Support
* Image-based Question Answering
* Multi-language Support
* Admin Panel
* Student Progress Tracking
* Performance Analytics
* Email Notifications

---

## 👨‍💻 Developer

**Dev Pathak**

Final Year B.Tech Student

---

## 📄 License

This project is developed for educational and learning purposes.

---

## ⭐ Support

If you found this project useful, consider giving the repository a **Star ⭐** on GitHub.

Thank you for visiting the project!
