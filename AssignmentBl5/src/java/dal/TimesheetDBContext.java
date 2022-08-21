/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import helper.DateTimeHelper;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import model.TimeSheet;

/**
 *
 * @author 84339
 */
public class TimesheetDBContext extends DBContext {

    ResultSet rs;

    public List<TimeSheetDTO> listTimeSheetDAO() throws SQLException {
        List<TimeSheetDTO> list = new ArrayList<>();
        String sql = 	"with r as (                                                                                                 "+
	"select                                                                                                      "+
	"e.eid,e.ename,o.name,                                                                                       "+
	"count(CASE WHEN coef = 1 THEN t.tid END) as totalT,                                                         "+
	"count(CASE WHEN coef = 2 THEN t.tid END) as totalCT,                                                        "+
	"count(CASE WHEN coef = 3 THEN t.tid END) as totalL,                                                         "+
	"(count(CASE WHEN coef = 1 THEN t.tid END)*1*s.salary + count(CASE WHEN coef = 2 THEN t.tid END)*2*s.salary  "+
	"+count(CASE WHEN coef = 3 THEN t.tid END)*3*s.salary) as sumsalary                                          "+
	"from Employee e join Office o                                                                               "+
	"on e.idOffice = o.id                                                                                        "+
	"join TimeSheet t on t.eid = e.eid                                                                           "+
	"join Offtime ot on ot.eid = e.eid                                                                           "+
	"join Salary s on s.eid = e.eid                                                                              "+
	"group by e.eid,o.name,e.ename,s.salary),                                                                    "+
	"s as (select eid,(case when osid = 1 then DATEDIFF(day,fromDate,toDate)+1 end) as totalKL,                  "+
	"isnull((case when osid = 2 then DATEDIFF(day,fromDate,toDate)+1 end),0) as totalCL,                         "+
	"isnull((case when osid = 3 then DATEDIFF(day,fromDate,toDate)+1 end),0) as totalNL                          "+
	"from Offtime )                                                                                              "+
	"select r.ename,r.name,r.totalT,r.totalCT,r.totalL,s.totalKL,s.totalCL,s.totalNL,r.sumsalary from r as r     "+
	"join s as s on r.eid = s.eid                                                                                 ";
        rs = getData(sql);
        while (rs.next()) {
            list.add(new TimeSheetDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),
                     rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getDouble(9)));
        }

        return list;
    }

    public static void main(String[] args) {
        TimeSheetDAO d = new TimeSheetDAO();
        List<TimeSheetDTO> list;
        try {
            list = d.listTimeSheetDAO();
            for (TimeSheetDTO timeSheetDTO : list) {
                System.out.println(timeSheetDTO);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TimeSheetDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
