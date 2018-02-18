package pe.edu.utp.micunatruck.models;

import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class AdminsEntity extends BaseEntity {

    public static String DEFAULT_SQL = "SELECT * FROM admins";

    private List<Admin> findByCriteria(String sql) {
        List<Admin> admins = null;
        boolean indHasData = false;
        if (getConnection() != null) {
            admins = new ArrayList<>();
            try {
                ResultSet resultSet = getConnection().createStatement().executeQuery(sql);
                while (resultSet.next()) {
                    indHasData = true;
                    Admin region = new Admin()
                            .setId(resultSet.getInt("id"))
                            .setLastName(resultSet.getString("name"))
                            .setLastName(resultSet.getString("lastname"))
                            .setPhoto(resultSet.getString("photo"))
                            .setEmail(resultSet.getString("email"))
                            .setPassword(resultSet.getString("password"))
                            .setFlag_active(resultSet.getBoolean("flag_active"));
                    admins.add(region);
                }

                if (!indHasData)
                    admins = null;

                return admins;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;

    }
        public List<Admin> findAll(){
            return findByCriteria(DEFAULT_SQL + "WHERE flag_active = 1");
        }

    public Admin findById(int id){
        List<Admin> admins = findByCriteria(DEFAULT_SQL + " WHERE flag_active = 1 AND id = " + String.valueOf(id));
        return (admins) != null ? admins.get(0) : null;
    }


}
