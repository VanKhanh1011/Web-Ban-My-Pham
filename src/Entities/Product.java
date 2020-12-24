package Entities;

public class Product {
	private Integer maSp;
	private String tenSp;
	private String anh;
	private Integer gia;
	private Integer maNcc;
	private String mota;
	private Boolean trangthai;
	private Integer manhom;
	
	public Product(){
		
	}
	
	public Product(int masp, String tensp, String anh, int gia, int mancc, String mota, boolean trangthai, int manhom){
		this.maSp = masp;
		this.tenSp = tensp;
		this.anh = anh;
		this.gia = gia;
		this.maNcc = mancc;
		this.mota = mota;
		this.trangthai = trangthai;
		this.manhom = manhom;
	}

	public Integer getMaSp() {
		return maSp;
	}

	public void setMaSp(Integer maSp) {
		this.maSp = maSp;
	}

	public String getTenSp() {
		return tenSp;
	}

	public void setTenSp(String tenSp) {
		this.tenSp = tenSp;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public Integer getGia() {
		return gia;
	}

	public void setGia(Integer gia) {
		this.gia = gia;
	}

	public Integer getMaNcc() {
		return maNcc;
	}

	public void setMaNcc(Integer maNcc) {
		this.maNcc = maNcc;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public Boolean getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(Boolean trangthai) {
		this.trangthai = trangthai;
	}

	public Integer getManhom() {
		return manhom;
	}

	public void setManhom(Integer manhom) {
		this.manhom = manhom;
	}

	
	
	
}
