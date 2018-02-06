package com.team.domain;

/**
 * Created by dllo on 18/2/5.
 */
public class Staff {
    private int staffId;
    private String staffName;
    private String staffPwd;

    public Staff() {
    }

    public Staff(String staffName, String staffPwd) {
        this.staffName = staffName;
        this.staffPwd = staffPwd;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staffId=" + staffId +
                ", staffName='" + staffName + '\'' +
                ", staffPwd='" + staffPwd + '\'' +
                '}';
    }

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffPwd() {
        return staffPwd;
    }

    public void setStaffPwd(String staffPwd) {
        this.staffPwd = staffPwd;
    }
}
