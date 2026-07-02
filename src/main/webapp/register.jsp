<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Student Registration | AI Study Assistant</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<script src="js/script.js"></script>

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
padding:20px;

}

.register-box{

width:100%;
max-width:460px;
background:rgba(255,255,255,0.96);
padding:40px;
border-radius:20px;
box-shadow:0 20px 45px rgba(0,0,0,.30);

}

.logo{

font-size:55px;
text-align:center;
margin-bottom:10px;

}

h2{

text-align:center;
color:#1e3a8a;
margin-bottom:8px;

}

.subtitle{

text-align:center;
color:#666;
margin-bottom:30px;

}

.input-group{

margin-bottom:20px;

}

label{

display:block;
font-weight:600;
margin-bottom:8px;
color:#333;

}

.input-box{

display:flex;
align-items:center;
border:1px solid #d1d5db;
border-radius:10px;
padding:0 15px;
background:white;

}

.input-box span{

font-size:20px;
margin-right:10px;

}

.input-box input{

width:100%;
padding:15px 5px;
border:none;
outline:none;
font-size:15px;

}

.toggle{

cursor:pointer;
font-size:18px;
user-select:none;

}

.btn{

width:100%;
padding:15px;
background:#2563eb;
color:white;
border:none;
border-radius:10px;
font-size:16px;
font-weight:600;
cursor:pointer;
transition:.3s;

}

.btn:hover{

background:#1d4ed8;

}

.message{

padding:12px;
margin-bottom:20px;
border-radius:8px;
text-align:center;
font-size:14px;

}

.error{

background:#fee2e2;
color:#b91c1c;

}

.success{

background:#dcfce7;
color:#166534;

}

.links{

margin-top:20px;
display:flex;
justify-content:space-between;
font-size:14px;

}

.links a{

text-decoration:none;
color:#2563eb;
font-weight:600;

}

.links a:hover{

text-decoration:underline;

}

.home{

margin-top:25px;
text-align:center;

}

.home a{

display:inline-block;
text-decoration:none;
background:#16a34a;
color:white;
padding:10px 20px;
border-radius:8px;
font-weight:600;

}

.home a:hover{

background:#15803d;

}

.footer{

margin-top:25px;
text-align:center;
font-size:13px;
color:#777;

}

</style>

</head>

<body>

<div class="register-box">

<div class="logo">

🎓

</div>

<h2>AI Study Assistant</h2>

<p class="subtitle">

Create Your Student Account

</p>

<%
String error = (String)request.getAttribute("error");
String success = (String)request.getAttribute("success");

if(error != null){
%>

<div class="message error">

<%= error %>

</div>

<%
}

if(success != null){
%>

<div class="message success">

<%= success %>

</div>

<%
}
%>

<form action="register" method="post" onsubmit="return validateRegister();">

<div class="input-group">

<label>Full Name</label>

<div class="input-box">

<span>👤</span>

<input
type="text"
name="name"
id="name"
placeholder="Enter your full name"
required>

</div>

</div>

<div class="input-group">

<label>Email Address</label>

<div class="input-box">

<span>📧</span>

<input
type="email"
name="email"
id="email"
placeholder="Enter your email"
required>

</div>

</div>

<div class="input-group">

<label>Password</label>

<div class="input-box">

<span>🔒</span>

<input
type="password"
name="password"
id="password"
placeholder="Create a password"
required
minlength="6">

<span class="toggle" onclick="togglePassword()">

👁️

</span>

</div>

</div>

<input
type="submit"
value="Create Account"
class="btn">

</form>

<div class="links">

<a href="login.jsp">

Already Registered? Login

</a>

<a href="index.jsp">

Home

</a>

</div>

<div class="home">

<a href="index.jsp">

🏠 Back to Home

</a>

</div>

<div class="footer">

<p>

Java • JSP • Servlets • MySQL • Maven • Gemini AI

</p>

<p>

© 2026 AI Study Assistant

</p>

</div>

</div>

<script>

function togglePassword(){

var password=document.getElementById("password");

if(password.type==="password"){

password.type="text";

}else{

password.type="password";

}

}

</script>

</body>

</html>