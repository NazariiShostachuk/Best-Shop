package ua.com.newshop.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.newshop.entity.SubCategory;
import ua.com.newshop.repository.SubCategoryRepository;
import ua.com.newshop.service.SubCategoryService;

import java.util.List;

/**
 * Created by MackGeeker on 16.11.2016.
 */
@Service
public class SubCategoryServiceImpl implements SubCategoryService{

    @Autowired
    private SubCategoryRepository subCategoryRepository;


    public void save(SubCategory subCategory) {
        subCategoryRepository.save(subCategory);
    }


    public List<SubCategory> findAll() {
        return subCategoryRepository.findAll();
    }


    public List<SubCategory> findAllfetch() {
        return subCategoryRepository.findSubCategoryFetch();
    }


    public SubCategory findOne(int id) {
        return subCategoryRepository.findOne(id);
    }


    public void delete(int id) {
        subCategoryRepository.delete(id);
    }


    public SubCategory findByName(String name) {
        return subCategoryRepository.findByName(name);
    }

    public List<SubCategory> findSubCategoryValuesFromCategory(String name){
        return subCategoryRepository.findSubCategoryValuesFromCategory(name);}
}


