<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>AI Study Assistant</title>

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
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:30px;

}

.container{

width:100%;
max-width:1100px;
background:#fff;
border-radius:20px;
overflow:hidden;
box-shadow:0 20px 45px rgba(0,0,0,.25);

}

.hero{

background:linear-gradient(135deg,#2563eb,#1e40af);
color:white;
text-align:center;
padding:60px 30px;

}

.hero h1{

font-size:48px;
margin-bottom:15px;

}

.hero h3{

font-weight:500;
margin-bottom:20px;
opacity:.95;

}

.hero p{

font-size:18px;
max-width:700px;
margin:auto;
line-height:1.8;

}

.buttons{

margin-top:35px;
display:flex;
justify-content:center;
gap:20px;
flex-wrap:wrap;

}

.btn{

text-decoration:none;
background:white;
color:#2563eb;
padding:14px 30px;
border-radius:10px;
font-weight:600;
transition:.3s;

}

.btn:hover{

transform:translateY(-4px);
background:#f3f4f6;

}

.section{

padding:50px;

}

.section-title{

text-align:center;
font-size:32px;
color:#1e3a8a;
margin-bottom:40px;

}

.cards{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
gap:25px;

}

.card{

background:#f8fafc;
border-radius:15px;
padding:30px;
text-align:center;
border:1px solid #e5e7eb;
transition:.3s;

}

.card:hover{

transform:translateY(-8px);
box-shadow:0 15px 30px rgba(0,0,0,.12);

}

.card h3{

font-size:22px;
margin-bottom:15px;
color:#2563eb;

}

.card p{

color:#555;
line-height:1.8;

}

.sdg{

margin-top:50px;
background:#eff6ff;
padding:30px;
border-radius:15px;
text-align:center;
border-left:6px solid #2563eb;

}

.sdg h2{

color:#1e3a8a;
margin-bottom:15px;

}

.sdg p{

color:#555;
line-height:1.8;

}

.footer{

background:#0f172a;
color:white;
text-align:center;
padding:25px;

}

.footer p{

margin:8px 0;

}

@media(max-width:768px){

.hero h1{

font-size:34px;

}

.hero p{

font-size:16px;

}

.section{

padding:25px;

}

}

</style>

</head>

<body>

<div class="container">

<div class="hero">

<h1>🤖 AI Study Assistant</h1>

<h3>SDG 4 - Quality Education</h3>

<p>

Learn Smarter with Artificial Intelligence.
Get instant answers to your academic questions,
understand difficult concepts, and improve your learning experience anytime, anywhere.

</p>

<div class="buttons">

<a href="login.jsp" class="btn">

🔐 Login

</a>

<a href="register.jsp" class="btn">

📝 Register

</a>

<a href="about.jsp" class="btn">

📘 About

</a>

</div>

</div>

<div class="section">

<h2 class="section-title">

✨ Features

</h2>

<div class="cards">

<div class="card">

<h3>💬 AI Chatbot</h3>

<p>

Ask study-related questions and receive intelligent AI-powered answers instantly.

</p>

</div>

<div class="card">

<h3>📚 Smart Learning</h3>

<p>

Understand difficult topics with simple explanations generated using Artificial Intelligence.

</p>

</div>

<div class="card">

<h3>⚡ Instant Help</h3>

<p>

Available 24×7 to support your studies and improve your learning experience.

</p>

</div>

</div>

<div class="sdg">

<h2>

🌍 Supporting SDG 4 - Quality Education

</h2>

<p>

This project promotes quality education by using Artificial Intelligence to make learning easier,
more accessible, interactive, and personalized for every student.

</p>

</div>

</div>

<div class="footer">

<p>

<strong>AI Study Assistant</strong>

</p>

<p>

Developed using Java, JSP, Servlets, Maven, Tomcat, MySQL & Gemini API

</p>

<p>

© 2026 Final Year Project | All Rights Reserved

</p>

</div>

</div>

</body>

</html>