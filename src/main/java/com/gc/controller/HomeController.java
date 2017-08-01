package com.gc.controller;

/**
 * Created by fhani on 7/21/2017.
 */
import com.gc.models.ItemsEntity;
import com.gc.models.UserinfoEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld()
    {
        ArrayList<ItemsEntity> itemsList = getAllItems();

        return new ModelAndView("welcome", "cList", itemsList);

    }


    @RequestMapping("/add-user-info")
    //the String method returns the jsp page that we want to show
    public String registration() {

        return "registration";
    }


    @RequestMapping ("/success")

    public String addUserInfo (@RequestParam("firstName")String firstName, @RequestParam("lastName") String lastName,
                               @RequestParam("email")String email, @RequestParam("phoneNumber")String number,
                               @RequestParam("userName")String userName, @RequestParam("password")String password) {


        //Configuration allows app to specify properties and mapping documents
        //to use when creating SessionFactory
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory();

        Session session = sessionFact.openSession();

        Transaction tx = session.beginTransaction();

        UserinfoEntity newUser = new UserinfoEntity();

        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setEmail(email);
        newUser.setPhoneNumber(number);
        newUser.setUserName(userName);
        newUser.setPassword(password);


        session.save(newUser);
        tx.commit();
        session.close();


        return "summary";
    }


//    @RequestMapping("/list-items")
//
//    public ModelAndView listItems(){
//        ArrayList<ItemsEntity> itemsList = getAllItems();
//
//
//        return new ModelAndView("welcome", "cList", itemsList);
//    }

    // this method was extracted to be used again
    // this is a regular method not a Request Mapping/Controller method
    private ArrayList<ItemsEntity> getAllItems() {

        //Configuration allows app to specify properties and mapping documents
        //to use when creating SessionFactory
        Configuration cfg = new Configuration().configure("hibernate.cfg.xml");

        SessionFactory sessionFact = cfg.buildSessionFactory();

        Session selectItems = sessionFact.openSession();

        selectItems.beginTransaction();

        //criteria is used to create the query
        Criteria c = selectItems.createCriteria(ItemsEntity.class);

        return (ArrayList<ItemsEntity>) c.list();
    }

}
