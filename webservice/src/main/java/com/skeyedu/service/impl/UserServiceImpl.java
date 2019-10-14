package com.skeyedu.service.impl;

import com.skeyedu.dao.user.UserDao;
import com.skeyedu.pojo.User;
import org.springframework.stereotype.Service;

import com.skeyedu.service.UserService;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

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
        return userDao.getUserByName(username);
    }
}
