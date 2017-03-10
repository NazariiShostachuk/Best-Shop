package ua.com.newshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.newshop.entity.User;

/**
 * Created by MackGeeker on 14.11.2016.
 */
public interface UserRepository extends JpaRepository<User, Integer> {

    User findUserByUsername(String username);

    @Query(value = "select u from User u left join fetch u.commodities c where u.id =:id")
    User findfetchUser(@Param("id") int id);

    @Query(value = "select u from User u left join fetch u.commodities c where u.id =:id")
    User findOrderByUsername(@Param("id") int id);



}