package hue.edu.xiong.volunteer_travel.service;

import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.model.Hotel;
import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.repository.HotelRepository;
import hue.edu.xiong.volunteer_travel.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletResponse;

/**
 * @Author Xiong YuSong
 * @Date 2019/6/1
 */
@Service
public class SystemService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HotelRepository hotelRepository;

    public Result login(User user, HttpServletResponse response) {
        return null;
    }

    public Page<User> getUserPage(Pageable pageable) {
        Page<User> userPage = userRepository.findAll(pageable);
        return userPage;
    }

    public Page<Hotel> getHotelPage(Pageable pageable) {
        Page<Hotel> hotelPage = hotelRepository.findAll(pageable);
        return hotelPage;
    }
}
