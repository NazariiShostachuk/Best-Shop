package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.SubCategoryService;

/**
 * Created by MackGeeker on 09.03.2017.
 */
@Controller
public class BrandController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private SubCategoryService subCategoryService;

    @RequestMapping(value = "/Meizu", method = RequestMethod.GET)
    public String meizu(Model model){
        String name = "Meizu";
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(name));
        return "/Meizu" ;
    }

    @RequestMapping(value = "/Apple", method = RequestMethod.GET)
    public String apple(Model model){
        String name = "Apple";
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(name));
        return "/Apple" ;
    }

    @RequestMapping(value = "/Samsung", method = RequestMethod.GET)
    public String samsung(Model model){
        String name = "Samsung";
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(name));
        return "/Samsung" ;
    }

    @RequestMapping(value = "/Xiaomi", method = RequestMethod.GET)
    public String xiaomi(Model model){
        String name = "Xiaomi";
        model.addAttribute("oneCatValues", subCategoryService.findSubCategoryValuesFromCategory(name));
        return "/Xiaomi" ;
    }



}
