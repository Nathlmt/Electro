package model;

import java.sql.Timestamp;

public class Cart {
    private int id_cart;
    private int ma_nguoi_dung;
    private int ma_san_pham;
    private Timestamp ngay_mua;
    private int so_luong;
    private float thanh_tien;
    
    public Cart() { }
    
    public Cart(int id_cart, int ma_nguoi_dung, int ma_san_pham, Timestamp ngay_mua, int so_luong, float thanh_tien){
        this.id_cart = id_cart;
        this.ma_nguoi_dung = ma_nguoi_dung;
        this.ma_san_pham = ma_san_pham;
        this.ngay_mua = ngay_mua;
        this.so_luong = so_luong;
        this.thanh_tien = thanh_tien;
    }

    public int getId_cart() {
        return id_cart;
    }

    public int getMa_nguoi_dung() {
        return ma_nguoi_dung;
    }

    public int getMa_san_pham() {
        return ma_san_pham;
    }

    public Timestamp getNgay_mua() {
        return ngay_mua;
    }

    public int getSo_luong() {
        return so_luong;
    }

    public void setId_cart(int id_cart) {
        this.id_cart = id_cart;
    }

    public float getThanh_tien() {
        return thanh_tien;
    }

    public void setMa_nguoi_dung(int ma_nguoi_dung) {
        this.ma_nguoi_dung = ma_nguoi_dung;
    }

    public void setMa_san_pham(int ma_san_pham) {
        this.ma_san_pham = ma_san_pham;
    }

    public void setNgay_mua(Timestamp ngay_mua) {
        this.ngay_mua = ngay_mua;
    }

    public void setSo_luong(int so_luong) {
        this.so_luong = so_luong;
    }

    public void setThanh_tien(float thanh_tien) {
        this.thanh_tien = thanh_tien;
    }
    
}
