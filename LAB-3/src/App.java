import java.sql.*;

public class App {
    public static void main(String[] args) throws Exception {
        // MySQL connection URL targeting your COLLEGE schema
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/COLLEGE", "root", "mydevsql");

        PreparedStatement ps = con.prepareStatement("Insert into student values(?,?,?,?)");
        
        
        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            System.out.println(">>> CONNECTION CREATED SUCCESSFULLY! <<<\n");

            // 1. INSERT A RECORD
            // Wrap column name in backticks because of the space/dot in "ROLL NO."
            String insertSql = "INSERT INTO STUDENT (`ROLL NO.`, NAME, ADDRESS, AGE) VALUES (?, ?, ?, ?)";
            try (PreparedStatement insertStmt = conn.prepareStatement(insertSql)) {
                insertStmt.setInt(1, 101);
                insertStmt.setString(2, "Rahul");
                insertStmt.setString(3, "123 Tech Street");
                insertStmt.setInt(4, 21);

                int rowsInserted = insertStmt.executeUpdate();
                System.out.println("Inserted " + rowsInserted + " student record(s).\n");
            } catch (SQLException e) {
                System.out.println("Note: Record might already exist (or check MySQL error): " + e.getMessage());
            }

            // 2. FETCH AND DISPLAY DATA IN TERMINAL
            String selectSql = "SELECT * FROM STUDENT";
            try (Statement selectStmt = conn.createStatement();
                 ResultSet rs = selectStmt.executeQuery(selectSql)) {

                System.out.println("---- STUDENT TABLE DATA ----");
                while (rs.next()) {
                    int rollNo = rs.getInt("ROLL NO.");
                    String name = rs.getString("NAME");
                    String address = rs.getString("ADDRESS");
                    int age = rs.getInt("AGE");

                    System.out.printf("Roll No: %d | Name: %s | Address: %s | Age: %d%n", 
                                      rollNo, name, address, age);
                }
                System.out.println("----------------------------");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}