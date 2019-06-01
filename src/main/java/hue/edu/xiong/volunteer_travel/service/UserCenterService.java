package hue.edu.xiong.volunteer_travel.service;


import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserCenterService {

    @Autowired
    private UserRepository userRepository;

    public User getUser(String value) {
        return userRepository.findUserByUsername(value);
    }
}
