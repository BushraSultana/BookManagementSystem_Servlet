package Service;
import Entity.Book;
import Interface.IBookCrud;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;

import javax.swing.text.html.parser.Entity;
import java.util.List;


//interact with database
public class IBookCrud_Impl implements IBookCrud {


    @Override
    public void addBook(Book book) {
        EntityManager entityManager = myConfigurationClass.getConnection().createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();

        entityManager.persist(book);
        transaction.commit();

        entityManager.close();

    }



    @Override
    public void updateBook(Book book) {
        EntityManager entityManager = myConfigurationClass.getConnection().createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();


        entityManager.merge(book);
        transaction.commit();

        entityManager.close();
    }

    @Override
    public void deleteBook(int id) {

        EntityManager entityManager = myConfigurationClass.getConnection().createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();

        Book book = entityManager.find(Book.class, id);
        entityManager.remove(book);
        transaction.commit();
        entityManager.close();
    }

    @Override
    public  List<Book> getAllBook() {

        EntityManager entityManager = myConfigurationClass.getConnection().createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        List<Book> books = null;
        transaction.begin();

        // 1️⃣ Create CriteriaBuilder
        CriteriaBuilder cb = entityManager.getCriteriaBuilder();

        // 2️⃣ Create CriteriaQuery
        CriteriaQuery<Book> cq = cb.createQuery(Book.class);

        // 3️⃣ Specify FROM clause → Book table
        Root<Book> root = cq.from(Book.class);

        // 4️⃣ Select all
        cq.select(root);

        // 5️⃣ Execute query
        books = entityManager.createQuery(cq).getResultList();

        transaction.commit();
        return books;

    }

    @Override
    public Book getBookById(int id) {
        EntityManager entityManager = myConfigurationClass.getConnection().createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();

        Book book = entityManager.find(Book.class, id);
        transaction.commit();
        entityManager.close();
        return  book;


    }
}
