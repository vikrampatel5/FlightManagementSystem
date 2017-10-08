<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/30/2017
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        *{
            margin:0px;
            padding: 0px;
        }
        .top{
            height: 7%;
            width: 100%;
            float: left;
            background-color: rgba(123, 19, 0, 0.69);
        }
        .top ul li{
            list-style: none;
            display: inline-block;
            float: left;
            margin-top: 10px;
            margin-left: 170px;
        }
        a,a:visited{
            color: #fff400;
            text-decoration: none;
            font-family: 'MS Reference Sans Serif', verdana, arial, sans-serif;
        }
        a:hover{
            color: white;

        }
        .bottom{
            width: 100%;
            height: 80%;
            float: left;
            display: flex;
            align-items: flex-start;
            justify-content:flex-start;

        }

        .main{
            width: 100%;
            height: 100%;
        }

        .bottom ul li{
            font-size: 1.3em;
            color: #f9ffdb;
            list-style: none;
        }
        label{
            margin-left: 35px;
        }
        input,select{
            border-radius: 6px;
            height: 30px;
            width: 300px;
            margin-left: 35px;
        }
        input[type="submit"]{
            background-color: #0a2c91;
            border: none;
            width: 150px;
            justify-content: center;
            margin-left: 100px;
            margin-bottom: 35px;
            box-shadow:0px 0 10px #cde0ff;
            color: white;
        }
        fieldset{
            border:0px solid #ffffff;
            border-radius:8px;
            box-shadow:0 0 15px #110080;
            height: auto;
            width: 380px;
            background: rgba(3, 244, 122, 0.08);
            margin-left: 50px;
            margin-top: 50px;
        }
        h2{
            font-size: 3em;
            color: white;
            font-family: monospace;
            margin-top: 50px;
            margin-left: 200px;
        }
        h3{
            color: #f9ffdb;
            text-align: center;
            padding-right: 50px;
            font-size: 1.5em;
            margin-top: 20px;
        }

    </style>
</head>
<body background="BookBG.jpg">
<div class="main">
    <div class="top">
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="index.jsp">Register</a></li>
            <li><a href="login.jsp"#>Login</a></li>
            <li><a href="Search.jsp">Book</a></li>
            <li><a href="#">Contact Us</a></li>

        </ul>
    </div>
    <div class="bottom">

        <form method="post" action="/LoginServlet">

            <fieldset>
                <ul>
                    <h3>Login</h3>
                    <br>
                    <hr><br>
                    <li><label>UserName:</label></li>
                    <li><input type="text" name="username" placeholder="UserName" required></li><br>
                    <li><label>Password:</label></li>
                    <li><input type="password" name="password" placeholder="abC123" required></li><br>
                    <li><input type="submit" value="LOGIN"></li><br>
                </ul>
            </fieldset>
        </form>
        <h2><span style="color: #7a2d1f;font-size: 1.3em;font-family: Brush Script MT">Fly High</span> Airways<br>
            <span style="font-family: 'Monotype Corsiva';font-size: .6em; display: block; float: right">Anyone Can FLY</span>
        </h2>

    </div>

</body>
</html>
