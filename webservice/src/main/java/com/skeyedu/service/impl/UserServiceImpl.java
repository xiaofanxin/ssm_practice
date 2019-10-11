package java.com.skeyedu.service.impl;

import com.skeyedu.pojo.User;
import org.springframework.stereotype.Service;

import java.com.skeyedu.service.UserService;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Override
    public List<User> getUserList() {
        return null;
    }

    @Override
    public User getUserById(Integer userId) {
        return null;
    }

    @Override
    public Integer updateUser(User user) {
        return null;
    }

    @Override
    public User getUserByName(String username) {
        return null;
    }
}
