package com.smartcart.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class selectController {

    @RequestMapping("/smartCart_select")
    public String smartCart_select() throws Exception{
        return "product/selectpage";
    }
}
