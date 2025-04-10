package com.smartcart.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;
import vo.userVO.UserVO;
import com.smartcart.login.service.loginService;

@Controller
public class loginController {

    @Autowired
    loginService service;

    @RequestMapping("/smartCart_login")
    public String smartCart_login(@ModelAttribute UserVO vo, Model model) throws Exception{
        model.addAttribute("url", vo.getUrl());
        return "login/loginpage";
    }

    @RequestMapping("/smartCart_phonelogin")
    @ResponseBody
    public boolean getLogin(@ModelAttribute UserVO vo) throws Exception{
        UserVO uvo = service.getLogin(vo);
        if(uvo != null) {
            return true;
        } else {
            return false;
        }
    }

}
