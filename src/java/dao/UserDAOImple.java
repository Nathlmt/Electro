package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class UserDAOImple implements UserDAO {

    @Override
    public void addUser(User u) {
        Connection con = DBConnect.getConnect();
        String sql = "INSERT INTO USER_ELECTRO(user__name, pass_word, ngay_sinh, gioi_tinh, email, sdt, dia_chi, ro_le) VALUES (?,?,?,?,?,?,?,?);";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, u.getUser__name());
            ps.setString(2, u.getPass_word());
            ps.setDate(3, u.getNgay_sinh());
            ps.setString(4, u.getGioi_tinh());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getSdt());
            ps.setString(7, u.getDia_chi());
            ps.setString(8, u.getRo_le());
            ps.executeUpdate();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean checkUser(String username) {
        Connection con = DBConnect.getConnect();
        String sql = "SELECT * FROM USER_ELECTRO WHERE user__name='" + username + "';";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                    con.close();
                    return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
            //UserDAOImple dao = new UserDAOImple();
            //dao.addUser(new User("admin", "123456","2"));
            //System.out.println(dao.checkUser("test1"));
            //System.out.println(dao.loginUser("test1", "test1"));
    }

    @Override
    public boolean loginUser(String username, String password) {
        Connection con = DBConnect.getConnect();
        String sql = "SELECT * FROM USER_ELECTRO WHERE user__name='" + username + "' AND pass_word='" + password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                    con.close();
                    return true;
            }
        } catch (SQLException e) {
                e.printStackTrace();
        }
        return false;
    }

    @Override
    public void updateUser(User u) {
            Connection con = DBConnect.getConnect();
            String sql = "UPDATE USER_ELECTRO SET pass_word=?, ngay_sinh=?, gioi_tinh=?, email=?, sdt=?, dia_chi=?, ro_le=? WHERE user__name=?";
            try {
                    PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
                    ps.setString(1, u.getPass_word());
                    ps.setDate(2, u.getNgay_sinh());
                    ps.setString(3, u.getGioi_tinh());
                    ps.setString(4, u.getEmail());
                    ps.setString(5, u.getSdt());
                    ps.setString(6, u.getDia_chi());
                    ps.setString(7, u.getRo_le());
                    ps.setString(8, u.getUser__name());
                    ps.executeUpdate();
                    con.close();
            } catch (SQLException e) {
                    e.printStackTrace();
            }

    }

    @Override
    public User getUser(String username) {
        Connection con = DBConnect.getConnect();
        String sql = "SELECT * FROM USER_ELECTRO WHERE user__name='" + username + "'";
        User u = new User();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_nguoi_dung= rs.getInt("ma_nguoi_dung");
                String user__name = rs.getString("user__name");
                String pass_word = rs.getString("pass_word");
                Date ngay_sinh = rs.getDate("ngay_sinh");
                String gioi_tinh = rs.getString("gioi_tinh");
                String email = rs.getString("email");
                String sdt = rs.getString("sdt");
                String dia_chi = rs.getString("dia_chi");
                String ro_le = rs.getString("ro_le");
                u = new User(ma_nguoi_dung, user__name, pass_word, ngay_sinh, gioi_tinh, email, sdt, dia_chi, ro_le);
                }
                con.close();
        } catch (SQLException e) {
                e.printStackTrace();
        }
        return u;
    }
}
