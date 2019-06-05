package hue.edu.xiong.volunteer_travel.service;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.core.ResultGenerator;
import hue.edu.xiong.volunteer_travel.core.ServiceException;
import hue.edu.xiong.volunteer_travel.enums.StatusEnum;
import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.model.SysUser;
import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.repository.HotelRepository;
import hue.edu.xiong.volunteer_travel.repository.SysUserRepository;
import hue.edu.xiong.volunteer_travel.repository.UserRepository;
import hue.edu.xiong.volunteer_travel.util.CookieUitl;
import hue.edu.xiong.volunteer_travel.util.IdGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.thymeleaf.util.StringUtils;

import javax.persistence.criteria.Predicate;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/1
 */
@Service
public class SystemService {

    @Autowired
    private SysUserRepository sysUserRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HotelRepository hotelRepository;

    public Result login(SysUser sysUser, HttpServletResponse response) {


        SysUser sysUserByUsrname = sysUserRepository.findSysUserByUsername(sysUser.getUsername());
        if (sysUserByUsrname == null){
             return ResultGenerator.genFailResult("用户名错误！");
        }else{
            if (sysUser.getPassword().equals(sysUserByUsrname.getPassword())){
                CookieUitl.set(response,"username",sysUser.getUsername(),3600);
                return ResultGenerator.genSuccessResult();
            }else{
                return  ResultGenerator.genFailResult("密码错误");
            }
        }

    }

    public void logout(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie = CookieUitl.get(request, "username");
        if (cookie != null) {
            CookieUitl.set(response, "username", null, 0);
        }
    }

    public Page<User> getUserPage(Pageable pageable) {
        Page<User> userPage = userRepository.findAll((root,query,cb) ->{
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("id")));
            return null;
        },pageable);
        return userPage;
    }


    public Page<Hotel> getHotelPage(Pageable pageable) {
        Page<Hotel> hotelPage = hotelRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("createDate")));
            return null;
        }, pageable);
        return hotelPage;
    }

    @Transactional(rollbackFor = Exception.class)
    public Result saveHotel(Hotel hotel) {
        hotel.setImage("");
        if (StringUtils.isEmpty(hotel.getId())) {//没有id的情况
            hotel.setId(IdGenerator.id());
            if (hotel.getStatus() == null) {
                //默认为停用
                hotel.setStatus(StatusEnum.DOWM_STATUS.getCode());
            }
        } else {
            //有id的情况
            Hotel oldHotel = getHotelById(hotel.getId());
            hotel.setStatus(oldHotel.getStatus());
            hotel.setCreateDate(oldHotel.getCreateDate());
        }
        hotelRepository.saveAndFlush(hotel);
        return ResultGenerator.genSuccessResult();
    }

    public Hotel getHotelById(String id) {
        Hotel hotel = hotelRepository.findById(id).orElseThrow(() -> new ServiceException("酒店ID错误!"));
        return hotel;
    }

    public Result updateStatus(String id) {
        Hotel hotel = getHotelById(id);
        if (hotel.getStatus().equals(StatusEnum.DOWM_STATUS.getCode())) {
            //改变状态
            hotel.setStatus(StatusEnum.UP_STATUS.getCode());
        } else {
            hotel.setStatus(StatusEnum.DOWM_STATUS.getCode());
        }
        hotelRepository.saveAndFlush(hotel);
        return ResultGenerator.genSuccessResult();
    }
}
