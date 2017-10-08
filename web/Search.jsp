<%--
  Created by IntelliJ IDEA.
  User: Vikram
  Date: 9/29/2017
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.HttpSession"%>

<html>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="css/main.css" rel="stylesheet">
    <style>

        h2{
            font-size: 3em;
            color: white;
            font-family: monospace;
            margin-top: 50px;
            margin-left: 200px;
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

    </style>
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