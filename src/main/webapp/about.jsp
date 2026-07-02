<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>About | AI Study Assistant</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:linear-gradient(135deg,#0f172a,#1d4ed8,#2563eb);
padding:30px;

}

.container{

max-width:1100px;
margin:auto;
background:white;
border-radius:20px;
overflow:hidden;
box-shadow:0 20px 40px rgba(0,0,0,.25);

}

.header{

background:linear-gradient(135deg,#2563eb,#1e40af);
color:white;
padding:50px 30px;
text-align:center;

}

.header h1{

font-size:40px;
margin-bottom:10px;

}

.header p{

font-size:18px;
opacity:.95;

}

.content{

padding:40px;

}

.section{

margin-bottom:35px;

}

.section h2{

color:#1e3a8a;
margin-bottom:15px;
padding-bottom:8px;
border-bottom:3px solid #2563eb;
display:inline-block;

}

.section p{

color:#555;
line-height:1.9;
margin-top:10px;

}

.cards{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(240px,1fr));
gap:20px;
margin-top:20px;

}

.card{

background:#f8fafc;
padding:25px;
border-radius:15px;
border:1px solid #e5e7eb;
transition:.3s;

}

.card:hover{

transform:translateY(-6px);
box-shadow:0 12px 25px rgba(0,0,0,.12);

}

.card h3{

color:#2563eb;
margin-bottom:12px;

}

.card ul{

padding-left:20px;
color:#555;
line-height:1.8;

}

.tech{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(180px,1fr));
gap:15px;
margin-top:20px;

}

.tech div{

background:#2563eb;
color:white;
padding:15px;
border-radius:10px;
text-align:center;
font-weight:600;

}

.sdg{

background:#eff6ff;
padding:25px;
border-left:6px solid #2563eb;
border-radius:12px;
margin-top:20px;

}

.buttons{

text-align:center;
margin-top:40px;

}

.btn{

display:inline-block;
text-decoration:none;
background:#2563eb;
color:white;
padding:14px 30px;
border-radius:10px;
font-weight:600;
transition:.3s;

}

.btn:hover{

background:#1d4ed8;

}

.footer{

background:#0f172a;
color:white;
text-align:center;
padding:25px;
margin-top:30px;

}

.footer p{

margin:8px 0;

}

@media(max-width:768px){

.header h1{

font-size:30px;

}

.content{

padding:20px;

}

}

</style>

</head>

<body>

<div class="container">

<div class="header">

<h1>🤖 AI Study Assistant</h1>

<p>

Artificial Intelligence Based Learning Platform

</p>

</div>

<div class="content">

<div class="section">

<h2>📘 Project Overview</h2>

<p>

AI Study Assistant is an intelligent web application developed to help students learn more effectively using Artificial Intelligence. The system allows students to ask academic questions in natural language and receive instant AI-generated answers. It provides a simple, interactive, and user-friendly learning experience that can be accessed anytime.

</p>

</div>

<div class="section">

<h2>🎯 Project Objectives</h2>

<div class="cards">

<div class="card">

<h3>📖 Smart Learning</h3>

<p>Provide instant AI-powered academic assistance for students.</p>

</div>

<div class="card">

<h3>⚡ Quick Answers</h3>

<p>Reduce the time required to search for educational information.</p>

</div>

<div class="card">

<h3>🎓 Better Education</h3>

<p>Improve learning quality through intelligent study support.</p>

</div>

</div>

</div>

<div class="section">

<h2>✨ Key Features</h2>

<div class="cards">

<div class="card">

<ul>

<li>User Registration & Login</li>
<li>AI Chatbot for Study Questions</li>
<li>Secure Session Management</li>
<li>Responsive User Interface</li>
<li>Easy Navigation</li>
<li>Fast AI Responses</li>

</ul>

</div>

</div>

</div>

<div class="section">

<h2>💻 Technologies Used</h2>

<div class="tech">

<div>Java</div>

<div>JSP</div>

<div>Servlets</div>

<div>Maven</div>

<div>Apache Tomcat</div>

<div>MySQL</div>

<div>HTML5</div>

<div>CSS3</div>

<div>JavaScript</div>

<div>Gemini AI API</div>

</div>

</div>

<div class="section">

<h2>🌍 SDG 4 - Quality Education</h2>

<div class="sdg">

<p>

This project supports the United Nations Sustainable Development Goal 4 (Quality Education). By using Artificial Intelligence, the application helps students access educational support anytime and anywhere, making learning more accessible, interactive, and personalized.

</p>

</div>

</div>

<div class="section">

<h2>👨‍💻 Developer</h2>

<p>

This project has been developed as a Final Year B.Tech Project to demonstrate the practical implementation of Artificial Intelligence, Java Enterprise Technologies, and modern web development for educational applications.

</p>

</div>

<div class="buttons">

<a href="index.jsp" class="btn">

🏠 Back to Home

</a>

</div>

</div>

<div class="footer">

<p><strong>AI Study Assistant</strong></p>

<p>Built with Java, JSP, Servlets, Maven, Apache Tomcat, MySQL & Gemini AI</p>

<p>© 2026 Final Year Project | All Rights Reserved</p>

</div>

</div>

</body>

</html>