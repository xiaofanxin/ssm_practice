package com.skeyedu.service;

import com.skeyedu.pojo.Role;
import com.skeyedu.pojo.User;

import java.util.List;
import java.util.Set;

public interface RoleService {
    Set<String> listRoleName(String name);
    List<Role> listRoleByName(String name);
    List<Role> listRoleByUser(User user);
    List<Role> listRole();

    void addRole(Role role);
    void updateROle(Role role);
    void getRole(Integer id);
    void deleteRole(Integer id);


}
