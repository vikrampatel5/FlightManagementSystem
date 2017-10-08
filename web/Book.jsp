<%--
  Created by IntelliJ IDEA.
  User: Vikram
  Date: 9/29/2017
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link href="css/main.css" rel="stylesheet">
    <style>
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
        h2{
            font-size: 3em;
            color: white;
            font-family: monospace;
            margin-top: 50px;
            margin-left: 200px;
        }

        .flight {
            margin: 10px;
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
            <form id="info" method="post" onsubmit="return validate();">
                <fieldset>
                <ul>
                    <h3>Available Flights</h3>
                    <br>
                    <hr><br>
                    <li class="flight">Flight &nbsp;&nbsp;&nbsp;Soruce&nbsp;&nbsp;&nbsp;Destination&nbsp;&nbsp;&nbsp;Fare&nbsp;&nbsp;&nbsp;</li>
                    <hr>
                    <%
                        try {
                            String connectionURL = "jdbc:mysql://localhost:3306/flightmanagement";
                            Connection con = null;
                            ResultSet rs = null;

                            String source = request.getParameter("source");
                            String destination = request.getParameter("destination");

                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            con = DriverManager.getConnection(connectionURL, "root", "vikram");
                            String selectQuery = "select * from Flight where Source = '"+source+"'and destination = '"+destination+"'";
                            PreparedStatement stmt=con.prepareStatement(selectQuery);


                            rs = stmt.executeQuery(selectQuery);
                            while(rs.next()){
                                %>
                             <li class="flight"><%= rs.getString("ModelName")%>&nbsp;&nbsp;&nbsp;<%= rs.getString("Source")%>&nbsp;&nbsp;&nbsp;
                                 <%= rs.getString("Destination")%>&nbsp;&nbsp;&nbsp;
                                 <%= rs.getString("Fare")%>&nbsp;&nbsp;&nbsp;<a href="addDetail.jsp" class="book">Book</a></li>
                            <%
                            }
                        }

                        catch(Exception e){
                            System.out.println(e);
                    }
                    %>
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