<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Student Login | AI Study Assistant</title>

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
height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:20px;

}

.login-box{

width:100%;
max-width:430px;
background:rgba(255,255,255,0.95);
padding:40px;
border-radius:20px;
box-shadow:0 20px 45px rgba(0,0,0,.30);

}

.logo{

text-align:center;
font-size:55px;
margin-bottom:10px;

}

h2{

text-align:center;
color:#1e3a8a;
margin-bottom:10px;

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
margin-bottom:8px;
font-weight:600;
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

text-decoration:none;
background:#16a34a;
color:white;
padding:10px 20px;
border-radius:8px;
font-weight:600;
display:inline-block;

}

.home a:hover{

background:#15803d;

}

.error{

background:#fee2e2;
color:#b91c1c;
padding:10px;
border-radius:8px;
margin-bottom:20px;
text-align:center;

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

<div class="login-box">

<div class="logo">

🤖

</div>

<h2>AI Study Assistant</h2>

<p class="subtitle">

Student Login

</p>

<%
String error = (String)request.getAttribute("error");

if(error != null){
%>

<div class="error">

<%= error %>

</div>

<%
}
%>

<form action="login" method="post" onsubmit="return validateLogin();">

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
placeholder="Enter your password"
required>

<span class="toggle" onclick="togglePassword()">

👁️

</span>

</div>

</div>

<input
type="submit"
value="Login"
class="btn">

</form>

<div class="links">

<a href="register.jsp">

Create Account

</a>

<a href="#">

Forgot Password?

</a>

</div>

<div class="home">

<a href="index.jsp">

🏠 Back to Home

</a>

</div>

<div class="footer">

<p>

Developed using Java • JSP • Servlets • MySQL • Gemini API

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