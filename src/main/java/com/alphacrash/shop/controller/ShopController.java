package com.alphacrash.shop.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/")
public class ShopController {

    @GetMapping("/shop")
    public String shop() {
        return "shop";
    }
}
