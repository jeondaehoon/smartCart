package vo.paymentVO;

import lombok.Data;

@Data
public class PaymentVO {
    private String paymentId;
    private String cartId;
    private String userId;
    private String amount;
    private String paymentDate;
    private String status;
    private String isCancelled;
}
