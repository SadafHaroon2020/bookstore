package com.mod3.bookstore.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.sql.Date;

@JsonIgnoreProperties(value={"hibernateLazyInitializer","handler","fieldHandler"})
@Data
@Entity
@Table(name = "checkout")
public class Checkout {

    @Id
    @Column(name = "checkout_id", nullable = false)
    private String checkoutId = "uuid_generate_v4()";

    @Column(name = "customer_id", nullable = false)
    private String customerId;

    @Column(name = "transaction_type")
    private String transactionType;

    @Column(name = "transaction_date", nullable = false)
    private Date transactionDate;

}
