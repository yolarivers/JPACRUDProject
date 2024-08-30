package com.skilldistillery.colormind.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.skilldistillery.colormind.entities.User;
import com.skilldistillery.colormind.repositories.UserActivityRepository;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserActivityRepository userActivityRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userActivityRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return new org.springframework.security.core.userdetails.User(user.getUsername(),
                user.getPassword(),
                user.isEnabled(),
                true, true, true,
                AuthorityUtils.createAuthorityList(user.getRole()));
    }
}
