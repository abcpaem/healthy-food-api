package ateam.techreturners.healthyfood.service;

import ateam.techreturners.healthyfood.model.User;
import ateam.techreturners.healthyfood.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    @Override
    public List<User> getAllUsers() {
        List<User> books = new ArrayList<>();
        userRepository.findAll().forEach(books::add);
        return books;
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).get();
    }

    @Override
    public User insertIntoUser(User user) {
        if (user.getId() != null && userRepository.existsById(user.getId()))
            throw new IllegalArgumentException();
        return userRepository.save(user);
    }

    @Override
    public void deleteUserById(Long id) {

    }

    @Override
    public void updateUserById(Long id, User user) {
        user.setId(id);
        userRepository.save(user);
    }
}