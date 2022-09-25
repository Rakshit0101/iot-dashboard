package com.database.assignment2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
class Pair{
	Timestamp datetime;
	float temperature;
}
public class Main {

	public static void main(String[] args) throws Exception {

		// TODO Auto-generated method stub
		ArrayList<Pair> devicetable1Data = new ArrayList<>();
        Connection conn = getConnection();
        getDataInList(conn,devicetable1Data);
	}
	private static void getDataInList(Connection conn,ArrayList<Pair> devicetable1Data) throws SQLException {
		getTableData(conn,devicetable1Data);
		ArrayList<Pair> devicetable1AVG = new ArrayList<>();
		int n = devicetable1Data.size();
		int counter =0;
		int dateCounter =0;
		float temp = 0;
		for(int i=0;i<n;i++) {
			temp = temp + devicetable1Data.get(i).temperature;
			counter++;
			if(counter==5) {
				temp = temp/5;
			Pair pp =	new Pair();
			pp.datetime = devicetable1Data.get(dateCounter).datetime;
			pp.temperature = temp;
			devicetable1AVG.add(pp);
			temp = 0;
			dateCounter += 5;
			counter = 0;
			}
			}
		
		insertIntoD2D3(conn,devicetable1AVG);
	}
		
	
private static void insertIntoD2D3(Connection conn,ArrayList<Pair> devicetable1AVG) throws SQLException {
		// TODO Auto-generated method stub
	conn.prepareStatement("truncate table d2").execute();
	conn.prepareStatement("truncate table d3").execute();
	
	 String d2Sql = "INSERT INTO d2(TimeStamp, Averagetemperature)"+"VALUES(?, ?)";
	 String d3Sql = "INSERT INTO d3(TimeStamp, Averagetemperature)"+"VALUES(?, ?)";
	 
	 PreparedStatement d2Statement = conn.prepareStatement(d2Sql);
	 PreparedStatement d3Statement = conn.prepareStatement(d3Sql);

	int n = devicetable1AVG.size();
	for(int i=0;i<n;i++) {
	 Timestamp TimeStamp = devicetable1AVG.get(i).datetime;
	 float temp = devicetable1AVG.get(i).temperature; 
		d2Statement.setTimestamp(1, TimeStamp);
		d2Statement.setFloat(2, temp);
		d2Statement.executeUpdate();
		
		if(temp < 10.0 || temp > 70.0 ) {
			d3Statement.setTimestamp(1, TimeStamp);
			d3Statement.setFloat(2, temp);
			d3Statement.executeUpdate();
		}
	}
} 


public static void getTableData(Connection conn,ArrayList<Pair> devicetable1Data) throws SQLException {
	try {
	String sql = "select * from d1";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	//System.out.println("  TimeStamp\tTemperature");
	
	while(rs.next()) {
		Pair pair = new Pair();
		pair.datetime = rs.getTimestamp("TimeStamp");
		pair.temperature = rs.getInt("Temperature");
		//System.out.println(TimeStamp+"\t    "+Temperature);
		devicetable1Data.add(pair);
	}
	}
	catch (SQLException e) {
        System.out.println(e);
    }
}
	
public static Connection getConnection() throws Exception{
	try {
		//String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/device18";
		String username = "root";
		String password = "qwerty";
		//Class.forName(driver);
		
		Connection conn = DriverManager.getConnection(url, username, password);
		System.out.println("connected");
		
		return conn;
	}
	catch(Exception e) {
		System.out.println(e);
	}
	return null;
}
}
