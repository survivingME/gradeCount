package org.service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.connection.Conn;
import org.model.Course;
import org.model.User;
/**
 * Created by trembleguy on 2017/9/10.
 */
public class UserService {
    private Connection conn;
    private PreparedStatement pstmt;

    public UserService() {
        super();
        // TODO Auto-generated constructor stub
        conn=new Conn().getConn();
    }

    public boolean validUser(User user){
        try {
            pstmt=conn.prepareStatement("select * from user where username=?and password=?");
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
            ResultSet rst=pstmt.executeQuery();
            if(rst.next()){
                return true;
            }else{
                return false;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();

            return false;
        }
    }
}
