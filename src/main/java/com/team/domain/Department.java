package com.team.domain;

import java.util.ArrayList;

/**
 * Created by dllo on 18/2/6.
 */
public class Department {
    private int depId;
    private String depName;
    private int chiefld;
    private ArrayList<Staff> staffs;

    public ArrayList<Staff> getStaffs() {
        return staffs;
    }

    public void setStaffs(ArrayList<Staff> staffs) {
        this.staffs = staffs;
    }

    public Department() {
    }

    public Department(String depName, int chiefld) {
        this.depName = depName;
        this.chiefld = chiefld;
    }

    @Override
    public String toString() {
        return "Department{" +
                "depId=" + depId +
                ", depName='" + depName + '\'' +
                ", chiefld=" + chiefld +
                '}';
    }

    public int getDepId() {
        return depId;
    }

    public void setDepId(int depId) {
        this.depId = depId;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }

    public int getChiefld() {
        return chiefld;
    }

    public void setChiefld(int chiefld) {
        this.chiefld = chiefld;
    }
}
