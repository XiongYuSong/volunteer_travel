package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.model.Attractions;
import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.service.ReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author Xiong YuSong
 * @Date 2019/4/10
 */
@Controller
public class IndexController {

    @Autowired
    private ReserveService reserveService;

    @RequestMapping("/")
    public String index(Model model){
        List<Hotel> top10Hotel = reserveService.getTop10Hotel();
        List<Attractions> top10Attractions = reserveService.getTop10Attractions();
        model.addAttribute("top10Hotel", top10Hotel);
        model.addAttribute("top10Attractions", top10Attractions);
        return "index";
    }
}
