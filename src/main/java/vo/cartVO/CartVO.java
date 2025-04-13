package vo.cartVO;

import lombok.Data;

@Data
public class CartVO {
    private String cartId;
    private String userId;
    private String createAt;
    private String updatedAt;
}
