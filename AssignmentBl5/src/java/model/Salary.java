/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 84339
 */
public class Salary {
    private int sid;
    private int eid;
    private int salary;

    public Salary() {
    }

    public Salary(int sid, int eid, int salary) {
        this.sid = sid;
        this.eid = eid;
        this.salary = salary;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Salary{" + "sid=" + sid + ", eid=" + eid + ", salary=" + salary + '}';
    }
    
}
