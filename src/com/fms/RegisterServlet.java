package com.fms;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        int conNumber= Integer.parseInt(contact);
        String address = request.getParameter("address");
        String loginID = request.getParameter("loginID");

        HttpSession session = request.getSession(true);
        try{
            TravellerDAO traveller = new TravellerDAO();
            traveller.addUserDetail(name, email, loginID, password,address,conNumber);
            response.sendRedirect("Search.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
