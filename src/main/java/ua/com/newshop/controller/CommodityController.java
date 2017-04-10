package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.Commodity;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.SubCategoryService;

import javax.validation.Valid;

/**
 * Created by MackGeeker on 14.11.2016.
 */
@Controller
public class CommodityController {

    @Autowired
    private CommodityService commodityService;
    @Autowired
    private SubCategoryService subCategoryService;

    @RequestMapping(value = "/commodity", method = RequestMethod.GET)
    public String commodity(Model model) {
        model.addAttribute("commodities", commodityService.findAll());
        model.addAttribute("subcategories", subCategoryService.findAllfetch());
        model.addAttribute("commodity", new Commodity());
        return "commodity";
    }

    @RequestMapping(value = "/newCommodity", method = RequestMethod.POST)
    public String newCommodity(@ModelAttribute @Valid Commodity commodity,BindingResult bindingResult,
                               @RequestParam String subCategoryID,
                               @RequestParam MultipartFile commodityImage) {
        if(bindingResult.hasErrors()){
            return "commodity";
        }

        try {
            commodity.setSubCategory(subCategoryService.findOne(Integer.parseInt(subCategoryID)));
        } catch (Exception e) {
            return "commodity";
        }
            commodityService.save(commodity, commodityImage);
        return "redirect:/commodity";
    }

    @RequestMapping(value = "/editCommodity/{id}", method = RequestMethod.GET)
    public String editCommodity(@PathVariable String id, Model model) {
        Commodity commodity = commodityService.findOne(Integer.parseInt(id));
        model.addAttribute("commodityForEdit", commodity);
        return "editCommodity";
    }

    @RequestMapping(value = "/editCommodity/saveEditedCommodity/{id}", method = RequestMethod.POST)
    public String editComm(@PathVariable String id,
                           @RequestParam String newName,
                           @RequestParam String newDescription,
                           @RequestParam String newPrice,
                           @RequestParam String newQuantity,
                           @RequestParam MultipartFile newCommodityImage) {
        Commodity commodity = commodityService.findOne(Integer.parseInt(id));
        commodity.setName(newName);
        commodity.setDescription(newDescription);
        commodity.setPrice(Double.parseDouble(newPrice));
        commodity.setQuantity(Integer.parseInt(newQuantity));

        try {
            commodityService.save(commodity, newCommodityImage);
        } catch (Exception e) {
            return "error";
        }
        return "redirect:/commodity";
    }

    @RequestMapping(value = "/get_commodity", method = RequestMethod.GET)
    public String get_commodity(Model model) {
        model.addAttribute("commodities", commodityService.findAll());
        return "redirect:/commodity";
    }

    @RequestMapping(value = "/deleteCommodity/{id}", method = RequestMethod.GET)
    public String deleteCommodity(@PathVariable String id) {
        commodityService.delete(Integer.parseInt(id));
        return "redirect:/commodity";
    }


}

