package magazinit;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MagazinIT {

    public static void main(String[] args) throws SQLException {
        try{
            Connection con = DBUtil.getConnection(DBType.MYSQLDB);
            
            String sql_select = "select * from componenta";
            Statement stmt = con.createStatement();
            ResultSet rs= stmt.executeQuery(sql_select);
            
            while (rs.next())
                System.out.println(rs.getString(1) + " " + rs.getString(2)
                        + " " + rs.getString(3) + " " + rs.getString(4)
                        + " " + rs.getString(5) + " " + rs.getString(6));
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
}
