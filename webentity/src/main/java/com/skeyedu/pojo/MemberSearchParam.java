package com.skeyedu.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

public class MemberSearchParam implements Serializable {
    private Integer roleId;
    private Integer page;
    private Integer rows;
    private String userName;
    private String realName;
    private String mobile;
    private Boolean isPage;
    private Integer form;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private String beginTime;

    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private String endTime;

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Boolean page) {
        isPage = page;
    }

    public Integer getForm() {
        return form;
    }

    public void setForm(Integer form) {
        this.form = form;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void openPage(){
        isPage = true;
        form = (this.getPage() - 1) * this.getRows();
    }

    @Override
    public String toString() {
        return "MemberSearchParam{" +
                "roleId=" + roleId +
                ", page=" + page +
                ", rows=" + rows +
                ", username='" + userName + '\'' +
                ", realName='" + realName + '\'' +
                ", mobile='" + mobile + '\'' +
                ", isPage=" + isPage +
                ", form=" + form +
                ", beginTime='" + beginTime + '\'' +
                ", endTime='" + endTime + '\'' +
                '}';
    }
}
