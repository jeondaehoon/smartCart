package vo.userVO;

import lombok.Data;

@Data
public class UserVO {
    private String userName;
    private String userPhone;
    private String createdAt;
    private String updateAt;
    private String isActive;
    private String birthDate;
    private String gender;
    private String email;
    private String address;

    private String url;
}
