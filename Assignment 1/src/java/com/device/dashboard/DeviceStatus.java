package com.device.dashboard;
import java.io.File;
import java.io.FileReader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.attribute.FileTime;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import org.json.simple.JSONObject;


import org.json.simple.parser.JSONParser;
//import org.json.simple.parser.ParseException;

public class DeviceStatus {
    
    private String device_status;
    private double current_temperature;
    private  double min_temperature;     //minimum threshold temperature of a device.
    private  double warning_temperature; //minimum to normal temperature a device can have.
    private double max_temperature;      //maximum threshold temperature of a device.
    private String reading_timestamp;

    
    
    public void readJson() throws Exception {
        JSONParser parser = new JSONParser();
      try {
          String webInfPath = new File(this.getClass().getClassLoader() .getResource("/").getFile()).getParent();
          String jsonFilePath = webInfPath + "/readings.json";
          FileReader jsonString = new FileReader(jsonFilePath );
          reading_timestamp = formatTempReadingTime(Files.getLastModifiedTime(Paths.get(jsonFilePath)));
          

         Object obj = parser.parse(jsonString);
         JSONObject jsonObject = (JSONObject)obj;
        device_status = (String)jsonObject.get("device_status");
        current_temperature = (double)jsonObject.get("current_temperature");
        min_temperature = (double)jsonObject.get("min_temperature");
        warning_temperature = (double)jsonObject.get("warning_temperature");
        max_temperature = (double)jsonObject.get("max_temperature");

     } catch(Exception e) {
         e.printStackTrace();
         
      }
    }
    
    private static String formatTempReadingTime(FileTime fileTime) {
    DateFormat dateFormat = new SimpleDateFormat("dd/MM@hh:mm");
   return dateFormat.format(fileTime.toMillis());
}
    

    public Status get() throws Exception{
         readJson();
         
        if(device_status.equalsIgnoreCase("online"))
          return  checkTemperatureStatus();
          else
                return  new Status("Offline", "#a9a9a9", reading_timestamp);
    }
    
   public Status checkTemperatureStatus(){
        if(current_temperature>max_temperature){
            return  new Status("Alert",  "#ff0000", reading_timestamp);
        }
        else if(current_temperature<=max_temperature && current_temperature>warning_temperature){
            return  new Status("Warning",  "#ffc300", reading_timestamp);
        }
        else if(current_temperature<=warning_temperature && current_temperature>=min_temperature){
            return  new Status("Normal",  "#90ee90", reading_timestamp);
        }
        else
        return  new Status("Need Assitance", " #ff9999", reading_timestamp);//temp less than specified min_threshold temp -- "abnormal temp"
   }
}

