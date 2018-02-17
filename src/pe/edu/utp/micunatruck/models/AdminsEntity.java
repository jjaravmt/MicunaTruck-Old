package pe.edu.utp.micunatruck.models;

import java.util.List;

public class AdminsEntity extends BaseEntity {

    public static String DEFAULT_SQL="SELECT * FROM admins";

    private List<Admin> findByCriteria(String sql){
        List<Admin> admins;
        if (getConnection()!=null){
            return admins;
        }
        return null;
    }

    public Admin findById(int id){
        List<Admin> admins;
        return (admins!=null?admins.get(0):null);
    }

}
