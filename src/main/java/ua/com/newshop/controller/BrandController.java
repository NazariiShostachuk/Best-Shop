package ua.com.newshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.Category;
import ua.com.newshop.entity.Commodity;
import ua.com.newshop.entity.SubCategory;
import ua.com.newshop.service.CategoryService;
import ua.com.newshop.service.CommodityService;
import ua.com.newshop.service.SubCategoryService;

import javax.validation.Valid;
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

    @RequestMapping(value = "/cat{cid}", method = RequestMethod.GET)
    public String cat(Model model,@PathVariable String cid){
        /* Get Category name, id */
        model.addAttribute("Category", categoryService.findOne(Integer.parseInt(cid)));
        /* View ALL Categories in Sidebar */
        model.addAttribute("allCategories", categoryService.findAll());
        /* Get All SubCategories from Category*/
        model.addAttribute("AllValuesFromCatById", subCategoryService.findSubCategoryValuesFromCategoryById(Integer.parseInt(cid)));
        return "/cat" ;
    }

    @RequestMapping(value = "/cat{cid}/scat{id}", method = RequestMethod.GET)
    public String catSubCat(@ModelAttribute SubCategory subCategory ,
                            Model model,
                            @PathVariable String id,
                            @PathVariable String cid){
        /* Get Category name and id */
        model.addAttribute("CatName", categoryService.findOne(Integer.parseInt(cid)));
        /* Get SubCategory name and id */
        model.addAttribute("subCatName", subCategoryService.findOne(Integer.parseInt(id)));
        /* View in Sidebar All Categories */
        model.addAttribute("allCategories", categoryService.findAll());
        /* View All Values From Category */
        model.addAttribute("AllCommodityValuesId", commodityService.findCommodityFromSubCategoryById(Integer.parseInt(id)));
        return "/subcat" ;
    }

    @RequestMapping(value = "/cat{cid}/scat{sid}/comm{commid}del", method = RequestMethod.GET)
    public String deleteCommodity(@PathVariable String cid,@PathVariable String sid,@PathVariable String commid) {

        commodityService.delete(Integer.parseInt(commid));

        return "redirect:/cat{cid}/scat{sid}";
    }

    @RequestMapping(value = "/cat{cid}/scat{sid}/comm{commid}edit", method = RequestMethod.GET)
    public String editCommodity(@PathVariable String cid,@PathVariable String sid,@PathVariable String commid, Model model) {

        model.addAttribute("pathImage",commodityService.findOne(Integer.parseInt(commid)).getPathToImage());
        Commodity commodity = commodityService.findOne(Integer.parseInt(commid));
        model.addAttribute("EditedCommodity", commodity);
        return "/editCommodity";
    }

    @RequestMapping(value = "/cat{cid}/scat{sid}/saveEditedCommodity/{commid}", method = RequestMethod.POST)
    public String editComm(@PathVariable String cid,
                           @PathVariable String sid,
                           @PathVariable String commid,
                           @RequestParam String newName,
                           @RequestParam String newDescription,
                           @RequestParam String newPrice,
                           @RequestParam String newQuantity,
                           @RequestParam MultipartFile newCommodityImage) {

        Commodity commodity = commodityService.findOne(Integer.parseInt(commid));
        commodity.setName(newName);
        commodity.setDescription(newDescription);
        commodity.setPrice(Double.parseDouble(newPrice));
        commodity.setQuantity(Integer.parseInt(newQuantity));



        try {
            commodityService.save(commodity, newCommodityImage);
        } catch (Exception e) {
            return "error";
        }
        return "redirect:/cat{cid}/scat{sid}";
    }

}