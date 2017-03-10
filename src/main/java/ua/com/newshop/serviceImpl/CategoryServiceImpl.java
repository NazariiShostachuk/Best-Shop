package ua.com.newshop.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import ua.com.newshop.entity.Category;
import ua.com.newshop.repository.CategoryRepository;
import ua.com.newshop.service.CategoryService;

import java.util.List;

/**
 * Created by MackGeeker on 16.11.2016.
 */
@Service
public class CategoryServiceImpl  implements CategoryService{

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> findOrderByName() {
        return  categoryRepository.findOrderByName();
    }

    public void save(Category category) {
            categoryRepository.save(category);
        }

    public List<Category> findAll() {
            return categoryRepository.findAll();
        }

    public Category findOne(int id) {
            return categoryRepository.findOne(id);
        }

    public void delete(int id) {
            categoryRepository.delete(id);
        }
    }

