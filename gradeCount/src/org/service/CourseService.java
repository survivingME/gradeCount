package org.service;

import java.sql.*;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList;

import org.connection.Conn;
import org.model.Course;
/**
 * Created by trembleguy on 2017/9/11.
 */
public class CourseService {
    private Connection conn;
    private PreparedStatement pstmt;

    public String addCou(Course course) {
        try {
            int cno = 0;
            conn = new Conn().getConn();
            PreparedStatement pstmt1 = conn.prepareStatement("select max(cno) from Course");
            ResultSet rs = pstmt1.executeQuery();
            if(rs.next()) {
                cno = Integer.valueOf(rs.getString(1)) + 1;
            }
            pstmt = conn.prepareStatement("insert into Course values(?, ?, ?, ?)");
            pstmt.setString(1, String.valueOf(cno));
            pstmt.setString(2, course.getCname());
            pstmt.setString(3, course.getIsRequired());
            if(course.getCredit().matches("-?[0-9]+\\.?[0-9]*")) {
                pstmt.setString(4, course.getCredit());
            } else {
                return "学分输入有错，只能是数字";
            }
            pstmt.executeUpdate();
            conn.close();
            return "success";
        } catch (SQLException ex) {
            return "数据库出错" + ex.getMessage();
        }
    }

    public String updateCou(Course course) {
        try {
            conn = new Conn().getConn();
            pstmt = conn.prepareStatement("update Course set cname=?, isRequired=?, credit=? where cno=?");
            pstmt.setString(4, course.getCno());
            pstmt.setString(1, course.getCname());
            pstmt.setString(2, course.getIsRequired());
            if(course.getCredit().matches("-?[0-9]+\\.?[0-9]*")) {
                pstmt.setString(3, course.getCredit());
            } else {
                return "学分输入有错，只能是数字";
            }
            pstmt.executeUpdate();
            conn.close();
            return "success";
        } catch (SQLException ex) {
            return "数据库错误:" + ex.getMessage();
        }
    }

    public List getAllCourse() {
        List couList = new ArrayList();
        try {
            conn = new Conn().getConn();
            pstmt = conn.prepareStatement("select * from Course");
            ResultSet rst = pstmt.executeQuery();
            while(rst.next()) {
                Course cou = new Course();
                cou.setCno(rst.getString(1));
                cou.setCname(rst.getString(2));
                cou.setIsRequired(rst.getString(3));
                cou.setCredit(rst.getString(4));
                couList.add(cou);
            }
            conn.close();
            return couList;
        } catch (SQLException ex) {
            Course cou = new Course();
            cou.setCno("no");
            cou.setCname("no");
            cou.setIsRequired("no");
            cou.setCredit("no");
            couList.add(cou);
            return couList;
        }
    }

    public boolean deleteCou(String cno) {
        try {
            conn = new Conn().getConn();
            pstmt = conn.prepareStatement("delete from Course where cno = ?");
            pstmt.setString(1, cno);
            pstmt.executeUpdate();
            conn.close();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public Course getCouByCno(String cno) {
        try {
            conn = new Conn().getConn();
            pstmt = conn.prepareStatement("select * from Course where cno=?");
            pstmt.setString(1, cno);
            ResultSet rst = pstmt.executeQuery();
            if(rst.next()) {
                Course cou = new Course();
                cou.setCno(rst.getString(1));
                cou.setCname(rst.getString(2));
                cou.setIsRequired(rst.getString(3));
                cou.setCredit(rst.getString(4));
                conn.close();
                return cou;
            }
            return null;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public String getRequired() {
        try {
            conn = new Conn().getConn();
            pstmt = conn.prepareStatement("select sum(credit) from Course where isRequired = 'yes'");
            ResultSet rst = pstmt.executeQuery();
            String result;
            if(rst.next()) {
                result = rst.getString(1);
                conn.close();
                return result;
            } else {
                return null;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public String getNoRequired() {
        try {
            conn = new Conn().getConn();
            pstmt = conn.prepareStatement("select sum(credit) from Course where isRequired = 'no'");
            ResultSet rst = pstmt.executeQuery();
            String result;
            if(rst.next()) {
                result = rst.getString(1);
                conn.close();
                return result;
            } else {
                return null;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    /*public static void main(String[] args) {
        CourseService cs = new CourseService();
        Course course = new Course();
        course.setCno("10");
        course.setCname("测试用例");
        course.setIsRequired("yes");
        course.setCredit("4.5");
        System.out.println(cs.addCou(course));
    }*/

}
