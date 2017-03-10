package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.User;
import ua.com.newshop.service.UserService;

import java.security.Principal;

/**
 * Created by MackGeeker on 14.11.2016.
 */
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model)
    {
        model.addAttribute("user", new User());
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String signUp(@ModelAttribute User user){
        try {
            userService.save(user);
        }catch (Exception e){
            return "error";
        }

        return "redirect:/home";
    }

    @RequestMapping(value = "/logout" , method = RequestMethod.POST)
    public String logout(){
        return "redirect:/";
    }


    @RequestMapping(value = "/home", method = RequestMethod.POST)
    public String loginprocesing(){
        return "redirect:/home";
    }
//    @RequestMapping(value = "/home", method = RequestMethod.GET)
//    public String uaserSpec(Model model, Principal principal){
//        User user = userService.findUserFetch(Integer.parseInt(principal.getName()));
//        model.addAttribute("user", user);
//        return "home";
//
//    }
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(Model model, Principal principal){
        User user = userService.findUserFetch(Integer.parseInt(principal.getName()));
        model.addAttribute("user", user);
        return "profile";
    }

    @RequestMapping(value = "/saveImage", method = RequestMethod.POST)
    public String saveImage(Principal principal,
                            @RequestParam MultipartFile image){

        userService.saveImage(principal, image);

        return "redirect:/profile";
    }
    @RequestMapping(value = "/getOrder", method = RequestMethod.POST)
    public String getOrder(Principal principal, @RequestParam String commodityId,
                           @RequestParam String quantity){

        userService.getOrder(principal, commodityId, quantity);

        return "redirect:/home";
    }

    @RequestMapping(value = "/deleteCommodityFromUser/{id}", method = RequestMethod.GET)
    public String deleteCommodityFromUser(Principal principal, @PathVariable String id){

        userService.deleteCommodityFromUser(principal, id);

        return "redirect:/profile";
    }





}
