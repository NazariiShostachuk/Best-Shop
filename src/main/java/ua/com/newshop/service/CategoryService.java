package ua.com.newshop.service;

import org.springframework.data.domain.Sort;
import ua.com.newshop.entity.Category;

import java.util.List;

/**
 * Created by MackGeeker on 16.11.2016.
 */
public interface CategoryService {

    List <Category> findOrderByName();

    void save(Category category);

    List<Category> findAll();

    Category findOne(int id);

    void delete(int id);

}