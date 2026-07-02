<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.devpathak.model.User"%>

<%
User user = (User) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}

String question = (String) request.getAttribute("question");
String answer = (String) request.getAttribute("answer");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>AI Study Assistant</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:linear-gradient(135deg,#0f172a,#1e3a8a,#2563eb);
height:100vh;
display:flex;
justify-content:center;
align-items:center;
padding:20px;

}

.container{

width:100%;
max-width:850px;
background:white;
border-radius:18px;
overflow:hidden;
box-shadow:0 20px 50px rgba(0,0,0,.25);

}

.header{

background:#2563eb;
color:white;
padding:22px;
text-align:center;

}

.header h2{

font-size:28px;
margin-bottom:5px;

}

.header p{

opacity:.9;

}

.chat-area{

height:420px;
overflow-y:auto;
padding:25px;
background:#f8fafc;

}

.message{

margin-bottom:20px;
display:flex;
flex-direction:column;

}

.user{

align-items:flex-end;

}

.bot{

align-items:flex-start;

}

.bubble{

padding:15px 18px;
border-radius:15px;
max-width:80%;
line-height:1.7;
font-size:15px;
word-wrap:break-word;

}

.user .bubble{

background:#2563eb;
color:white;
border-bottom-right-radius:4px;

}

.bot .bubble{

background:white;
border:1px solid #ddd;
color:#333;
border-bottom-left-radius:4px;

}

.label{

font-size:13px;
margin-bottom:5px;
font-weight:600;
color:#555;

}

.form-box{

padding:20px;
background:white;
border-top:1px solid #ddd;

}

.input-group{

display:flex;
gap:10px;

}

input[type=text]{

flex:1;
padding:15px;
border:1px solid #ccc;
border-radius:12px;
font-size:15px;
outline:none;
transition:.3s;

}

input[type=text]:focus{

border-color:#2563eb;
box-shadow:0 0 10px rgba(37,99,235,.2);

}

button{

background:#2563eb;
color:white;
border:none;
padding:15px 30px;
border-radius:12px;
cursor:pointer;
font-size:15px;
font-weight:600;
transition:.3s;

}

button:hover{

background:#1d4ed8;
transform:translateY(-2px);

}

.footer{

display:flex;
justify-content:space-between;
align-items:center;
padding:18px 20px;
background:#f8fafc;
border-top:1px solid #ddd;

}

.dashboard{

text-decoration:none;
background:#16a34a;
color:white;
padding:10px 20px;
border-radius:10px;
font-weight:600;
transition:.3s;

}

.dashboard:hover{

background:#15803d;

}

.username{

font-weight:600;
color:#2563eb;

}

.empty{

text-align:center;
padding-top:120px;
color:#888;
font-size:18px;

}

@media(max-width:700px){

.chat-area{

height:350px;

}

.input-group{

flex-direction:column;

}

button{

width:100%;

}

}

</style>

</head>

<body>

<div class="container">

<div class="header">

<h2>🤖 AI Study Assistant</h2>

<p>Ask any study-related question and get instant AI answers.</p>

</div>

<div class="chat-area" id="chatArea">

<%
if(question==null){
%>

<div class="empty">

<h3>👋 Welcome <%=user.getName()%></h3>

<br>

<p>Start chatting with your AI Study Assistant.</p>

</div>

<%
}else{
%>

<div class="message user">

<div class="label">You</div>

<div class="bubble">

<%=question%>

</div>

</div>

<div class="message bot">

<div class="label">AI Assistant</div>

<div class="bubble">

<%=answer%>

</div>

</div>

<%
}
%>

</div>

<div class="form-box">

<form action="chat" method="post">

<div class="input-group">

<input
type="text"
name="question"
placeholder="Type your study question..."
required
autocomplete="off"
autofocus>

<button type="submit">

Ask AI

</button>

</div>

</form>

</div>

<div class="footer">

<div class="username">

👤 <%=user.getName()%>

</div>

<a href="dashboard.jsp" class="dashboard">

🏠 Dashboard

</a>

</div>

</div>

<script>

const chat=document.getElementById("chatArea");

chat.scrollTop=chat.scrollHeight;

</script>

</body>

</html>