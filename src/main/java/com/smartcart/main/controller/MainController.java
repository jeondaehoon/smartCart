package com.smartcart.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/smartCart_main")
    public String smartCart_main() throws Exception{
        return "main/startpage";
    }
}
