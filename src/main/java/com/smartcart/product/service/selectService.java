package com.smartcart.product.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.smartcart.product.dao.selectDao;
import java.util.List;
import vo.categoryVO.CategoryVO;
import vo.productVO.ProductVO;

@Service
public class selectService {

    @Autowired
    selectDao dao;

    public List<CategoryVO> categoryList() throws Exception {
        return dao.categoryList();
    }

    public List<ProductVO> getProductsByCategory(String categoryId) throws Exception {
        return dao.getProductsByCategory(categoryId);
    }
}
