package vo.categoryVO;

import lombok.Data;

@Data
public class CategoryVO {
    private String categoryId;
    private String createdBy;
    private String updatedBy;
    private String categoryName;
    private String createdAt;
    private String updatedAt;
    private String isActive;
}
