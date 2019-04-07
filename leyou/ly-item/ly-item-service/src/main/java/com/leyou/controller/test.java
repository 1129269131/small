package com.leyou.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RequestMapping("test")
public class test {

    @RequestMapping("list")
    public String test(){
        System.out.println("test");
        return "test...";
    }

}
