package com.skeyedu.service;

import com.skeyedu.pojo.Permission;
import com.skeyedu.pojo.Role;

import java.util.List;
import java.util.Set;

public interface PermissionService {

    Set<String> listPermissionName(String name);
    List<Permission> getPermissionListByRole(Role role);
    List<Permission> getPermissionList();
    void addPermission(Permission permission);
    Permission getPermissionByID(Long id);
    void updatePermission(Permission permission);
    void daletePermission(Long id);
    boolean nrrfInterceptor(String requestURL);
    Set<String> listPermissionURLs(String userName);
}
