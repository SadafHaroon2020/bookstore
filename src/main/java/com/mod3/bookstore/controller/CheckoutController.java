package com.mod3.bookstore.controller;

import com.mod3.bookstore.entity.Checkout;
import com.mod3.bookstore.repository.CheckoutRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.net.URI;
import java.net.URISyntaxException;

@RestController
public class CheckoutController {

    @Autowired
    private CheckoutRepository checkoutRepository;

    @PostMapping("/checkout")
    public ResponseEntity createBook(@RequestBody Checkout checkout) throws URISyntaxException {
//        Checkout newCheckout checkoutRepository.save(checkout);
        return ResponseEntity.created(new URI("")).build();
    }
}
