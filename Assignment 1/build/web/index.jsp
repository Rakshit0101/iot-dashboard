<%-- 
    Document   : index
    Created on : 24-Sep-2022, 11:04:13 pm
    Author     : rakshit
--%>

<%@page import="com.device.dashboard.Status"%>
<%@page import="com.device.dashboard.DeviceStatus"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
*{
    margin: 0%;
    padding: 0%;
    box-sizing: border-box;
}
html{
    font-size: 62.5%;
    font-family: sans-serif;
}
.container{

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}
.card{
    background-color: #f5f5f5;
}
 <%
   Status status = new DeviceStatus().get();
   %>
.card_heading{
    width: 45rem;
    margin-inline: auto;
    display: grid;
    grid-template-columns: 20% 50% 30%;
    background-color: <%= status.temperature_status_colour %>;
    padding: 1rem 2rem;
    font-size: 2.4rem;
    font-weight: 700;
}
.head_3{
    justify-self: flex-end;
}
.card_data{
    display: grid;
    grid-template-columns: 20% 40% 30% 10%;
    padding: .5rem 2rem;
    align-items: center;
}
.card_data3{
    display: grid;
    grid-template-columns: 60% 30% 10%;
    padding: .5rem 2rem;
    align-items: center;
}
.data_color{
    height: 3rem;
    width: 3rem;
    background-color: <%= status.temperature_status_colour %>;
    border-radius: 50%;
}
.data_bar{
    display: flex;
    align-items: center;
    gap: .8rem;
}
.card_value{
    font-size: 2rem;
}
.data_line{
    width: 5rem;
    border-radius: 5px;
    height: .7rem;
    background-color: red;
}
.data_line_2{
    width: 5rem;
    border-radius: 5px;
    height: .7rem;
    background-color: yellow;
}
.data_line_3{
    width: 5rem;
    border-radius: 5px;
    height: .7rem;
    background-color: blue;
}
.card_current{
    justify-self: flex-end;
}
.footer{
    padding: .5rem 2rem;
    font-size: 2rem;
    background-color: #f5f5f5;
}
</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card_heading">
            <p class="head_1">18</p>
            <p class="head_2">ORI-CM-CURR2</p>
            <p class="head_3">ZONE 000</p>
        </div>
        <div class="card_data">
            <div><p class="data_color"></p></div>
            <div><p class="card_value">8.50 V</p></div>
            <div class="data_bar"><p class="data_line"></p><p class="data_color"></p></div>
            <div class="card_current card_value">0 A</div>
        </div>
        <div class="card_data">
            <div><p class="data_color"></p></div>
            <div><p class="card_value"><%= status.temperature_status %></p></div>
            <div class="data_bar"><p class="data_line_2"></p><p class="data_color"></p></div>
            <div class="card_current card_value">0 A</div>
        </div>
        <div class="card_data3">
            <div><p class="card_value"><%= status.reading_timestamp %></p></div>
            <div class="data_bar"><p class="data_line_3"></p><p class="data_color"></p></div>
            <div class="card_current card_value">0 A</div>
        </div>
        <div class="footer">
            <p>00KVA DT : Location..</p>
        </div>
    </div>
</div>
</body>
</html>
