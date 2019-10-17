package com.skeyedu.dao.user;

import com.skeyedu.pojo.Role;

import java.util.List;

public interface RoleDao {
    Role selectByPrimaryKey(Integer id);
    List<Role> selectRoleList();

    void insertRole(Role role);
    void updateRole(Role role);
    void deleteRoleByID(Integer id);

}
