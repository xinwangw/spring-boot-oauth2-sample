package com.nari.oauth2.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class MeApi {

    @GetMapping("/me")
    public String getTest() {
        return "me";
    }

    @GetMapping("/me/test")
    public String getTest1() {
        return "me/test";
    }
}
