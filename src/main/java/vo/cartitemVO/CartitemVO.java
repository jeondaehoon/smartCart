package vo.cartitemVO;

import lombok.Data;

@Data
public class CartitemVO {
    private String cartitemId;
    private String cartId;
    private String userId;
    private String productId;
    private String categoryId;
    private String quantity;
    private String price;
    private String addedAt;
}
