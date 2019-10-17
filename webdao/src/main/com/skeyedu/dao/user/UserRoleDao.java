package com.skeyedu.dao.user;

import com.skeyedu.pojo.UserRole;

import java.util.List;

public interface UserRoleDao {
    List<UserRole> getUserRoleByUID(Integer uid);

    void deleteByPrimaryKey(Integer id);
    void insertUserRole(UserRole userRole);


}
