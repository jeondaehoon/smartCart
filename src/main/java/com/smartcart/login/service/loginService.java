package com.smartcart.login.service;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.smartcart.login.dao.loginDao;
import vo.userVO.UserVO;

@Service
public class loginService {
    @Autowired
    loginDao dao;

    public UserVO getLogin(UserVO vo) throws Exception{
        return dao.getLogin(vo);
    }

}
