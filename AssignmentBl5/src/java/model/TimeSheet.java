/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import helper.DateTimeHelper;
import java.util.Date;

/**
 *
 * @author 84339
 */
public class TimeSheet {
    private int tid;
    private int eid;
    private String checkin;
    private String checkout;
    private int coef;

    public TimeSheet() {
    }

    public TimeSheet(int tid, int eid, String checkin, String checkout, int coef) {
        this.tid = tid;
        this.eid = eid;
        this.checkin = checkin;
        this.checkout = checkout;
        this.coef = coef;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getCheckin() {
        return checkin;
    }

    public void setCheckin(String checkin) {
        this.checkin = checkin;
    }

    public String getCheckout() {
        return checkout;
    }

    public void setCheckout(String checkout) {
        this.checkout = checkout;
    }

    public int getCoef() {
        return coef;
    }

    public void setCoef(int coef) {
        this.coef = coef;
    }

    @Override
    public String toString() {
        return "TimeSheet{" + "tid=" + tid + ", eid=" + eid + ", checkin=" + checkin + ", checkout=" + checkout + ", coef=" + coef + '}';
    }
    
}
