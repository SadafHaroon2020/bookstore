package com.mod3.bookstore.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@JsonIgnoreProperties(value={"hibernateLazyInitializer","handler","fieldHandler"})
@Data
@Entity
@Table(name = "checkout_book")
public class CheckoutBook {

    @Id
    @Column(name = "checkout_book_id", nullable = false)
    private String checkoutBookId = "uuid_generate_v4()";

    @Column(name = "book_id", nullable = false)
    private String bookId;

    @Column(name = "checkout_id", nullable = false)
    private String checkoutId;
}
