package vo.barcodeVO;

import lombok.Data;

@Data
public class BarcodeVO {
    private String barcodeId;
    private String productId;
    private String barcodeNumber;
    private String barcodeType;
    private String createdAt;
    private String updatedAt;
}
