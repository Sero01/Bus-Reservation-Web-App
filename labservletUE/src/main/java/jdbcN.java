import java.util.*;
import java.sql.*;
public class jdbcN {
        public static void main(String[] args) {

                String driverName = "com.mysql.cj.jdbc.Driver";
                String connectionUrl = "jdbc:mysql://localhost:3306/";
                String dbName = "bus";
                String userId = "root";
                String password = "Rootpass@123";
                try {
                        Class.forName(driverName);
                } catch (ClassNotFoundException e) {
                        e.printStackTrace();
                }
                try {
                        Connection conn = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                        Statement statement = conn.createStatement();
                        String query = "select * from bus";
                        ResultSet resultSet = statement.executeQuery(query);
                        while (resultSet.next()) {
                                System.out.println(resultSet.getString("Source"));
                        }


                } catch (Exception e) {
                        System.out.println(e);;
                }
        }

}