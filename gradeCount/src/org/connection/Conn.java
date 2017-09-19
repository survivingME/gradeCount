package org.connection;

import java.sql.*;
/**
 * Created by trembleguy on 2017/9/10.
 */
public class Conn {
    public Connection getConn()  {
        Connection conn;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://127.0.0.1/gradeCount?useUnicode=true&characterEncoding=utf-8&useSSL=false";
            String user="root";
            String password="123456";
            conn=DriverManager.getConnection(url, user, password);

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }
        return conn;
    }
}
