package vo.adminVO;

import lombok.Data;

@Data
public class AdminVO {
    private String adminId;
    private String adminName;
    private String password;
    private String permissionLevel;
    private String lastLogin;
    private String cteatedAt;
}
