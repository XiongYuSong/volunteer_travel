package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.core.ResultGenerator;
import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.model.SysUser;
import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
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
    @ResponseBody
    public Result login(SysUser sysUser, HttpServletResponse response) {

       return systemService.login(sysUser,response);
    }
    @RequestMapping("/userListUI")
    public String userListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<User> page = systemService.getUserPage(pageable);
        model.addAttribute("page",page);
        return "system/user/list";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) {
       systemService.logout(request,response);
        return "redirect:/system";
    }

    @RequestMapping("/hotelListUI")
    public String hotelListUI(Model model, @PageableDefault(size = 10) Pageable pageable) {
        Page<Hotel> page = systemService.getHotelPage(pageable);
        model.addAttribute("page", page);
        return "system/hotel/list";
    }

    @RequestMapping("/saveHotel")
    @ResponseBody
    public Result saveHotel(Hotel hotel) {
        return systemService.saveHotel(hotel);
    }
    @RequestMapping("/updateStatus")
    @ResponseBody
    public Result updateStatus(String id) {
        return systemService.updateStatus(id);
    }

    @RequestMapping("/getHotelById")
    @ResponseBody
    public Result getHotelById(String id) {
        return ResultGenerator.genSuccessResult(systemService.getHotelById(id));
    }
}
