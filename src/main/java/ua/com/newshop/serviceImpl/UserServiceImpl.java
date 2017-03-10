package ua.com.newshop.serviceImpl;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import ua.com.newshop.entity.Commodity;
import ua.com.newshop.entity.User;
import ua.com.newshop.repository.CommodityRepository;
import ua.com.newshop.repository.UserRepository;
import ua.com.newshop.service.UserService;

import javax.management.relation.Role;
import java.io.File;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

/**
 * Created by MackGeeker on 14.11.2016.
 */
@Service("userDetailsService")
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CommodityRepository commodityRepository;

    @Autowired
    private BCryptPasswordEncoder encoder;

    public void save(User user) {
        user.setRole(ua.com.newshop.entity.Role.ROLE_USER);
        user.setPassword(encoder.encode(user.getPassword()));
        userRepository.save(user);
    }


    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User findOne(int id) {
        return userRepository.findOne(id);
    }

    public void delete(int id) {
        userRepository.delete(id);
    }

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findUserByUsername(username);
    }


    public void saveImage(Principal principal, MultipartFile multipartFile) {

        User user = userRepository.findOne(Integer.parseInt(principal.getName()));

        String path = System.getProperty("catalina.home")+"/resources/"
                + user.getOriginUsername() + "/" + multipartFile.getOriginalFilename();

        user.setPathImage("resources/"+user.getOriginUsername() + "/"
                + multipartFile.getOriginalFilename());

        File file = new File(path);

        try {
            file.mkdirs();
            try {
                FileUtils.cleanDirectory
                        (new File(System.getProperty("catalina.home")+"/resources/" + user.getOriginUsername() + "/"));
            } catch (IOException e) {
                e.printStackTrace();
            }
            multipartFile.transferTo(file);
        } catch (IOException e) {
            System.out.println("error with file");
        }
        userRepository.save(user);
    }
    @Transactional
    public void getOrder(Principal principal, String commodityId, String quantity) {

        User user = userRepository.findfetchUser(Integer.parseInt(principal.getName()));

        Commodity commodity = commodityRepository.findOne(Integer.parseInt(commodityId));

        int number = Integer.parseInt(quantity);

        commodity.setQuantity(commodity.getQuantity() - number);

        user.getCommodities().add(commodity);

        userRepository.save(user);

    }
    public User findUserFetch(int id) {
        return userRepository.findfetchUser(id);
    }

    @Transactional
    public void deleteCommodityFromUser(Principal principal, String id) {
        User user = userRepository.findfetchUser(Integer.parseInt(principal.getName()));

        Commodity commodity = commodityRepository.findOne(Integer.parseInt(id));

        user.getCommodities().remove(commodity);

        userRepository.save(user);

    }


}

