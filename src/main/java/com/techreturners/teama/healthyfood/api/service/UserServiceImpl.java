package com.techreturners.teama.healthyfood.api.service;

import com.techreturners.teama.healthyfood.api.config.UserSecurityConfig;
import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;

import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

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

    @SneakyThrows({NoSuchAlgorithmException.class, InvalidKeySpecException.class})
    @Override
    public void updateUserById(Long id, User user) {
        // Check if there is no other user with the same email
        Optional<User> existingUser = userRepository.getUserByEmail(user.getEmail());
        if (existingUser.isPresent() && existingUser.get().getId() != id)
            throw new IllegalArgumentException();

        user.setId(id);
        user.setPassword(UserSecurityConfig.generatePasswordHash(user.getPassword()));
        userRepository.save(user);
    }
}
