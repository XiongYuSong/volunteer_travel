package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/1
 */
@Controller
@RequestMapping("/system")
public class SystemController {
    @Autowired
    private SystemService systemService;


    @RequestMapping("")
    public String loginUI() {
        return "system/login/login";
    }

    @RequestMapping("/login")
    public String login() {
        return "system/user/list";
    }

    @RequestMapping("/logout")
    public String logout() {
        return "system/base/layout";
    }
//    @RequestMapping("/login")
//    @ResponseBody
//    public Result login(Model model, User user, HttpServletResponse response) {
//        return systemService.login(user, response);
//    }
}
