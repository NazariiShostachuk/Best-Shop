package ua.com.newshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.newshop.entity.Commodity;

/**
 * Created by MackGeeker on 14.11.2016.
 */
public interface CommodityRepository extends JpaRepository<Commodity, Integer> {
    Commodity findByName(String name);
}
