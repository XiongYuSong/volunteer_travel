package hue.edu.xiong.volunteer_travel.service;


import hue.edu.xiong.volunteer_travel.core.Result;
import hue.edu.xiong.volunteer_travel.core.ResultGenerator;
import hue.edu.xiong.volunteer_travel.core.ServiceException;
import hue.edu.xiong.volunteer_travel.model.User;
import hue.edu.xiong.volunteer_travel.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserCenterService {

    @Autowired
    private UserRepository userRepository;

    public User getUser(String value) {
        return userRepository.findUserByUsername(value);
    }

    public Result centerEdit(User user) {
        Optional<User> optional = userRepository.findById(user.getId());
        User oldUser = optional.get();
        if (oldUser == null){
            ResultGenerator.genFailResult("查无此人");
        }
        oldUser.setName(user.getName());
        userRepository.save(oldUser);
        return ResultGenerator.genSuccessResult();
    }
}
