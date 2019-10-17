package com.skeyedu.service.impl;

import com.skeyedu.dao.member.MemberDao;
import com.skeyedu.dao.user.UserDao;
import com.skeyedu.pojo.Member;
import com.skeyedu.pojo.MemberSearchParam;
import com.skeyedu.pojo.User;
import org.springframework.stereotype.Service;

import com.skeyedu.service.UserService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Resource
    private MemberDao memberDao;

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

    @Override
    public Map<String, Object> getMemberList(MemberSearchParam memberSearchParam) {

        memberSearchParam.openPage();
        List<Member> memberList = memberDao.queryList(memberSearchParam);
        Integer count = memberDao.queryCount(memberSearchParam);
        Map<String, Object> resp = new HashMap<>();
        resp.put("total", count);
        resp.put("rows", memberList);
        return resp;
    }
}
