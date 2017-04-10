package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.newshop.entity.Category;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.SubCategoryService;

/**
 * Created by MackGeeker on 23.03.2017.
 */
@Controller
public class AdminController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private SubCategoryService subCategoryService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {

        /*Creating new category*/
        model.addAttribute("newCategory", new Category());
        /*View ALL Categories*/
        model.addAttribute("allCategories", categoryService.findAll());

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

    @RequestMapping(value = "/newCategory", method = RequestMethod.POST)
    public String newCategory(@ModelAttribute Category category) {
        categoryService.save(category);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/deleteCategory/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable String id){
        categoryService.delete(Integer.parseInt(id));
        return "redirect:/admin";
    }

}
