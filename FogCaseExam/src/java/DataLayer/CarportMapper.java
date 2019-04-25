/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataLayer;

import Logic.CarportException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fskn
 */
public class CarportMapper {

    public String getRoofMaterial(int id) throws CarportException, SQLException {

        try {
            Connection conn = Connector.connection();
            String query = "SELECT ROOFMATERIALNAME FROM ROOFMATERIAL WHERE ID = " + id + ";";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery(query);

            if (rs.next()) {
                String name = rs.getString("roofmaterialname");
                return name;
            } else {
                throw new CarportException("Error");
            }
        } catch (ClassNotFoundException ex) {
            throw new CarportException(ex.getMessage());
        }
    }

}
