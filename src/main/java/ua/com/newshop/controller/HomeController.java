package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.com.newshop.entity.Commodity;
import ua.com.newshop.entity.SubCategory;
import ua.com.newshop.entity.User;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.SubCategoryService;
import ua.com.newshop.service.UserService;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

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
    private SubCategoryService subCategoryService;
    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String home(Model model){
        model.addAttribute("commodities", commodityService.findAll());
        model.addAttribute("categ", categoryService.findAll());
        model.addAttribute("categs", categoryService.findOrderByName());


        String apple= "Apple";
        model.addAttribute("AllSubCategoriesFromApple", subCategoryService.findSubCategoryValuesFromCategory(apple));


        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = auth.getName(); //get logged in username
        /*User name in navBar*/
        model.addAttribute("username", name);
        if (name.equals("anonymousUser") || name.equals("admin")){
            System.out.println("anonim");
        }else {
            model.addAttribute("usrname", userService.findOne(Integer.parseInt(name)));
            model.addAttribute("userscp", userService.findUserFetch(Integer.parseInt(name)));
        }
        return "home";
    }

}