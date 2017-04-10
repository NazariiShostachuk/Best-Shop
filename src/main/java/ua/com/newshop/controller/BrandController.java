package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.com.newshop.entity.Category;
import ua.com.newshop.entity.SubCategory;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.SubCategoryService;

import java.util.*;

/**
 * Created by MackGeeker on 09.03.2017.
 */
@Controller
public class BrandController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private SubCategoryService subCategoryService;
    @Autowired
    private CommodityService commodityService;

    @RequestMapping(value = "/Meizu", method = RequestMethod.GET)
    public String meizuGet(Model model){
        model.addAttribute("AllCategories", categoryService.findAll());

        return "/Meizu" ;
    }

    @RequestMapping(value = "/Meizu", method = RequestMethod.POST)
    public String meizuPost(Model model,@ModelAttribute Category category){

        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(category.getName()));
        return "/Meizu" ;
    }

    @RequestMapping(value = "/Samsung", method = RequestMethod.GET)
    public String samsungGet(Model model){
        /*Виводимо всі категорії для того щоб передати в метод POST*/
        model.addAttribute("AllCategories", categoryService.findAll());
        return "/Samsung" ;
    }

    @RequestMapping(value = "/Samsung", method = RequestMethod.POST)
    public String samsungPost(Model model,@ModelAttribute Category category,@ModelAttribute SubCategory subCategory){

        model.addAttribute("commodities", commodityService.findCommodityFromSubCategoryById(subCategory.getId()));
        /*Виводимо всі категорії*/
        model.addAttribute("AllCategories", categoryService.findAll());
        /*Виводимо всі моделі обраного бренду*/
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(category.getName()));
        return "/Samsung" ;
    }

    @RequestMapping(value = "/Apple", method = RequestMethod.GET)
    public String appleGet(Model model){
        model.addAttribute("AllCategories", categoryService.findAll());
        String categoryName= "Meizu";
        model.addAttribute("AllValues", subCategoryService.findSubCategoryValuesFromCategory(categoryName));
        return "/Apple" ;
    }
    @RequestMapping(value = "/Apple/{id}", method = RequestMethod.GET)
    public String appleGetFull(@ModelAttribute Category category ,@ModelAttribute SubCategory subCategory , Model model, @PathVariable String id){
        category = categoryService.findOne(Integer.parseInt(id));

        model.addAttribute("SubCateg", category);
        model.addAttribute("AllValuesId", subCategoryService.findSubCategoryValuesFromCategoryById(Integer.parseInt(id)));
        return "redirect:/Apple" ;
    }
    @RequestMapping(value = "/allValuesFromSubCategory/{id}", method = RequestMethod.GET)
    public String appleGetVall( Model model, @PathVariable String id){

        model.addAttribute("AllFech", subCategoryService.findAllfetch());

        /*name of subCategory ~ Meizu, Apple*/
//        Category category = categoryService.findOne(Integer.parseInt(id));
        model.addAttribute("SubCateg", categoryService.findOne(Integer.parseInt(id)));
        /* Values from SubCategory ~ MX4, Iphone 5 */
        model.addAttribute("AllValuesId", subCategoryService.findSubCategoryValuesFromCategoryById(Integer.parseInt(id)));
        return "/search" ;
    }

    @RequestMapping(value = "/Xiaomi", method = RequestMethod.GET)
    public String xiaomi(Model model){
        String name = "Xiaomi";
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(name));
        return "/Xiaomi" ;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    @ResponseBody
    public String ajaxTest(Model model){
        String name = "Xiaomi";
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(name));
        return "/search" ;
    }
    @RequestMapping(value = "/searchs", method = RequestMethod.GET)
    public String Searchs(){
        return "/searchs";
    }



}
