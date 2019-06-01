package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/1
 */
@Controller
@RequestMapping("/user")
public class UserCenterController {

    @RequestMapping("/centerUI")
    public String centerUI(Model model) {
        //1.cookie中取出username(不可能重复的)
        //2.从数据库中取出user
        //3.将user放到前端
        //4.渲染数据
        User user = new User();
        user.setUsername("xiognxxxxxxx");
        user.setPassword("123123123123123");
        model.addAttribute("user", user);
        return "center/user-center";
    }

    @RequestMapping("/centerEditUI")
    public String centerEditUI(Model model) {
        User user = new User();
        user.setUsername("xiognxxxxxxx");
        user.setPassword("123123123123123");
        user.setName("xiong");
        model.addAttribute("user", user);
        return "center/user-center-edit";
    }

    @RequestMapping("/centerEditPWUI")
    public String centerEditPWUI(Model model) {
        User user = new User();
        model.addAttribute("id", user.getId());
        return "center/user-center-editpw";
    }
}
