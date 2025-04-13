package vo.adminLogVO;

import lombok.Data;

@Data
public class AdminLogVO {
    private String logId;
    private String adminId;
    private String actionType;
    private String actionDetail;
    private String actionTime;
}
