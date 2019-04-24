<%-- 
    Document   : custom_roof
    Created on : 24-04-2019, 09:52:18
    Author     : fskn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>createOrder</title>
    </head>
    <body>
        <form id="addRoof" action ="Frontcontroller" method="POST">
            <input type="hidden" name="action" value="order">
            <table class ="table table-striped">
                <h1>Roof:<h1>
                <thred><tr><th>Flat or angle </th><th>Angle</th><th>Roof-material</th><th>Roof-color</th></tr></thred>
                <tr>  
                    <td><select name=flat id="option"><option value=flat></option><option value=" flat"></option></td>
                    <td><select name=flat id="option"><option value=flat></option><option value=" flat"></option></td>
                    <td><select name=flat id="option"><option value=flat></option><option value=" flat"></option></td>
                    <td><select name=flat id="option"><option value=flat></option><option value=" flat"></option></td>                    
                    <td><input type ='submit' name ="okbutton" value ="ok"></td>
                    <td><input type ='submit' name ="calculate" value ="Calculate"></td>
                    <td><input type ='submit' name ="reset" value ="reset"></td><td><span id="errorContainer"></span></td>
                </tr>
            </table>
        </form>
    </body>
</html>
