<%--
  Created by IntelliJ IDEA.
  User: Vikram
  Date: 9/29/2017
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.fms.Traveller"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<html>
    <link href="style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
        .top{
            width: 100%;
            height: 7%;
            float: left;
            background-color: rgba(123, 19, 0, 0.69);

        }
        .top ul li{
            list-style: none;
            display: inline-block;
            float: left;
            margin-top: 10px;
            margin-left: 150px;
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
        h3{
            color: #f9ffdb;
            text-align: center;
            padding-right: 50px;
            font-size: 1.5em;
            margin-top: 20px;
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
        .userLogo{
            height: 90%;
            width: auto;
            margin-top: 2px;
            margin-left: 5px;
            text-align: center;
            margin-right: 10px;
            float: left;
            overflow: auto;
        }
        .userName{
            float: right;
            margin-right: 0px;
            text-align: right;
        }

    </style>
<body background="BookBG.jpg">
    <div class="main">
        <div class="top">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="index.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="Search.jsp">Book</a></li>
                <li><a href="#">Contact Us</a></li>
                <%
                    HttpSession httpSession = request.getSession(true);
                %>
                <li><span class="userName"><%= httpSession.getAttribute("name") %></span></li><img class="userLogo" src="images/Userlogo.png">
                <li><button class="logOutButton">Logout</button></li>
            </ul>
        </div>
        <div class="bottom">
            <br>
            <form id="info" method="post" action="Book.jsp">
                <fieldset>
                <ul>
                    <h3>Search Flights</h3>
                    <br>
                    <hr><br>
                    <li><label>From</label></li>
                    <li><input list="cities" name="source" type="text" placeholder="Source" required/></li><br>
                    <li><label>To</label></li>
                    <li><input list="cities" name="destination" type="text" placeholder="Destination" required/></li><br>
                    <li><label>Journey Date</label></li>
                    <li><input type="date" required/></li><br>
                    <li><label>Class</label></li>
                    <li><select>
                        <option>Economy</option>
                        <option>Business</option>
                        <option>Premium</option>
                    </select></li><br><br>
                    <li><input type="submit" value="Search"></li>
                    <datalist id="cities">
                        <option value="Indore">
                        <option value="Bhopal">
                        <option value="Gwalior">
                        <option value="Jabalpur">
                        <option value="Mumbai">
                        <option value="New Delhi">
                        <option value="Chennai">
                        <option value="Pune">
                        <option value="Banglore">

                    </datalist>
                </ul>
                </fieldset>
            </form>
            <h2><span style="color: #7a2d1f;font-size: 1.3em;font-family: Brush Script MT">Fly High</span> Airways<br>
                <span style="font-family: 'Monotype Corsiva';font-size: .6em; display: block; float: right">Anyone Can FLY</span>
            </h2>

        </div>
    </div>
</body>
</html>