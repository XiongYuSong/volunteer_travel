package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.model.UserHotel;
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
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

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
        Page<Hotel> page = reserveService.reserveHotelListUI(searchName, pageable);
        model.addAttribute("page", page);
        return "reserve/reserve-hotel";
    }

    @RequestMapping("/hotelDetailsUI")
    public String hotelDetailsUI(Model model, HttpServletRequest request, @RequestParam(name = "id") String id) {
        Hotel hotel = reserveService.findHotelById(id);
        //如果用户显示已经预约,就是查看预约列表
        Boolean flag = reserveService.isReserveHotel(request, id);
        model.addAttribute("hotel", hotel);
        model.addAttribute("flag", flag);
        return "reserve/reserve-hotel-details";
    }

    @RequestMapping("/reserveManageUI")
    public String reserveManageUI(Model model, HttpServletRequest request) {
        List<UserHotel> userHotelList = reserveService.getReserveHotelByUser(request);
        model.addAttribute("userHotelList", userHotelList);
        return "reserve/reserve-user-manage";
    }

    @RequestMapping("/cancelReserve")
    @ResponseBody
    public Result cancelReserve(HttpServletRequest request,String id) {
        return reserveService.cancelReserve(request,id);
    }
}
