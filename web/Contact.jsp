<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 10/8/2017
  Time: 1:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact</title>
    <link href="css/main.css" rel="stylesheet">
    <style>
        .right{
            margin-top : 50px;
            margin-left: 350px;
            float:right;
        }


        .message{

            height: 100px;
            width: 300px;
            color: #080400;
            border-radius: 6px;
            background: rgba(200, 200, 200, 0.85);
            margin-left: 35px;


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
            <li><a href="login.jsp">Login</a></li>
            <li><a href="Search.jsp">Book</a></li>
            <li><a href="Contact.jsp">Contact Us</a></li>
            <%
                HttpSession httpSession = request.getSession(false);
                String name = (String) httpSession.getAttribute("name");
                String buttonText;
                if(name!=null){
                    buttonText = "Logout";
                }
                else{
                    buttonText="Login";
                    name = "GuestUser";
                }
            %>
            <li><span class="userName"><%= name %></span></li><div class="dropdown"><img class="userLogo" src="images/Userlogo.png">
            <div class="dropdown-content"><a href="logout.jsp">
                <%= buttonText%></a></div></div>
        </ul>
    </div>

    <div class="bottom">
        <div class="left">
            <h2><span style="color: #7a2d1f;font-size: 1.3em;font-family: Brush Script MT">Fly High</span> Airways<br>
                <span style="font-family: 'Monotype Corsiva';font-size: .6em; display: block; float: right">Anyone Can FLY</span>
            </h2>
        </div>
        <div class="right">

            <form method="post" action="">
                <fieldset>
                    <ul>
                        <h3>Contact Us</h3>
                        <br>
                        <hr><br>

                        <li><input type="text" name="name" placeholder="Name" required></li><br>

                        <li><input type="email" name="email" placeholder="Email" required></li><br>

                        <li><textarea maxlength="50" class="message" placeholder="Messsage"></textarea></li><br>
                        <li><input type="submit" value="SEND"></li><br>
                    </ul>
                </fieldset>
            </form>

        </div>



    </div>
</div>
</body>
</html>
