package vo.discountVO;

import lombok.Data;

@Data
public class DiscountVO {
    private String discountId;
    private String productId;
    private String createdBy;
    private String startDate;
    private String endDate;
    private String discountRate;
    private String discountPrice;
    private String discountType;
    private String createdAt;
}
