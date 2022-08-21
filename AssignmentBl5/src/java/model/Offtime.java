/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 84339
 */
public class Offtime {
    private int rid;
    private int eid;
    private String fromDate;
    private String toDate;

    public Offtime() {
    }

    public Offtime(int rid, int eid, String fromDate, String toDate) {
        this.rid = rid;
        this.eid = eid;
        this.fromDate = fromDate;
        this.toDate = toDate;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getFromDate() {
        return fromDate;
    }

    public void setFromDate(String fromDate) {
        this.fromDate = fromDate;
    }

    public String getToDate() {
        return toDate;
    }

    public void setToDate(String toDate) {
        this.toDate = toDate;
    }

    @Override
    public String toString() {
        return "rid=" + rid + ", eid=" + eid + ", fromDate=" + fromDate + ", toDate=" + toDate ;
    }
    
    
    
}

