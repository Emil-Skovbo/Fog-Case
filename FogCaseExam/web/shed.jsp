<%-- 
    Document   : shed
    Created on : 24-04-2019, 11:05:49
    Author     : fskn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <form>
                    <table>
            <tr class="FormInput">
                    <th>Shed</th>
                    <td>
                        <select name="title">
                            <option value="yes">Yes.</option>
                            <option value="no">No.</option>
                        </select>
                    </td><tr></table>
                </tr>
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
    </body>
</html>
