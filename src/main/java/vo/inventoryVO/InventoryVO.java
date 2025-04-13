package vo.inventoryVO;

import lombok.Data;

@Data
public class InventoryVO {
    private String inventoryId;
    private String productId;
    private String updatedBy;
    private String currentStock;
    private String minimumStock;
    private String maximumStock;
    private String lastUpdated;
}
