package ua.com.newshop.serviceImpl;


import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.Commodity;
import ua.com.newshop.entity.User;
import ua.com.newshop.repository.CommodityRepository;
import ua.com.newshop.service.CommodityService;

import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.File;
import java.io.IOException;
import java.util.List;
/**
 * Created by MackGeeker on 14.11.2016.
 */
@Service
public class CommodityServiceImpl implements CommodityService{

    @Autowired
    private CommodityRepository commodityRepository;


    public void save(Commodity commodity, MultipartFile multipartFile) {

        String path = System.getProperty("catalina.home")+"/resources/" + commodity.getId() + commodity.getName() + "/" + multipartFile.getOriginalFilename();

        commodity.setPathToImage("resources/"+commodity.getId()+commodity.getName() + "/" + multipartFile.getOriginalFilename());
        File file = new File(path);

        try {
            file.mkdirs();
            try {
                FileUtils.cleanDirectory
                        (new File(System.getProperty("catalina.home")+"/resources/" + commodity.getId() + commodity.getName() + "/"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println("error with file");
        }
        commodityRepository.save(commodity);
    }
    public List<Commodity> findAll() {
        return commodityRepository.findAll();
    }

    public List<Commodity>findCommodityFromSubCategoryById(int id){return commodityRepository.findCommodityFromSubCategoryById(id);}

    public Commodity findOne(int id) {
        return commodityRepository.findOne(id);
    }

    public void delete(int id) {
        commodityRepository.delete(id);
    }

    public Commodity findByName(String name) {
        return commodityRepository.findByName(name);
    }


}
