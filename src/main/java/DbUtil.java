

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import com.mysql.jdbc.util.PropertiesDocGenerator;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DbUtil {

    private static Connection connection = null;

    public static Connection getConnection() throws IOException, ClassNotFoundException {
        if (connection != null)
            return connection;
        else {
            try {
                Properties prop = new Properties();
                // InputStream inputStream = DbUtil.class.getClassLoader().getResourceAsStream("/db.properties");
                prop.load(PropertiesDocGenerator.class.getResourceAsStream("/db.properties"));
                 String driver = prop.getProperty("driver");
                // String url = prop.getProperty("url");
                 String user = prop.getProperty("user");
                 String password = prop.getProperty("password");
                Class.forName(driver);
                // connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
                MysqlDataSource d = new MysqlDataSource();
                d.setUser(user);
                d.setPassword(password);
                d.setDatabaseName("student");
                connection = d.getConnection();
            }
              catch (SQLException e) {
                e.printStackTrace();
             } 
            return connection;
            }
        }

    } 
