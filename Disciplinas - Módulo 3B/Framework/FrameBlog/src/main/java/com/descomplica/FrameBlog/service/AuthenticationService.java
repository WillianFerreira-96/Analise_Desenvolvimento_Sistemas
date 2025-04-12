package com.descomplica.FrameBlog.service;

import com.descomplica.FrameBlog.request.AuthRequest;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface AuthenticationService extends UserDetails{
    UserDetails loadUserByUsername(String login) throws UsernameNotFoundException;

    String getToken(AuthRequest auth);

    String validateJwtToken(String token);
}
