package com.fms;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

public class LoginServlet extends HttpServlet {
    HttpSession httpSession;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try{

            httpSession = request.getSession(true);
            Configuration cfg = new Configuration();
            cfg.configure();

            SessionFactory factory = cfg.buildSessionFactory();
            Session session = factory.openSession();
            Transaction t = session.beginTransaction();

            Query query = session.createQuery("from Traveller where loginID = ? and password = ?");
            query.setParameter(0, username);
            query.setParameter(1, password);

            List<Traveller> list = query.list();
            Iterator itr = list.iterator();
            if(list.size()>0){
                Traveller traveller = (Traveller) itr.next();
                String name = traveller.getName();
                httpSession.setAttribute("name",name);
               // System.out.println(tu.getName());
                response.sendRedirect("Search.jsp");
            }
            else {
                JOptionPane.showMessageDialog(null, "Login Error!!");

            }
        }catch(Exception e){
            e.printStackTrace();
        }

    }

}
