package com.descomplica.FrameBlog.service;

import com.descomplica.FrameBlog.request.AuthRequest;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface AuthenticationService extends UserDetailsService {
    String getToken(AuthRequest auth);

    String validateJwtToken(String token);
}
