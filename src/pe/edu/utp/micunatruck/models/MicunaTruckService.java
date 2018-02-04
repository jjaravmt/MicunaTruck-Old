package pe.edu.utp.micunatruck.models;

import java.sql.Connection;
import java.util.List;

public class MicunaTruckService {
    private Connection connection;
    private UsersEntity regionsEntity;

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public UsersEntity getUsersEntity() {
        if(getConnection() != null){
            if(regionsEntity == null){
                regionsEntity = new UsersEntity();
                regionsEntity.setConnection(getConnection());
            }
        }
        return regionsEntity;
    }

    public List<User> findAllUsers() {
        return getUsersEntity() != null ? getUsersEntity().findAll() : null;
    }

    public User findRegionById(int id){
        return getUsersEntity() != null ? getUsersEntity().findById(id) : null;
    }

    public User createUser(int userTypeId, String name, String lastName, String legalName,
                             String description, String photo, String address, String telephone,
                             String email, String password, boolean flagActive){
        return getUsersEntity() != null ? getUsersEntity().create(userTypeId, name, lastName, legalName,
                description, photo, address, telephone,
                email, password, flagActive) : null;
    }

    public boolean deleteUser(int id){
        return getUsersEntity() != null ?
                getUsersEntity().delete(id) : false;
    }

    public boolean updateUser(User user){
        return getUsersEntity() != null ?
                getUsersEntity().update(user) : false;
    }
}
