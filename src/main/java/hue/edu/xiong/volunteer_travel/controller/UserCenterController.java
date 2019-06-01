package hue.edu.xiong.volunteer_travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/1
 */
@Controller
@RequestMapping("/user")
public class UserCenterController {

    @RequestMapping("/centerUI")
    public String index(){
        return "center/user-center";
    }
}
