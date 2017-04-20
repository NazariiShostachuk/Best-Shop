package ua.com.newshop.service;

import ua.com.newshop.entity.SubCategory;

import java.util.List;

/**
 * Created by MackGeeker on 16.11.2016.
 */
public interface SubCategoryService {

    void save(SubCategory subCategory);

    List<SubCategory> findAll();

    List<SubCategory> findAllfetch();

    SubCategory findOne(int id);

    void delete(int id);

    SubCategory findByName(String name);

    List<SubCategory> findSubCategoryValuesFromCategory(String name);

    List<SubCategory> findSubCategoryValuesFromCategoryById(int id);

}