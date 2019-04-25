<%-- 
    Document   : CustomizedCalculatedCarport
    Created on : 24-04-2019, 10:26:25
    Author     : emils
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataLayer.DataMapper"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CustomizedCalculatedCarport</title>
    </head>
    <body>
        <div>
            <h1>Customize your very own Carport:</h1>
            <br>
            <div> 
                <p>Select your goals </p>
                <form id="addProduct" action="?action=order" method="POST">
                    <input type="hidden" name="action" value="order">
                    <table class="table table-striped">
                        <thead><tr><th>Hight</th><th>Length</th><th>Width</th><th>Material</th><th>Confirm</th><th></th></tr></thead>
                        <tbody>
                            

                                <td><input type="text" name="hight" placeholder="Hight in cm" id="hightInput"></td>
                                <td><input type="text" name="length" placeholder="Length in cm" id="lengthInput"></td>
                                <td><input type="text" name="width" placeholder="Width in cm" id="withInput"></td>
                                <td><input type="text" name="type" placeholder="material" id="typeInput"></td>
                                
                                                             <td> <select name=bottom id="option"><option value=1>none</option><option value=2><%= acc.getBottoms(2)%></option><option value=3><%= acc.getBottoms(3)%></option><option value=4><%= acc.getBottoms(4)%></option>
                                        <option value=5><%= acc.getBottoms(5)%></option><option value=6><%= acc.getBottoms(6)%></option><option value=7><%= acc.getBottoms(7)%></option>
                                        <option value=8><%= acc.getBottoms(8)%></option><option value=9><%= acc.getBottoms(9)%></option><option value=10><%= acc.getBottoms(10)%></option></td> 

                                
                                <td><input type="submit" name="action" value="Add Carport to shoppingcart"></td><td><span id="errorContainer"></span></td>
                            </tr>
                    </table>
                </form>
<% //if(option.value == 1 )%>

            </div>
                               <%
    DataMapper acc= new DataMapper();
    String Hight = request.getParameter("hight");
    String width = request.getParameter("length");
    String username = request.getParameter("bottom");
    String password = request.getParameter("topping");
    String quant = request.getParameter("qty");
    int bot = Integer.parseInt(Hight);
    int top = Integer.parseInt(width);
    int quanti = Integer.parseInt(quant);

%>

        <td> <%=Hight%></td>
    </body>
</html>
