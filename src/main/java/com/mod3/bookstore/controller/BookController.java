package com.mod3.bookstore.controller;

import com.mod3.bookstore.entity.Book;
import com.mod3.bookstore.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.UUID;

//@CrossOrigin(origins = { "http://localhost:3000", "http://localhost:4200" })
@RestController
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @GetMapping("/books")
    public List<Book> getAll() {
        return bookRepository.findAll();
    }

    @PostMapping("/books")
    public ResponseEntity create(@RequestBody Book book) throws URISyntaxException {
        Book newBook = bookRepository.save(book);
        return ResponseEntity.created(new URI(newBook.getBookId().toString())).build();
    }

    @GetMapping("/books/count")
    public Long count() {
        return bookRepository.count();
    }

    @GetMapping("/books/{id}")
    public Book get(@PathVariable String id) {
        return bookRepository.getOne(UUID.fromString(id));
    }

    @DeleteMapping("/books/{id}")
    public void delete(@PathVariable String id) {
        bookRepository.deleteById(UUID.fromString(id));
    }
}
