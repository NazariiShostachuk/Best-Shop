package ua.com.newshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.newshop.entity.Category;
import ua.com.newshop.entity.SubCategory;

import java.util.List;

/**
 * Created by MackGeeker on 15.11.2016.
 */
public interface CategoryRepository extends JpaRepository<Category, Integer> {

    @Query("select cat from Category cat join fetch cat.subCategories sc")
    List<Category> findCategoryFetch();

    @Query("SELECT cat FROM Category cat ORDER BY name")
    List<Category> findOrderByName();



}
