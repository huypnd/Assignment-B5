/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 84339
 */
public class Employee {
    private  int eid;
    private String ename;
    private int idOffice;

    public Employee() {
    }

    public Employee(int eid, String ename, int idOffice) {
        this.eid = eid;
        this.ename = ename;
        this.idOffice = idOffice;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public int getIdOffice() {
        return idOffice;
    }

    public void setIdOffice(int idOffice) {
        this.idOffice = idOffice;
    }

    @Override
    public String toString() {
        return  "eid=" + eid + ", ename=" + ename + ", idOffice=" + idOffice ;
    }
    
    
}

