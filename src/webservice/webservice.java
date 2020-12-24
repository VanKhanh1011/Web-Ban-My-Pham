package webservice;

import java.io.*;
import java.net.*;
import java.nio.charset.Charset;
import java.util.logging.*;

import org.json.*;

public class webservice {
	// Hàm lấy chuỗi ký tự từ Server
    public String getData(String link){
        String input = null;
        try{
            URL url = new URL(link);
            URLConnection con = url.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), Charset.forName("UTF-8")));
            
            input = br.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return input;
    }
    
    // Hàm lấy chuỗi JSON từ server
    public JSONArray getJSONArrayData(String link){
        JSONArray ja = null;
        try{
            // Tạo 1 URL và kết nối đến
            URL url = new URL(link);
            URLConnection con = url.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), Charset.forName("UTF-8")));
            
            // Lấy dữ liệu trên server về theo dạng chuỗi ký tự
            String input = br.readLine();
            
            // decode lại 1 lần nữa để chuyển chuỗi ký tự giống như dạng json
            input = input.substring(1, input.length()-1).replace("\\", "");
            
            // chuyển chuỗi ký tự về thành dạng json
            ja = new JSONArray(input);
        } catch (IOException e) {
            e.printStackTrace();
        }  catch (JSONException ex) {
                Logger.getLogger(webservice.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ja;
    }
    
    // Hàm lấy Object JSON từ server
    public JSONObject getJSONObjectData(String link){
        JSONObject ja = null;
        try{
            URL url = new URL(link);
            URLConnection con = url.openConnection();
            BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), Charset.forName("UTF-8")));
            
            String input = br.readLine();
            input = input.substring(1, input.length()-1).replace("\\", "");
            
            ja = new JSONObject(input);
        } catch (IOException e) {
            e.printStackTrace();
        }  catch (JSONException ex) {
                Logger.getLogger(webservice.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ja;
    }
    
    // Hàm push data JSON đến Server
    public boolean sendToServer(JSONObject jo, String url) throws IOException{
        URL object=new URL(url);
        
        HttpURLConnection con = (HttpURLConnection) object.openConnection();
        con.setDoInput(true);
        con.setDoOutput(true);
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        con.setRequestMethod("POST");
        
        OutputStreamWriter osw = new OutputStreamWriter(con.getOutputStream());
        osw.write(jo.toString());
        osw.flush();
        
        StringBuilder sb = new StringBuilder();  
        int HttpResult = con.getResponseCode(); 
        if (HttpResult == HttpURLConnection.HTTP_OK) {
            return true;
        } else {
            return false;
        }  
    }
    
    public static void main(String[] args) throws IOException, JSONException {
        String link = "http://192.168.58.56/api/SanPham/";
        
        webservice ws = new webservice();
        JSONObject jo = ws.getJSONObjectData(link);
//        JSONArray ja = ws.getJSONData(link);
//        System.out.println(jo);

//        JSONObject jo;
//        for(int i = 0;i<ja.length();i++){
//            jo = ja.getJSONObject(i);
//            System.out.println(jo);
//        }
        System.out.println(jo.get("id"));
    }
}
