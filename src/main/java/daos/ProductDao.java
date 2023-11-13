package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Catch;

import controller.ProductDetails;
import dbConnection.DBConnection;
import model.ProductModel;

public class ProductDao {
	
	public List<ProductModel> getAllProduct(){
		 List<ProductModel> products = new ArrayList<>();
			
			String query = "SELECT * FROM posts";
			Connection con = DBConnection.getConnection().getCon();
			PreparedStatement stmt =null;
			ResultSet set = null;
			
			try {
				 stmt = con.prepareStatement(query);
				 set = stmt.executeQuery();
				 
				 while(set.next()) {
					 products.add(new ProductModel(
							 set.getInt("id"),
							 set.getString("title"),
							 set.getString("content"),
							 set.getString("image")
							 ));
				 }
			}catch(SQLException e) {
				e.printStackTrace();
			}
			
			DBConnection.closeCon(con, stmt, set);
			
			return products;
	}
}
