package com.mod3.bookstore.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.sql.Date;
import java.util.UUID;

@JsonIgnoreProperties(value={"hibernateLazyInitializer","handler","fieldHandler"})
@Data
@Entity
@Table(name = "book")
public class Book {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "book_id", nullable = false)
    private UUID bookId;// = "uuid_generate_v4()";

    @Column(name = "isbn", nullable = false)
    private String isbn;

    @Column(name = "publisher_id", nullable = false)
    private UUID publisherId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="publisher_id", insertable = false, updatable = false)
    private Publisher publisher;

    @Column(name = "author_id", nullable = false)
    private UUID authorId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="author_id", insertable = false, updatable = false)
    private Author author;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "description", nullable = false)
    private String description;

    @Column(name = "edition")
    private String edition;

    @Column(name = "price", nullable = false)
    private Float price;

    @Column(name = "category_id", nullable = false)
    private UUID categoryId;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="category_id", insertable = false, updatable = false)
    private Category category;

    @Column(name = "cover_image")
    private String coverImage;

    @Column(name = "dimensions")
    private String dimensions;

    @Column(name = "quantity", nullable = false)
    private Integer quantity = 0;

    @Column(name = "book_format")
    private String bookFormat;

    @Column(name = "publication_date", nullable = false)
    private Date publicationDate;

    @Column(name = "pages")
    private Integer pages;

}
