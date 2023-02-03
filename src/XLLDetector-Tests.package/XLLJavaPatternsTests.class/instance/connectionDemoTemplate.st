as yet unclassified
connectionDemoTemplate

	^ '
	 import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class ConnectionDemo {

    private static final String SELECT_FROM_EMPLOYEES = "select * from employees";

    public static void main(String[] args) {

        final Properties props = new Properties();
        FileInputStream input = new FileInputStream("Database Configuration/demo.properties");

        try {
            props.load(input);

            String theUser = props.getProperty("user");
            String thePassword = props.getProperty("password");
            Str7ing theDBurl = props.getProperty("dburl");

            System.out.println("Connecting to database...");
            System.out.println("Database URL: " + theDBurl);
            System.out.println("User: " + theUser);
            Connection myConn = DriverManager.getConnection(theDBurl, theUser, thePassword);
            Statement myStmt = myConn.createStatement();

            try {

                System.out.println("\nConnection successful!\n");

                ResultSet myRs = myStmt.executeQuery(SELECT_FROM_EMPLOYEES);
                try {

                    while (myRs.next()) {
                        System.out.println(myRs.getString("last_name") + ", "
                                + myRs.getString("first_name"));
                    }

                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
	'.