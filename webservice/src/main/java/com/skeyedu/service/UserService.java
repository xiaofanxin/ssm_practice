package com.skeyedu.service;

import com.skeyedu.pojo.MemberSearchParam;
import com.skeyedu.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface UserService {

    /**
     * 查询所有用户信息
     * @return
     */
    List<User> getUserList();

    /**
     * 查询当前用户信息
     * @param userId
     * @return
     */
    User getUserById(Integer userId);

    /**
     * 更新用户信息
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

    /**
     * 后台获取会员列表
     * @param memberSearchParam
     * @return
     */
    Map <String, Object> getMemberList(MemberSearchParam memberSearchParam);

}
