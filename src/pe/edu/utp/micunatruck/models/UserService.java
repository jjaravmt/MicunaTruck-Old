package pe.edu.utp.micunatruck.models;

import java.sql.Connection;
import java.util.List;

public class UserService{
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
	

    public EventsEntity getEventsEntity() {
        if(getConnection() != null){
            if(regionsEntity == null){
                regionsEntity = new EventsEntity();
                regionsEntity.setConnection(getConnection());
            }
        }
        return regionsEntity;
    }

    public List<Event> findAllEvents() {
        return getEventsEntity() != null ? getEventsEntity().findAll() : null;
    }

    public Event findEventById(int id){
        return getEventsEntity() != null ? getEventsEntity().findById(id) : null;
    }

    public Event createEvent(int userId, int eventStatusId, String name, String description, String image){
        return getEventsEntity() != null ? getEventsEntity().create(userId, eventStatusId, name, description, image) : null;
    }

    public Boolean deleteEvent(int id){
        return getEventsEntity() != null ? getEventsEntity().delete(id) : false;
    }

    public Boolean updateEvent(Event region){
        return getEventsEntity() != null ? getEventsEntity().update(region) : false;
    }

}
