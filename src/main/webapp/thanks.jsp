<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thanks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #e0f7fa, #f1f8e9);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            max-width: 700px;
            width: 90%;
            background: #fff;
            border-radius: 12px;
            padding: 40px 30px;
            box-shadow: 0 6px 14px rgba(0,0,0,0.15);
            text-align: center;
            display: flex;
            flex-direction: column;
        }
        .logo img {
            height: 90px;
            margin-bottom: 20px;
        }
        h1 {
            color: #00796b;
            font-size: 28px;
            margin-bottom: 25px;
        }
        .info {
            text-align: left;
            margin: 0 auto 30px auto;
            width: 100%;
            max-width: 500px;
            background: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
        }
        .info p {
            margin: 10px 0;
            font-size: 16px;
            line-height: 1.5;
        }
        .info p span {
            font-weight: bold;
            color: #00796b;
        }
        .back-link {
            margin-top: auto;
        }
        .back-link a {
            display: block;
            width: 100%;
            padding: 15px 0;
            background: #00796b;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
            border-radius: 8px;
            transition: background 0.3s ease;
        }
        .back-link a:hover {
            background: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">
            <img src="images/murachlogo.jpg" alt="Murach Logo">
        </div>
        <h1>Thanks for submitting the survey!</h1>
        <div class="info">
            <p><span>First Name:</span> <%= request.getParameter("firstName") %></p>
            <p><span>Last Name:</span> <%= request.getParameter("lastName") %></p>
            <p><span>Email:</span> <%= request.getParameter("email") %></p>
            <p><span>Date of Birth:</span> <%= request.getParameter("dob") %></p>
            <p><span>Heard From:</span> <%= request.getParameter("heardFrom") %></p>
            <p><span>Wants Updates:</span> <%= request.getParameter("updates") %></p>
            <p><span>Email OK:</span> <%= request.getParameter("emailOK") %></p>
            <p><span>Contact Via:</span> <%= request.getParameter("contactVia") %></p>
        </div>
        <div class="back-link">
            <a href="index.html">← Back to Survey</a>
        </div>
    </div>
</body>
</html>
