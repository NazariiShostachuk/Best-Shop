package ua.com.newshop.validators;

import org.springframework.stereotype.Component;

/**
 * Created by MackGeeker on 17.11.2016.
 */
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ua.com.newshop.entity.Commodity;
import ua.com.newshop.service.CommodityService;

public class CommodityValidator implements Validator {

    private final CommodityService commodityService;

    public CommodityValidator(CommodityService commodityService) {
        super();
        this.commodityService = commodityService;
    }

    public boolean supports(Class<?> o) {
        return o.equals(Commodity.class);
    }


    public void validate(Object o, Errors errors) {


        Commodity commodity = (Commodity) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name","", "name.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description","", "description.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price","", "price.empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "quantity","", "quantity.empty");

        if (commodityService.findByName(commodity.getName()) != null) {
            errors.rejectValue("name", "", "already exist");
        }
    }
}
