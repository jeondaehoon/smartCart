package vo.userVO;

import lombok.Data;

@Data
    public class UserVO {
    private String userId;
    private String userName;
    private String password;
    private String point;
    private String createdAt;
    private String lastLogin;
    private String status;

    private String url;
}
