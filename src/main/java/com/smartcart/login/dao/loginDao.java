package com.smartcart.login.dao;

import org.apache.ibatis.annotations.Mapper;
import vo.userVO.UserVO;

@Mapper
public interface loginDao {

    public UserVO getLogin(UserVO vo) throws Exception;
}
