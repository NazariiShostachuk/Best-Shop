package ua.com.newshop.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.*;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.SubCategoryService;
import ua.com.newshop.service.UserService;

import javax.validation.Valid;



/**
 * Created by MackGeeker on 23.03.2017.
 */
@Controller
public class AdminController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private SubCategoryService subCategoryService;
    @Autowired
    private CommodityService commodityService;
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {

        /*Creating new Category*/
        model.addAttribute("newCategory", new Category());
        /*Creating new SubCategory */
        model.addAttribute("subCategory", new SubCategory());
        /*Creating new Commodity*/
        model.addAttribute("newCommodity", new Commodity());

        /*View ALL Categories*/
        model.addAttribute("allCategories", categoryService.findAll());
        /*View ALL SubCategories*/
        model.addAttribute("AllSubCategories", subCategoryService.findAllfetch());
        /*View ALL Commodities*/
        model.addAttribute("AllCommodities", commodityService.findAll());

        model.addAttribute("ComById", commodityService.findCommodityFromSubCategoryById(1));

        /*Search all SubCategories From: ******* */
        String apple= "Apple";
        model.addAttribute("AllValuesFromApple", subCategoryService.findSubCategoryValuesFromCategory(apple));

        String meizu= "Meizu";
        model.addAttribute("AllValuesFromMeizu", subCategoryService.findSubCategoryValuesFromCategory(meizu));

        String samsung= "Samsung";
        model.addAttribute("AllValuesFromSamsung", subCategoryService.findSubCategoryValuesFromCategory(samsung));

        String xiaomi= "Xiaomi";
        model.addAttribute("AllValuesFromXiaomi", subCategoryService.findSubCategoryValuesFromCategory(xiaomi));

        String nokia= "Nokia";
        model.addAttribute("AllValuesFromNokia", subCategoryService.findSubCategoryValuesFromCategory(nokia));

        return "/admin";
    }

    @RequestMapping(value = "/setRoleAdmin{id}", method = RequestMethod.GET)
    public String setRoll(@PathVariable String id, Model model){
        User user = userService.findOne(Integer.parseInt(id));
        user.setRole(Role.ROLE_USER_ADMIN);
        model.addAttribute("loll", user);
        return "redirect:/admin/users";
    }

    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String GetRole(Model model){
        model.addAttribute("allUsers",userService.findAll());

        return "/users";
    }

    @RequestMapping(value = "/admin/users/{id}", method = RequestMethod.GET)
    public String GetUserSpecs(Model model, @PathVariable String id){

        model.addAttribute("userSpecs", userService.findOne(Integer.parseInt(id)));
        model.addAttribute("userSpecsRole", userService.findOne(Integer.parseInt(id)).getRole());

        return "/user";
    }

    @RequestMapping(value = "/newCategory", method = RequestMethod.POST)
    public String newCategory(@ModelAttribute Category category) {
        categoryService.save(category);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/newSubCategory", method = RequestMethod.POST)
    public String newSubCategory(@ModelAttribute SubCategory subCategory,
                                 @RequestParam String categoryID){
        subCategory.setCategory(categoryService.findOne(Integer.parseInt(categoryID)));
        subCategoryService.save(subCategory);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/deleteCategory/{id}", method = RequestMethod.GET)
    public String deleteCategory(@PathVariable String id){
        categoryService.delete(Integer.parseInt(id));
        return "redirect:/admin";
    }

    @RequestMapping(value = "/deleteSubCategory/{id}", method = RequestMethod.GET)
    public String deleteSubCategory(@PathVariable String id){
        subCategoryService.delete(Integer.parseInt(id));
        return "redirect:/admin";
    }

}