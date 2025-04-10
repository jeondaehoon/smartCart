package com.smartcart.login.dao;

import org.springframework.stereotype.Repository;
import vo.userVO.UserVO;

@Repository
public interface loginDao {

    public UserVO getLogin(UserVO vo) throws Exception;
}
