package hue.edu.xiong.volunteer_travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author Xiong YuSong
 * @Date 2019/4/18
 */
@Controller
public class InnController {

    @RequestMapping("/innIndexUI")
    public String index(){
        return "inn/inn-index";
    }
}
