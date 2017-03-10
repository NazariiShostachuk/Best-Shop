package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.newshop.entity.User;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.UserService;

import java.security.Principal;

/**
 * Created by MackGeeker on 14.11.2016.
 */
@Controller
public class HomeController {
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String home(Model model){
        model.addAttribute("commodities", commodityService.findAll());
        model.addAttribute("categ", categoryService.findAll());
        model.addAttribute("categs", categoryService.findOrderByName());

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username


        model.addAttribute("username", name);
        if (name.equals("anonymousUser") || name.equals("admin")){
            System.out.println("anonim");
        }else {
            User user = userService.findUserFetch(Integer.parseInt(name));
            model.addAttribute("usrname", userService.findOne(Integer.parseInt(name)));
            model.addAttribute("userscp", user);
        }
        return "home";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(){
        return "admin";
    }
}