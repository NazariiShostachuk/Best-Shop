package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.com.newshop.entity.Category;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.SubCategoryService;

import java.security.Principal;

/**
 * Created by MackGeeker on 15.11.2016.
 */
@Controller
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private SubCategoryService subCategoryService;
    @Autowired
    private CommodityService commodityService;

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String category(Model model) {
        model.addAttribute("category", new Category());
        model.addAttribute("categories", categoryService.findAll());
        return "category";
    }

    @RequestMapping(value = "/category/{cid}", method = RequestMethod.GET)
    public String cat(Model model,@PathVariable String cid){
        model.addAttribute("commodities", commodityService.findAll());
        /* Get Category name, id */
        model.addAttribute("Category", categoryService.findOne(Integer.parseInt(cid)));
        /* View ALL Categories in Sidebar */
        model.addAttribute("allCategories", categoryService.findAll());
        /* Get All SubCategories from Category*/
        model.addAttribute("AllValuesFromCatById", subCategoryService.findSubCategoryValuesFromCategoryById(Integer.parseInt(cid)));
        return "category" ;
    }

//    @RequestMapping(value = "/newCategory", method = RequestMethod.POST)
//    public String newCategory(@ModelAttribute Category category) {
//        categoryService.save(category);
//        return "/admin";
//    }

//    @RequestMapping(value = "/deleteCategory/{id}", method = RequestMethod.GET)
//    public String delete(@PathVariable String id){
//        categoryService.delete(Integer.parseInt(id));
//        return "redirect:/category";
//    }

    @RequestMapping(value = "/get_category", method = RequestMethod.GET)
    public String get_category(Model model) {
        model.addAttribute("categories", categoryService.findAll());
        return "redirect:/home";
    }


//    @RequestMapping(value = "/getOrder", method = RequestMethod.POST)
//    public String getOrder(Principal principal, @RequestParam String commodityId,
//                           @RequestParam String quantity){
//
//        userService.getOrder(principal, commodityId, quantity);
//
//        return "redirect:/home";
//    }

}