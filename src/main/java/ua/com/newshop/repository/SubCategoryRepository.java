package ua.com.newshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.newshop.entity.SubCategory;

import java.util.List;

/**
 * Created by MackGeeker on 16.11.2016.
 */
public interface SubCategoryRepository extends JpaRepository<SubCategory, Integer> {


    @Query("select sc from SubCategory sc join fetch sc.category c")
    List<SubCategory> findSubCategoryFetch();

    @Query("select sc from SubCategory sc where sc.name =:name")
    SubCategory findByName(@Param(value = "name") String name);

    @Query("SELECT sc FROM SubCategory sc join fetch sc.category c where c.name=:name")
    List<SubCategory> findSubCategoryValuesFromCategory(@Param(value = "name") String name);

//    @Query("select sc from SubCategory sc join fetch sc.category where sc.category.name like:name")
  //  List<SubCategory> findSubCategoryValuesFromCategory(String name);

}