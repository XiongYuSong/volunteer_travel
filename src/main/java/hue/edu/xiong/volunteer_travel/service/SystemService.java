package hue.edu.xiong.volunteer_travel.service;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.core.ResultGenerator;
import hue.edu.xiong.volunteer_travel.core.ServiceException;
import hue.edu.xiong.volunteer_travel.enums.StatusEnum;
import hue.edu.xiong.volunteer_travel.model.Attractions;
import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.model.SysUser;
import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.repository.HotelRepository;
import hue.edu.xiong.volunteer_travel.repository.SysUserRepository;
import hue.edu.xiong.volunteer_travel.repository.UserRepository;
import hue.edu.xiong.volunteer_travel.repository.AttractionsRepository;
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
import java.util.Date;
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

    @Autowired
    private AttractionsRepository attractionsRepository;


    public Result login(SysUser sysUser, HttpServletResponse response) {


        SysUser sysUserByUsrname = sysUserRepository.findSysUserByUsername(sysUser.getUsername());
        if (sysUserByUsrname == null){
             return ResultGenerator.genFailResult("用户名错误！");
        }else{
            if (sysUser.getPassword().equals(sysUserByUsrname.getPassword())){
                CookieUitl.set(response,"sysUsername",sysUser.getUsername(),3600);
                return ResultGenerator.genSuccessResult();
            }else{
                return  ResultGenerator.genFailResult("密码错误");
            }
        }

    }

    public void logout(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie = CookieUitl.get(request, "sysUsername");
        if (cookie != null) {
            CookieUitl.set(response, "sysUsername", null, 0);
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

    @Transactional(rollbackFor = Exception.class)
    public Result saveUser(User user) {

        System.out .println(user.getId());


        if (StringUtils.isEmpty(user.getId())) {//没有id的情况
            user.setId(IdGenerator.id());
        }else{
            User oldUser = getUserById(user.getId());
            user.setUsername(oldUser.getUsername());
            user.setName(oldUser.getName());
            oldUser.setPassword(user.getPassword());
        }

        userRepository.saveAndFlush(user);
        return ResultGenerator.genSuccessResult();
    }

    public User getUserById(String id) {
        User user = userRepository.findById(id).orElseThrow(() -> new ServiceException("用户ID错误"));
        return user;
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
                hotel.setCreateDate(new Date());
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

    public Page<Attractions> getAttractionsPage(Pageable pageable) {
        Page<Attractions> attractionsPage = attractionsRepository.findAll((root, query, cb) -> {
            List<Predicate> predicates = new ArrayList<>();
            query.where(predicates.toArray(new Predicate[]{}));
            query.orderBy(cb.desc(root.get("createDate")));
            return null;
        }, pageable);
        return attractionsPage;
    }

    public Attractions getAttractionsById(String id) {
        Attractions attractions = attractionsRepository.findById(id).orElseThrow(() -> new ServiceException("景点ID错误"));
        return attractions;
    }

    public Result updateAttractionsStatus(String id) {
        Attractions attractions = getAttractionsById(id);
        if (attractions.getStatus().equals(StatusEnum.DOWM_STATUS.getCode())) {
            //改变状态
            attractions.setStatus(StatusEnum.UP_STATUS.getCode());
        } else {
            attractions.setStatus(StatusEnum.DOWM_STATUS.getCode());
        }
        attractionsRepository.saveAndFlush(attractions);
        return ResultGenerator.genSuccessResult();
    }

    @Transactional(rollbackFor = Exception.class)
    public Result saveAttractions(Attractions attractions) {
        attractions.setImage("");
        if (StringUtils.isEmpty(attractions.getId())) {//没有id的情况
            attractions.setId(IdGenerator.id());
            if (attractions.getStatus() == null) {
                //默认为停用
                attractions.setStatus(StatusEnum.DOWM_STATUS.getCode());
                attractions.setCreateDate(new Date());
            }
        } else {
            //有id的情况
            Attractions oldAttractions = getAttractionsById(attractions.getId());
            attractions.setStatus(oldAttractions.getStatus());
            attractions.setCreateDate(oldAttractions.getCreateDate());
        }
        attractionsRepository.saveAndFlush(attractions);
        return ResultGenerator.genSuccessResult();
    }
}
