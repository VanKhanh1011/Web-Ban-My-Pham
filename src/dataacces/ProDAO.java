package dataacces;

import java.sql.SQLException;
import java.util.ArrayList;

import org.json.*;

import Entities.Product;
import Entities.SanPham;
import webservice.webservice;

public class ProDAO {
	private String url = "http://192.168.58.56/api/SanPham/";

    public ArrayList<Product> getListProductByNew() throws SQLException, JSONException {
        webservice ws = new webservice();
        JSONArray ja = ws.getJSONArrayData(url + "GetNhomSanPham?maNhomSp=2");
        ArrayList<Product> list = new ArrayList<>();
        for(int i = 0;i<ja.length();i++){
            Product product = new Product();
            
            product.setMaSp((int) ja.getJSONObject(i).get("MaSp"));
            product.setTenSp((String) ja.getJSONObject(i).get("TenSp"));
            product.setAnh((String) ja.getJSONObject(i).get("Anh"));
            product.setGia((int) ja.getJSONObject(i).get("Gia"));
            product.setMaNcc((int) ja.getJSONObject(i).get("MaNcc"));
            product.setMota((String) ja.getJSONObject(i).get("Mota"));
            product.setTrangthai((boolean) ja.getJSONObject(i).get("TrangThai"));
            product.setManhom((int) ja.getJSONObject(i).get("MaNhomSp"));
            list.add(product);
        }
        return list;
    }
    
    public Product getProduct(int maSp) throws SQLException, JSONException {
        webservice ws = new webservice();
        JSONObject ja = ws.getJSONObjectData(url + "GetSanPham?maSp="+maSp);
        Product product = new Product();
        
        product.setMaSp((int) ja.get("MaSp"));
        product.setTenSp((String) ja.get("TenSp"));
        product.setAnh((String) ja.get("Anh"));
        product.setGia((int) ja.get("Gia"));
        product.setMaNcc((int) ja.get("MaNcc"));
        product.setMota((String) ja.get("Mota"));
        product.setTrangthai((boolean) ja.get("TrangThai"));
        product.setManhom((int) ja.get("MaNhomSp"));
        return product;
    }
}
