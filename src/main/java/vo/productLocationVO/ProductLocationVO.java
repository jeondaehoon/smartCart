package vo.productLocationVO;

import lombok.Data;

@Data
public class ProductLocationVO {
    private String locationId;
    private String productId;
    private String locationImage;
    private String locationDescription;
    private String createdAt;
    private String updatedAt;
}
