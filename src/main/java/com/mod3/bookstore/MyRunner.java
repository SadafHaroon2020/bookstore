package com.mod3.bookstore;

import com.mod3.bookstore.entity.Book;
import com.mod3.bookstore.repository.BookRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;
import java.util.UUID;

@Component
public class MyRunner implements CommandLineRunner {

    private static final Logger logger = LoggerFactory.getLogger(MyRunner.class);

    @Autowired
    private BookRepository bookRepository;

    @Override
    @Transactional
    public void run(String... args) throws Exception {

        logger.info("initializing books");

//        var u1 = new Book("Paul", "Smith", "paul.smith@gmail.com");
//        bookRepository.save(u1);
//
//        var u2 = new Book("Robert", "Black", "rb34@gmail.com");
//        bookRepository.save(u2);
//
//        var u3 = new Book("John", "Doe", "jdoe@gmail.com");
//        bookRepository.save(u3);

//        Book book = bookRepository.getOne(UUID.fromString("00000000-0000-0000-0000-000000000001"));
//        System.out.println(book.getPublisher().getName());

        List<Book> books = bookRepository.findAll();
        System.out.println(books.get(0));
    }
}
