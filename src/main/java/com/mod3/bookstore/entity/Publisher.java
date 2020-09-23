package com.mod3.bookstore.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.UUID;

@JsonIgnoreProperties(value={"hibernateLazyInitializer","handler","fieldHandler"})
@Data
@Entity
@Table(name = "publisher")
public class Publisher {

//    @Type(type="org.hibernate.type.PostgresUUIDType")
    @Id
    @Column(name = "publisher_id", nullable = false)
    private UUID publisherId;// = "uuid_generate_v4()";

    @Column(name = "name", nullable = false)
    private String name;



}
