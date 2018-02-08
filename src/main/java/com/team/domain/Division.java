package com.team.domain;

import java.util.ArrayList;

/**
 * Created by dllo on 18/2/8.
 */
public class Division {
    private int dsid;
    private String dsname;
    private ArrayList<User> users;

    public ArrayList<User> getUsers() {
        return users;
    }

    public void setUsers(ArrayList<User> users) {
        this.users = users;
    }

    public Division(String dsname) {
        this.dsname = dsname;
    }

    public Division() {
    }

    @Override
    public String toString() {
        return "Division{" +
                "dsid=" + dsid +
                ", dsname='" + dsname + '\'' +
                '}';
    }

    public int getDsid() {
        return dsid;
    }

    public void setDsid(int dsid) {
        this.dsid = dsid;
    }

    public String getDsname() {
        return dsname;
    }

    public void setDsname(String dsname) {
        this.dsname = dsname;
    }
}
