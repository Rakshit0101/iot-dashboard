# Dashboard Replicate-Assignment1

**This project has a dashboard replicate of a device installed at a single site .**

---
### Project Overview
**An IOT device has been installed at some site by Tek Uncorked ,the device has specific task to do like collect voltage,current,temperature,etc and the data,the device has collected have to be shown on Dashboard.**

---

### Project Implementation
**As per requirement data is not being collected from live IOT device instead it is being passed hard coded with JSON.**

---
### User-Manual
* User has to open the **readings.json** file and has to pass the following data -
	* device_status -- *Whether IOT device is turned ON or OFF*
	* current_temperature -- *The current temperature of device ,by which program will judge its status*
	* min_temperature -- *Minimum Threshold temperature of the device*
	* warning_temperature -- *Temperature above normal temperature but below the max_Temperature of device*
	* max_temperature -- *Maximum threshold temperature of device*
	

**Valid values to the keys of JSON file input**

| Key                 | Value                      |
|---------------------|----------------------------|
| device_status       | Online/Offline             |
| current_temperature | double data type(ex 44.0)  |
| min_temperature     | double data type(ex 10.0)  |
| warning_temperature | double data type(ex 90.0)  |
| max_temperature     | double data type(ex 100.0) |

* Assumption to class fields
    * min_temperature **<** warning_temperature **<** max_temperature

---

### Dashboard display (A/Q to Values provided by user in json)
* **If device_status is "online"**
	* *If current temp is greater than maximum temperature then status changes to "Alert" and status circle changes to "red"*
	* *If current temp is lesser or equal to maximum temperature and greater than warning temp then status changes to "Warning" and status circle changes to "yellow"*
	* *If current temp is lesser or equal to warning  temperature and greater than minimum temp then status changes to "Normal" and status circle changes to "green"*
	* *If current temp is lesser than minimum temperature then status changes to "Need Assitance" and status circle changes to " light red"*
* **If device_status is "offline"** *then status changes to "offline" and status circle changes to "grey"*
* **Data and time will be dispalyed of the last modified json file reading timestamp**
* **All remain text fields are statically typed in HTML file located in index.jsp**

---
### Tech Stack
* **Core Java**
* **HTML,CSS,JSP**
* **JSON for data interchange**
* **Server Tomcat**

<p style="text-align: center;">Submitted by Rakshit Jayaswal</p>
