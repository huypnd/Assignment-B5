/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author 84339
 */
public class TimeSheetDTO {

    private String nameEmployee;
    private String nameOffice;
    private int totalNT;
    private int totalCT;
    private int totalNl;
    private int totalKL;
    private int totalCL;
    private int totalNL;
    private double salary;

    public TimeSheetDTO() {
    }

    public TimeSheetDTO(String nameEmployee, String nameOffice, int totalNT, int totalCT, int totalNl, int totalKL, int totalCL, int totalNL, double salary) {
        this.nameEmployee = nameEmployee;
        this.nameOffice = nameOffice;
        this.totalNT = totalNT;
        this.totalCT = totalCT;
        this.totalNl = totalNl;
        this.totalKL = totalKL;
        this.totalCL = totalCL;
        this.totalNL = totalNL;
        this.salary = salary;
    }

   

    public String getNameEmployee() {
        return nameEmployee;
    }

    public void setNameEmployee(String nameEmployee) {
        this.nameEmployee = nameEmployee;
    }

    public String getNameOffice() {
        return nameOffice;
    }

    public void setNameOffice(String nameOffice) {
        this.nameOffice = nameOffice;
    }

    public int getTotalNT() {
        return totalNT;
    }

    public void setTotalNT(int totalNT) {
        this.totalNT = totalNT;
    }

    public int getTotalCT() {
        return totalCT;
    }

    public void setTotalCT(int totalCT) {
        this.totalCT = totalCT;
    }

    public int getTotalNl() {
        return totalNl;
    }

    public void setTotalNl(int totalNl) {
        this.totalNl = totalNl;
    }

    public int getTotalKL() {
        return totalKL;
    }

    public void setTotalKL(int totalKL) {
        this.totalKL = totalKL;
    }

    public int getTotalCL() {
        return totalCL;
    }

    public void setTotalCL(int totalCL) {
        this.totalCL = totalCL;
    }

    public int getTotalNL() {
        return totalNL;
    }

    public void setTotalNL(int totalNL) {
        this.totalNL = totalNL;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "TimeSheetDTO{" + "nameEmployee=" + nameEmployee + ", nameOffice=" + nameOffice + ", totalNT=" + totalNT + ", totalCT=" + totalCT + ", totalNl=" + totalNl + ", totalKL=" + totalKL + ", totalCL=" + totalCL + ", totalNL=" + totalNL + ", salary=" + salary + '}';
    }

    

}
