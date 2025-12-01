package Service;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class myConfigurationClass {
    public static EntityManagerFactory getConnection(){
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("book-unit");
        return entityManagerFactory;
    }
}
