package com.skeyedu.dao.user;

import com.skeyedu.pojo.RolePermission;

import java.util.List;

public interface RolePermissionDao {
    List<RolePermission> selectListRolePermissionByRID(Long rid);

    void deleteByPrimaryKey(Long id);
    void insertRolePermission(RolePermission rolePermission);

}
