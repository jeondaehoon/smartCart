package vo.productVO;

import lombok.Data;

@Data
public class ProductVO {
    private String productId;
    private String categoryId;
    private String createdBy;
    private String updatedBy;
    private String productName;
    private String price;
    private String imageUrl;
    private String createdAt;
    private String updatedAt;
    private String status;
}
