package ua.com.newshop.service;

import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.Commodity;

import java.util.List;

/**
 * Created by MackGeeker on 14.11.2016.
 */
public interface CommodityService {

    void save(Commodity commodity, MultipartFile multipartFile);

    List<Commodity> findAll();

    Commodity findOne(int id);

    void delete(int id);

    Commodity findByName(String name);

    List<Commodity>findCommodityFromSubCategoryById(int id);



}