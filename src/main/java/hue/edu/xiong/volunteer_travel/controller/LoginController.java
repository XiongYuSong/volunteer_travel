package hue.edu.xiong.volunteer_travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Xiong YuSong
 * @Date 2019/4/10
 */
@Controller
public class LoginController {

    @RequestMapping("/loginUI")
    public String loginUI() {
        return "login/index-login";
    }

    @RequestMapping("/login")
    public String login(Model model) {
        return "index";
    }

    @RequestMapping("/registerUI")
    public String registerUI() {
        return "login/index-register";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        return "index";
    }
}
