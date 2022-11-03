as yet unclassified
increaseSalariesForDepartmentTemplate

	^ '
	package stored.procedures.in;

import java.sql.*;

public class IncreaseSalariesForDepartment {

    private static final String MYSQL_URL = "jdbc:mysql://localhost:3306/demo";
    private static final String USER = "student";
    private static final String PASSWORD = "student";

    private static final String CALL_INCREASE_SALARIES_FOR_DEPARTMENT
            = "{call increase_salaries_for_department(?, ?)}";

    private static final String SELECT_FROM_EMPLOYEES_WHERE_DEPARTMENT
            = "select * from employees where department=?";

    public static void main(String[] args) {

        String theDepartment = "Engineering";
        int theIncreaseAmount = 10000;

        Connection myConn = DriverManager.getConnection(MYSQL_URL, USER, PASSWORD);
        CallableStatement myStmt = myConn.prepareCall(CALL_INCREASE_SALARIES_FOR_DEPARTMENT);
        CallableStatement myStmt2 = myConn.prepareCall("{call increase_salaries_for_department(?, ?)}");

        try {

            System.out.println("Salaries BEFORE\n");
            showSalaries(myConn, theDepartment);

            myStmt.setString(1, theDepartment);
            myStmt.setDouble(2, theIncreaseAmount);

            // Call stored procedure
            System.out.println("\n\nCalling stored procedure.  increase_salaries_for_department(''"
                    + theDepartment + "'', " + theIncreaseAmount + ")");
            myStmt.execute();
            System.out.println("Finished calling stored procedure");

            System.out.println("\n\nSalaries AFTER\n");
            showSalaries(myConn, theDepartment);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static void showSalaries(Connection myConn, String theDepartment) {


        PreparedStatement myStmt = myConn.prepareStatement(SELECT_FROM_EMPLOYEES_WHERE_DEPARTMENT);

        try {

            myStmt.setString(1, theDepartment);

            try (ResultSet myRs = myStmt.executeQuery()) {

                while (myRs.next()) {
                    String lastName = myRs.getString("last_name");
                    String firstName = myRs.getString("first_name");
                    double salary = myRs.getDouble("salary");
                    String department = myRs.getString("department");

                    System.out.printf("%s, %s, %s, %.2f\n", lastName, firstName, department, salary);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
	'.