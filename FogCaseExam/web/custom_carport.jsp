<%-- 
    Document   : custom_roof
    Created on : 24-04-2019, 09:52:18
    Author     : fskn
--%>

<%@page import="DataLayer.CarportMapper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>createOrder</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="stylesheet" href = "styling.css">
    </head>
    <body>
        <%CarportMapper cm = new CarportMapper(); %>
        
        <form id="addRoof" action ="Frontcontroller" method="POST">
            <input type="hidden" name="action" value="order">
            <table class ="table table-striped">
                <h1>Roof:<h1>
                <thred><tr><th>Flat or angle </th><th>Angle</th><th>Roof-material</th><th>Roof-color</th></tr></thred>
                <tr>  
                    <td><select name=flat id="option">
                            <option value=flat></option><option value=flat>Flat</option><option value=" flat">Angle</option></td>
                    <td><select name=angles id="option">
                            <option value=angles></option><option value=angles>15</option><option value=" flat">20</option><option value=angles>25</option>
                            <option value=angles>30</option><option value=angles>35</option></td>
                    <td><select name=rmaterials id="option">
                            <option value=rmaterials></option><option value=1><%= cm.getRoofMaterial(1) %></option><option value=2><%= cm.getRoofMaterial(2) %></option>
                            <option value=3><%= cm.getRoofMaterial(3) %></option></td>
                    <td><select name=rcolor id="option">
                            <option value=rcolor></option><option value="rcolor">Black</option><option value="rcolor">Red</option>
                            <option value="rcolor">Brown</option><option value="rcolor">Grey</option></td>                
                </tr>
                </table><hr>
                <tr><tr><tr>
            <h1>Shed:</h1>
            <table>
            <tr class="FormInput">
                    <th>Shed</th>
                    <td>
                        <select name="title">
                            <option value="yes">Yes.</option>
                            <option value="no">No.</option>
                        </select>
                    </td><tr></table>
        </tr><hr>
                <h1>Shed details:</h1>
                    <table class="table table-striped">
                <thead><tr><th>Heigth</th><th>Length</th><th>Width</th><th></th></tr></thead>
                <tbody><tr>
                <td><input type="text" name="heigth" id="heigthInput"></td>
                <td><input type="text" name="length" id="lengthInput"></td>
                <td><input type="text" name="width"  id="widthInput"></td>
                <td><input type="submit" value="Confirm"></td><td></td>
                </tr>

            </table>
        </form>
         <td><input type ='submit' name ="okbutton" value ="Check Out"></td>
                    <td><input type ='submit' name ="calculate" value ="Calculate"></td>
                    <td><input type ='submit' name ="reset" value ="Reset"></td><td><span id="errorContainer"></span></td>
    </body>
</html>
