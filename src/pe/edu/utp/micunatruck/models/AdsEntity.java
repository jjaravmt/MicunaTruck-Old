package pe.edu.utp.micunatruck.models;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AdsEntity extends BaseEntity {


        private static String DEFAULT_SQL = "SELECT * FROM micunatruck.ads ";
        private static String DEFAULT_SQL_UPDATE = "UPDATE micunatruck.ads SET ";

    private List<Ads> findByCriteria(String sql){
        List<Ads> ads;
        if(getConnection() != null){
            ads = new ArrayList<>();
            try {
                ResultSet resultSet = getConnection().createStatement()
                        .executeQuery(sql);
                while (resultSet.next()){
                    Ads region = new Ads()
                            .setId(resultSet.getInt("id"))
                            .setAdmin_id(resultSet.getInt("admin_id"))
                            .setName(resultSet.getString("name"))
                            .setDescription(resultSet.getString("description"))
                            .setImage(resultSet.getString("image"))
                            .setPrice(resultSet.getDouble("price"))
                            .setStart_date(resultSet.getDate("start_date"))
                            .setEnd_date(resultSet.getDate("end_date"))
                            .setFlagActive(resultSet.getBoolean("flag_active"))
                            ;
                    ads.add(region);
                }
                return ads;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return null;
    }



}