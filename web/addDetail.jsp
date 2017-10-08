<%--
  Created by IntelliJ IDEA.
  User: Vikram
  Date: 9/29/2017
  Time: 5:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    .table{
        color: white;
        border : none;
        border-spacing: 1.1em;
    }
    .table th{
        font-size: 1.2em;
        color: #fff400;
    }
    .table td{
        text-align: center;
        margin-top: 20px;
        text-shadow: white;
    }
    .table input[type="text"]{
        height: 20px;
        width: 200px;
    }
    .table input[type="number"],.table select{
        height: auto;
        width: 70px;
    }
    .table input[type="submit"]{
        text-align:center;
        vertical-align:middle;
        background-color: #0a2c91;
        border: none;
        width: 100px;
        height: 30px;
        box-shadow:0px 0 10px #cde0ff;
        color: white;
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
        <form id="info" method="post" onsubmit="return redirect(this);">
            <fieldset>
                <h3 style="margin-left: 50px">Add Passenger Detail</h3>
                <table class="table">
                    <tr>
                        <th>S.No.</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><input type="text" placeholder="Name"></td>
                        <td><input type="number" placeholder="Age"></td>
                        <td><select>
                                <option>Male</option>>
                                <option>Female</option>
                            </select>
                        </td>

                    </tr>
                    <tr>
                        <td>2</td>
                        <td><input type="text" placeholder="Name"></td>
                        <td><input type="number" placeholder="Age"></td>
                        <td><select>
                            <option>Male</option>>
                            <option>Female</option>
                        </select>
                        </td>

                    </tr>
                    <tr>
                        <td>3</td>
                        <td><input type="text" placeholder="Name"></td>
                        <td><input type="number" placeholder="Age"></td>
                        <td><select>
                            <option>Male</option>>
                            <option>Female</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><input type="text" placeholder="Name"></td>
                        <td><input type="number" placeholder="Age"></td>
                        <td><select>
                            <option>Male</option>>
                            <option>Female</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><input type="text" placeholder="Name"></td>
                        <td><input type="number" placeholder="Age"></td>
                        <td><select>
                            <option>Male</option>>
                            <option>Female</option>
                        </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4"><input type="submit"></td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <h2><span style="color: #7a2d1f;font-size: 1.3em;font-family: Brush Script MT">Fly High</span> Airways<br>
            <span style="font-family: 'Monotype Corsiva';font-size: .6em; display: block; float: right">Anyone Can FLY</span>
        </h2>

    </div>
</div>
</body>
</html>