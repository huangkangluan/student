package com.huang.student;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by Administrator on 2016/8/23.
 */
public class MySQL {
    private static String user="root";
    private static String password="hzit";
    private static String url="jdbc:mysql://localhost:3306/picture_manage";
    public static void main(String[] args) throws Exception {

          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection(url,user,password);
          System.out.println(con);
    }
}
