package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Product;

public class ProductDAOImple implements ProductDAO {

    @Override
    public List<Product> getListByCategory(int id) {
        Connection con = DBConnect.getConnect();
        String sql = "SELECT * FROM PRODUCT WHERE ma_loai_san_pham='" + id + "'";
        List<Product> list = new ArrayList<Product>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_loai_san_pham = rs.getInt("ma_loai_san_pham");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh_1 = rs.getString("hinh_anh_1");
                String hinh_anh_2 = rs.getString("hinh_anh_2");
                String hinh_anh_3 = rs.getString("hinh_anh_3");
                String hinh_anh_4 = rs.getString("hinh_anh_4");
                String hinh_anh_5 = rs.getString("hinh_anh_5");
                int gia_ban = rs.getInt("gia_ban");
                list.add(new Product(ma_san_pham, ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban));
            }
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Product getProduct(int id) {
        Connection con = DBConnect.getConnect();
        String sql = "SELECT * FROM PRODUCT WHERE ma_san_pham='" + id + "'";
        Product p = new Product();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int ma_san_pham = rs.getInt("ma_san_pham");
                int ma_loai_san_pham = rs.getInt("ma_loai_san_pham");
                String ten_san_pham = rs.getString("ten_san_pham");
                String hinh_anh_1 = rs.getString("hinh_anh_1");
                String hinh_anh_2 = rs.getString("hinh_anh_2");
                String hinh_anh_3 = rs.getString("hinh_anh_3");
                String hinh_anh_4 = rs.getString("hinh_anh_4");
                String hinh_anh_5 = rs.getString("hinh_anh_5");
                int gia_ban = rs.getInt("gia_ban");
                p = new Product(ma_san_pham, ma_loai_san_pham, ten_san_pham, hinh_anh_1, hinh_anh_2, hinh_anh_3, hinh_anh_4, hinh_anh_5, gia_ban);
            }
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return p;
    }

    public static void main(String[] args) {
        //Product p = new Product(0, 1, "S6", "da", 500000.0 ,"","");
        ProductDAOImple productDAO = new ProductDAOImple();
        // productDAO.addProduct(p);
        // System.out.println(productDAO.getList());
        System.out.println(productDAO.getListByCategory(5));
    }


    @Override
    public void addProduct(Product p) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Product> getList() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Product> searchList(String ten_san_pham, String ten_the_loai) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

