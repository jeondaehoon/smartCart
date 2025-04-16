package com.smartcart.product.dao;

import org.springframework.stereotype.Repository;
import java.util.List;
import vo.categoryVO.CategoryVO;   
import vo.productVO.ProductVO;

@Repository
public interface selectDao {
    List<CategoryVO> categoryList() throws Exception;
    List<ProductVO> getProductsByCategory(String categoryId) throws Exception;
}
