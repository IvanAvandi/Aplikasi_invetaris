
package Antarmuka;
import java.sql.*;

/**
 *
 * @author ivan
 */
public class koneksi {
    private Connection koneksi;
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("berhasil konek");
        }
        catch(ClassNotFoundException ex){
            System.out.println("Gagal konek "+ex);
        }
        String url = "jdbc:mysql://localhost/projekuts_pbo2";
        try{
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil konek database");
        }
        catch(SQLException ex){
            System.out.println("Gagal koneksi database"+ex);
        }
        return koneksi;
    }
}
