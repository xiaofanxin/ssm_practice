package com.skeyedu.dao.user;

import com.skeyedu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    /**
     * 查询所有用户
     * @return
     */
    List<User> getUserList();

    /**
     * 根据userId查询用户
     * @param userId
     * @return
     */
    User getUserById(@Param("userId") Integer userId);

    /**
     * 更新某个用户
     * @param user
     * @return
     */
    Integer updateUser(User user);

    /**
     * 根据用户名查询用户信息
     * @param username
     * @return
     */
    User getUserByName(String username);
}
