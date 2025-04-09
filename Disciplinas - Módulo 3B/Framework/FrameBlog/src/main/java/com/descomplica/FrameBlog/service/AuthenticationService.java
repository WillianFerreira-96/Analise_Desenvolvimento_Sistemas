package com.descomplica.FrameBlog.service;

import com.descomplica.FrameBlog.request.AuthRequest;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface AuthenticationService {
    UserDetails loadUserByUserName(String login) throws UsernameNotFoundException;

    String getToken(AuthRequest auth);

    String validateJwtToken(String token);
}
