package hue.edu.xiong.volunteer_travel.controller;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.model.TravelStrategy;
import hue.edu.xiong.volunteer_travel.model.UserStrategy;
import hue.edu.xiong.volunteer_travel.service.StrategyService;
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

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/10
 */
@Controller
@RequestMapping("/strategy")
public class StrategyController {

    @Autowired
    private StrategyService strategyService;

    @RequestMapping("/travelStrategyListUI")
    public String travelStrategyListUI(Model model, @ModelAttribute("searchName") String searchName, @PageableDefault(size = 10) Pageable pageable) {
        Page<TravelStrategy> page = strategyService.TravelStrategyListUI(searchName, pageable);
        model.addAttribute("page", page);
        return "strategy/travelStrategy";
    }

    @RequestMapping("/travelStrategyDetailsUI")
    public String travelStrategyDetailsUI(Model model, HttpServletRequest request, @RequestParam(name = "id") String id) {
        TravelStrategy travelStrategy = strategyService.findTravelStrategyById(id);
        //如果用户显示已经关注,就是查看关注列表
        Boolean flag = strategyService.isStrategy(request, id);
        model.addAttribute("travelStrategy", travelStrategy);
        model.addAttribute("flag", flag);
        return "strategy/travelStrategy-details";
    }

    @RequestMapping("/cancelTravelStrategyReserve")
    @ResponseBody
    public Result cancelTravelStrategyReserve(HttpServletRequest request, String id) {
        return strategyService.cancelTravelStrategyReserve(request,id);
    }

    @RequestMapping("/strategyManageUI")
    public String strategyManageUI(Model model, HttpServletRequest request) {
        List<UserStrategy> userStrategyList = strategyService.getTravelStrategyByUser(request);
        model.addAttribute("userStrategyList", userStrategyList);
        return "strategy/strategy-manage";
    }

    @RequestMapping("/saveTravelStrategy")
    @ResponseBody
    public Result saveTravelStrategy(HttpServletRequest request,TravelStrategy travelStrategy) {
        return strategyService.saveTravelStrategy(request,travelStrategy);
    }

    @RequestMapping("/pushStrategyListUI")
    public String pushStrategyListUI(Model model, @ModelAttribute("searchName") String searchName, @PageableDefault(size = 10) Pageable pageable) {
        Page<TravelStrategy> page = strategyService.PushStrategyListUI(searchName, pageable);
        model.addAttribute("page", page);
        return "strategy/pushStrategy";
    }
}
