package DataAccess;

import Entities.ChiTietDonHang;
import Entities.DonHang;
import Entities.KhachHang;
import Entities.NhomSanPham;
import Entities.QuangCao;
import Entities.SanPham;
import Entities.ThanhToan;
import Entities.UaThich;
import Entities.VanChuyen;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;


public class ShoppingDA {

    private Session s;

    public ShoppingDA() {
        s = NewHibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
    }

    // Nhóm sản phẩm
    public List<NhomSanPham> getNhom() {
        Query q = s.createQuery("from NhomSanPham");
        return q.list();
    }

    public List<SanPham> getByNhomSp(int maNhomSp) {
        Query q = s.createQuery("from SanPham where maNhomSp = :maNhomSp");
        q.setLong("maNhomSp", maNhomSp);
        return q.list();
    }

    // Sản phẩm
    public List<SanPham> getAll(Integer maxResult) {
        Query q = s.createQuery("from SanPham where trangThai like '1'");
        return q.setMaxResults(maxResult == null ? 1000 : maxResult).list();
    }

    public List<SanPham> getProPage1(Integer offset, Integer maxResult) {
        Query q = s.createQuery("from SanPham where trangThai like '1'");
        return q.setFirstResult(offset == null ? 0 : offset).setMaxResults(maxResult == null ? 12 : maxResult).list();
    }

    public Long getNumberProductDetail() {
        try {

            List list = s.createQuery("from SanPham where trangThai like '1'").list();
            s.getTransaction().commit();
            s.close();
            return (long) list.size();
        } catch (Exception e) {
            e.printStackTrace();
            s.getTransaction().rollback();
            s.close();
        }
        return 0L;
    }

    public SanPham getById(int maSp) {
        SanPham sp = (SanPham) s.load(SanPham.class, maSp);
        s.getTransaction().commit();
        return sp;
    }

    public List<SanPham> search(String tensp) {
        Query q = s.createQuery("select s from SanPham s where s.tenSp like :tensp");
        q.setParameter("tensp", "%" + tensp + "%");
        return q.list();
    }

    /// Quảng cáo
    public List<QuangCao> getAllQuangCao() {
        return s.createCriteria(QuangCao.class).list();
    }

    public QuangCao getByIdQuangCao(int maQc) {
        QuangCao qc = (QuangCao) s.load(QuangCao.class, maQc);
        s.getTransaction().commit();
        return qc;
    }

    // Thanh toán
    public List<ThanhToan> getThanhToan() {
        return s.createCriteria(ThanhToan.class).list();
    }

    public ThanhToan getMaThanhToan(int maTt) {
        ThanhToan tt = (ThanhToan) s.load(ThanhToan.class, maTt);
        s.getTransaction().commit();
        return tt;
    }

    // Vận chuyển
    public List<VanChuyen> getVanChuyen() {
        return s.createCriteria(VanChuyen.class).list();
    }

    public VanChuyen getMaVanChuyen(int maVc) {
        VanChuyen vc = (VanChuyen) s.load(VanChuyen.class, maVc);
        s.getTransaction().commit();
        return vc;
    }

    //Khách hàng
    public void insertUser(KhachHang khachHang) {
        s.save(khachHang);
        s.getTransaction().commit();
    }

    public KhachHang getMaKhachHang(int maKh) {
        KhachHang kh = (KhachHang) s.load(KhachHang.class, maKh);
        s.getTransaction().commit();
        return kh;
    }

    public void updateKhachHang(KhachHang kh) {
        s.merge(kh);
        s.getTransaction().commit();
    }

    public List<DonHang> getByKhachHang(int maKh) {
        Query q = s.createQuery("from DonHang where maKh = :maKh");
        q.setLong("maKh", maKh);
        return q.list();
    }

    public List<ChiTietDonHang> getByDonHang(int maDh) {
        Query q = s.createQuery("from ChiTietDonHang where maDh = :maDh");
        q.setLong("maDh", maDh);
        return q.list();
    }

    public KhachHang checkEmail(String email) {
        Query query = s.createQuery("from KhachHang where email = :email");
        query.setString("email", email);
        KhachHang kh = (KhachHang) query.uniqueResult();
        s.getTransaction().commit();
        return kh;
    }
    
    public KhachHang checkTaiKhoan(String tenTk) {
        Query query = s.createQuery("from KhachHang where tenTk = :tenTk");
        query.setString("tenTk", tenTk);
        KhachHang kh = (KhachHang) query.uniqueResult();
        s.getTransaction().commit();
        return kh;
    }
    

    public KhachHang Login(String tenTk, String matKhau) {
        Query query = s.createQuery("from KhachHang where tenTk = :tenTk and matKhau = :matKhau");
        query.setString("tenTk", tenTk);
        query.setString("matKhau", matKhau);
        KhachHang kh = (KhachHang) query.uniqueResult();
        s.getTransaction().commit();
        return kh;
    }

    // Đơn hàng
    public void insertDonHang(DonHang dh) {
        s.save(dh);
        s.getTransaction().commit();
    }

    public void insertChiTietDonHang(ChiTietDonHang ctdh) {
        s.save(ctdh);
        s.getTransaction().commit();

    }

    public DonHang getByIdDonHang(int maDh) {
        return (DonHang) s.get(DonHang.class, maDh);
    }

    // San pham ua thich
    public void insertUaThich(UaThich ut) {
        s.save(ut);
        s.getTransaction().commit();
    }

    public List<UaThich> getUaThichByKhachHang(int maKh) {
        Query q = s.createQuery("from UaThich where maKh = :maKh");
        q.setLong("maKh", maKh);
        return q.list();
    }
    
    public List<SanPham> getSanPhamByPhanPhu() {
        Query q = s.createQuery("from SanPham where tenSp like '%Phan Phu%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByKemCheKhuyetDiem() {
        Query q = s.createQuery("from SanPham where tenSp like '%Kem Che Khuyet Diem%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByKemLot() {
        Query q = s.createQuery("from SanPham where tenSp like '%Kem Lot%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByCushion() {
        Query q = s.createQuery("from SanPham where tenSp like '%Cushion%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByMaHong() {
        Query q = s.createQuery("from SanPham where tenSp like '%Ma Hong%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByLotMoi() {
        Query q = s.createQuery("from SanPham where tenSp like '%Lot Moi%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamBySonMoi() {
        Query q = s.createQuery("from SanPham where tenSp like '%Son Moi%'");
        return q.list();
    }
    public List<SanPham> getSanPhamBySonDuong() {
        Query q = s.createQuery("from SanPham where tenSp like '%Son Duong%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByLipsMask() {
        Query q = s.createQuery("from SanPham where tenSp like '%Lips Mask%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByMascara() {
        Query q = s.createQuery("from SanPham where tenSp like '%Mascara%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByMiGia() {
        Query q = s.createQuery("from SanPham where tenSp like '%Mi Gia%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByKeMat() {
        Query q = s.createQuery("from SanPham where tenSp like '%Ke Mat%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByKeMay() {
        Query q = s.createQuery("from SanPham where tenSp like '%Ke May%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByPhanMat() {
        Query q = s.createQuery("from SanPham where tenSp like '%Phan Mat%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByKemLamTrang() {
        Query q = s.createQuery("from SanPham where tenSp like '%Kem Lam Trang%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByKemTayLong() {
        Query q = s.createQuery("from SanPham where tenSp like '%Kem Tay Long%'");
        return q.list();
    }
    public List<SanPham> getSanPhamBySuaRuaMat() {
        Query q = s.createQuery("from SanPham where tenSp like '%Sua Rua Mat%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByKemChongNang() {
        Query q = s.createQuery("from SanPham where tenSp like '%Kem Chong Nang%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByMatNa() {
        Query q = s.createQuery("from SanPham where tenSp like '%Mat Na%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByTayTrang() {
        Query q = s.createQuery("from SanPham where tenSp like '%Tay Trang%'");
        return q.list();
    }
    public List<SanPham> getSanPhamBySerum() {
        Query q = s.createQuery("from SanPham where tenSp like '%Serum%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByToner() {
        Query q = s.createQuery("from SanPham where tenSp like '%Toner%'");
        return q.list();
    }
    
    public List<SanPham> getSanPhamByLotion() {
        Query q = s.createQuery("from SanPham where tenSp like '%Lotion%'");
        return q.list();
    }
    public List<SanPham> getSanPhamByTayTeBaoChet() {
        Query q = s.createQuery("from SanPham where tenSp like '%Tay Te Bao Chet%'");
        return q.list();
    }

    public UaThich delete(int maUt) {
        UaThich ut = (UaThich) s.load(UaThich.class, maUt);
        s.delete(ut);
        s.getTransaction().commit();
        return ut;
    }

    // Sản phẩm được yêu thích
}
