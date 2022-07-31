package com.techreturners.teama.healthyfood.api.config;

import com.techreturners.teama.healthyfood.api.model.User;
import com.techreturners.teama.healthyfood.api.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class AuthUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> user = userRepository.getUserByEmail(username);

        user.orElseThrow(() -> new UsernameNotFoundException("Not found " + username));

        return user.map(AuthUserDetails::new).get();
    }
}
