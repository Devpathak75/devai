<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.devpathak.model.User"%>

<%
User user = (User) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>AI Study Assistant | Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:linear-gradient(135deg,#0f172a,#1e40af,#2563eb);
min-height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:30px;

}

.dashboard{

width:100%;
max-width:1100px;
background:#ffffff;
border-radius:20px;
overflow:hidden;
box-shadow:0 20px 45px rgba(0,0,0,.25);

}

.header{

background:linear-gradient(135deg,#2563eb,#1d4ed8);
padding:35px;
color:white;
text-align:center;

}

.header h1{

font-size:34px;
margin-bottom:10px;

}

.header p{

font-size:17px;
opacity:.95;

}

.content{

padding:40px;

}

.welcome{

background:#f8fafc;
padding:25px;
border-radius:15px;
border-left:6px solid #2563eb;
margin-bottom:35px;

}

.welcome h2{

color:#1e3a8a;
margin-bottom:10px;

}

.welcome p{

color:#555;
line-height:1.7;

}

.cards{

display:grid;
grid-template-columns:repeat(auto-fit,minmax(260px,1fr));
gap:25px;

}

.card{

background:white;
border-radius:15px;
padding:30px;
text-align:center;
border:1px solid #e5e7eb;
transition:.3s;
box-shadow:0 10px 25px rgba(0,0,0,.08);

}

.card:hover{

transform:translateY(-8px);
box-shadow:0 18px 35px rgba(0,0,0,.15);

}

.card h3{

font-size:22px;
color:#1e3a8a;
margin-bottom:15px;

}

.card p{

color:#666;
line-height:1.7;
margin-bottom:25px;

}

.btn{

display:inline-block;
padding:13px 28px;
background:#2563eb;
color:white;
text-decoration:none;
border-radius:10px;
font-weight:600;
transition:.3s;

}

.btn:hover{

background:#1d4ed8;

}

.logout{

background:#dc2626;

}

.logout:hover{

background:#b91c1c;

}

.footer{

margin-top:40px;
text-align:center;
padding-top:25px;
border-top:1px solid #ddd;
color:#666;

}

@media(max-width:768px){

.header h1{

font-size:28px;

}

.content{

padding:20px;

}

}

</style>

</head>

<body>

<div class="dashboard">

<div class="header">

<h1>🤖 AI Study Assistant</h1>

<p>Student Dashboard</p>

</div>

<div class="content">

<div class="welcome">

<h2>Welcome, <%= user.getName() %> 👋</h2>

<p>

Welcome to your AI Study Assistant Dashboard.

You can ask study-related questions, understand difficult topics,
generate explanations, and improve your learning with the help of AI.

</p>

</div>

<div class="cards">

<div class="card">

<h3>💬 AI Chatbot</h3>

<p>

Ask any academic question and receive instant AI-generated answers
to help with your studies.

</p>

<a href="chat.jsp" class="btn">

Open Chat

</a>

</div>

<div class="card">

<h3>📘 About Project</h3>

<p>

Know about the project objectives, technologies used,
features, and development details.

</p>

<a href="about.jsp" class="btn">

About Project

</a>

</div>

<div class="card">

<h3>🚪 Logout</h3>

<p>

Securely end your current session and return to the login page.

</p>

<a href="logout" class="btn logout">

Logout

</a>

</div>

</div>

<div class="footer">

<p>

Developed using <strong>Java, JSP, Servlets, Maven, Tomcat, MySQL & Gemini AI API</strong>

</p>

<br>

<p>

© 2026 AI Study Assistant | Final Year Project

</p>

</div>

</div>

</div>

</body>

</html>