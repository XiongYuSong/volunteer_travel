package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.service.ReserveService;
import hue.edu.xiong.volunteer_travel.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/5
 */
@Controller
@RequestMapping("/reserve")
public class ReserveController {

    @Autowired
    private ReserveService reserveService;

    @RequestMapping("/reserveHotelListUI")
    public String reserveHotelListUI(Model model, @ModelAttribute("searchName") String searchName, @PageableDefault(size = 10) Pageable pageable) {
        Page<Hotel> page = reserveService.reserveHotelListUI(searchName,pageable);
        model.addAttribute("page", page);
        return "reserve/reserve-hotel";
    }

    @RequestMapping("/hotelDetailsUI")
    public String hotelDetailsUI(Model model, @RequestParam(name = "id") String id) {
        Hotel hotel = reserveService.findHotelById(id);
        model.addAttribute("hotel", hotel);
        return "reserve/reserve-hotel-details";
    }
}
