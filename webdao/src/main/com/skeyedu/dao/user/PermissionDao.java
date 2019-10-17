package com.skeyedu.dao.user;

import com.skeyedu.pojo.Permission;

import java.util.List;

public interface PermissionDao {
    Permission selectByPrimaryKey(Long id);

    List<Permission> selectPermissionLIst();

    void updatePermission(Permission permission);
    void insertPermission(Permission permission);
    void deletePermission(Long id);



}
