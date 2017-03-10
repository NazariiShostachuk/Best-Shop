package ua.com.newshop.service;

import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.User;

import java.security.Principal;
import java.util.List;

/**
 * Created by MackGeeker on 14.11.2016.
 */
public interface UserService {

    void save(User user);

    List<User> findAll();

    User findOne(int id);

    void delete(int id);

    User findUserFetch(int id);

    void saveImage(Principal principal, MultipartFile multipartFile);

    void getOrder(Principal principal, String commodityId, String quantity);

    void deleteCommodityFromUser(Principal principal, String id);

}
