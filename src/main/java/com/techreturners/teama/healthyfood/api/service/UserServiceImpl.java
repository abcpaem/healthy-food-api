package com.techreturners.teama.healthyfood.api.service;

import com.techreturners.teama.healthyfood.api.config.UserSecurityConfig;
import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.repository.UserRepository;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    @Override
    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();
        userRepository.findAll().forEach(users::add);
        return users;
    }

    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).get();
    }

    @SneakyThrows({NoSuchAlgorithmException.class, InvalidKeySpecException.class})
    @Override
    public User insertIntoUser(User user) {
        if ((user.getId() != null && userRepository.existsById(user.getId()))
                || userRepository.getUserByEmail(user.getEmail()).isPresent())
            throw new IllegalArgumentException();

        user.setPassword(UserSecurityConfig.generatePasswordHash(user.getPassword()));
        return userRepository.save(user);
    }

    @Override
    public void deleteUserById(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public void updateUserById(Long id, User user) {
        user.setId(id);
        userRepository.save(user);
    }
}
