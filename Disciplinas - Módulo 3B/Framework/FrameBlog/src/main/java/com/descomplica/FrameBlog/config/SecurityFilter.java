package com.descomplica.FrameBlog.config;

import com.descomplica.FrameBlog.models.User;
import com.descomplica.FrameBlog.repositories.UserRepository;
import com.descomplica.FrameBlog.service.AuthenticationService;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

@Component
public class SecurityFilter extends OncePerRequestFilter {
     @Autowired

    private AuthenticationService authenticationService;

     @Autowired
    private UserRepository userRepository;

     @Override
    protected  void doFilterInternal(HttpRequest request,
         HttpResponse response,
         FilterChain filterChain)throws ServletException, IOException {
            String token = extractToken(request);

            if(token != null){
                String userName = authenticationService.validateJwtToken(token);
                User user = UserRepository.findByUserName(userName);

                var AuthenticationToken = new UsernamePasswordAuthenticationToken(user, null,user.getAuthorities());

                SecurityContextHolder.getContext().setAuthentication(AuthenticationToken);
            }
        filterChain.doFilter(request, response);
     }

    private String extractToken(HttpRequest request) {
         var authHeader = request.getHeader("Authorization");

         if (authHeader == null){
             return null;
         }
         if(!authHeader.split(" ")[0].equals("Bearer")){
             return null;
        }
         return authHeader.split(" ")[1];
    }
}
