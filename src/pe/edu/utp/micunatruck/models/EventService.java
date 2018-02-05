package pe.edu.utp.micunatruck.models;

import java.sql.Connection;
import java.util.List;

public class EventService {
    private Connection connection;
    private EventsEntity eventsEntity;

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public EventsEntity getUsersEntity() {
        if(getConnection() != null){
            if(eventsEntity == null){
                eventsEntity = new EventsEntity();
                eventsEntity.setConnection(getConnection());
            }
        }
        return eventsEntity;
    }

    public List<Event> findAllEvents() {
        return getUsersEntity() != null ? getUsersEntity().findAll() : null;
    }
}
