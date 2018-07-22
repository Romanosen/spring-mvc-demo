package com.luv2code.springdemo;

import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    //need a controller method to show form

    @RequestMapping("/showForm")
    public String showForm()
    {
        return "helloworld-form";
    }

    //method to process form
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    // new a controller method to read form data and
    // add data to the model

    @RequestMapping("/processFormVersion2")
    public String letShoutDude(HttpServletRequest request, Model model)
    {
        //read the request paramether
        String theName=request.getParameter("studentName");
        //convert data to uppercase
        theName=theName.toUpperCase();
        //create message
        String rezult="Yo "+theName+" !";
        //add message to the model
        model.addAttribute("message",rezult);
        return "helloworld";
    }


    @RequestMapping("/processFormVersionThree")
    public String processFormVersion3(
            @RequestParam("studentName") String theName,  Model model)
    {

        //convert data to uppercase
        theName=theName.toUpperCase();
        //create message
        String rezult="Hey my friend from v3 "+theName+" !";
        //add message to the model
        model.addAttribute("message",rezult);
        return "helloworld";
    }


}
