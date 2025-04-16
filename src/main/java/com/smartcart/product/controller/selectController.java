package com.smartcart.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.List;
import com.smartcart.product.service.selectService;

import vo.categoryVO.CategoryVO;
import vo.productVO.ProductVO;

@Controller
public class selectController {

    @Autowired
    selectService service;

    @RequestMapping("/smartCart_select")
    public String smartCart_select() throws Exception{
        return "product/selectpage";
    }

    @RequestMapping("/smartCart_select/categorylist")
    @ResponseBody
    public List<CategoryVO> categoryList() throws Exception{
        List<CategoryVO> list = service.categoryList();
        return list;
    }

    @RequestMapping("/smartCart_select/products/{categoryId}")
    @ResponseBody
    public List<ProductVO> getProductsByCategory(@PathVariable String categoryId) throws Exception {
        return service.getProductsByCategory(categoryId);
    }
}
