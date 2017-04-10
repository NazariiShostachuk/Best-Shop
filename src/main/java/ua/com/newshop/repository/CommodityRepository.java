package ua.com.newshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.newshop.entity.Commodity;

import java.util.List;

/**
 * Created by MackGeeker on 14.11.2016.
 */
public interface CommodityRepository extends JpaRepository<Commodity, Integer> {
    Commodity findByName(String name);

    @Query("SELECT cm FROM Commodity cm join fetch cm.subCategory sb where sb.id=:id")
    List<Commodity> findCommodityFromSubCategoryById(@Param(value = "id") int id);

}
