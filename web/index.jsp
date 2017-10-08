
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Flight Management System</title>
    <link href="css/main.css" rel="stylesheet">
    <style>

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
        label{
            margin-left: 35px;
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

        <form method="post" action="/RegisterServlet">
            <fieldset>
                <ul>
                    <h3>Registration</h3>
                    <br>
                    <hr><br>
                    <li><label>Name:</label></li>
                    <li><input type="text" name="name" placeholder="Name" required></li><br>
                    <li><label>Email:</label></li>
                    <li><input type="email" name="email" placeholder="abc@gmail.com" required></li><br>
                    <li><label>LoginID</label></li>
                    <li><input type="text" name="loginID" placeholder="abc123" required></li><br>
                    <li><label>Password:</label></li>
                    <li><input type="password" name="password" placeholder="abC123" required></li><br>
                    <li><label>Address:</label></li>
                    <li><input type="text" name="address" placeholder="38,abc..." required></li><br>
                    <li><label>Contact:</label></li>
                    <li><input type="number" name="contact"></li><br>
                    <li><input type="submit" value="REGISTER"></li><br>
                </ul>
            </fieldset>
        </form>
        <h2><span style="color: #7a2d1f;font-size: 1.3em;font-family: Brush Script MT">Fly High</span> Airways<br>
            <span style="font-family: 'Monotype Corsiva';font-size: .6em; display: block; float: right">Anyone Can FLY</span>
        </h2>

    </div>
</body>
</html>
