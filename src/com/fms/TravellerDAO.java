package com.fms;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class TravellerDAO {
    Session session;
    Transaction t;
    Traveller traveller;
    public void addUserDetail(String name, String email, String loginID, String password,String address, int contact) {

        try {

            Configuration cfg = new Configuration();
            cfg.configure();

            SessionFactory factory = cfg.buildSessionFactory();


            session = factory.openSession();
            t = session.beginTransaction();
            traveller = new Traveller();
            traveller.setName(name);
            traveller.setEmail(email);
            traveller.setLoginID(loginID);
            traveller.setPassword(password);
            traveller.setAddress(address);
            traveller.setContact(contact);

            session.save(traveller);
            t.commit();
            System.out.println("\n\n Details Added \n");
        } catch (HibernateException e) {
            System.out.println(e.getMessage());
            System.out.println("error");
        }
        finally {
            session.close();
        }
    }
}
