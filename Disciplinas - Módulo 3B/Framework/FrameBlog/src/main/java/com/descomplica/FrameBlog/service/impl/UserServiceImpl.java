package com.descomplica.FrameBlog.service.impl;

import ch.qos.logback.classic.encoder.JsonEncoder;
import com.descomplica.FrameBlog.models.User;
import com.descomplica.FrameBlog.repositories.UserRepository;
import com.descomplica.FrameBlog.service.UserService;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public User save(final User user) {
        User existingUser = userRepository.findByUsername(user.getName());
        if (Objects.nonNull(existingUser)) {
            throw new RuntimeException("Exixting User");
        }

        String passwordHash = passwordEncoder.encode(user. getPassword());
        User entity = new User(user.getUserId(), user.getName(), user.getEmail(), user.getPassword(), user.getRole(), user.getUserName());
        User newUser = userRepository.save(entity);
        return new User(newUser.getUserId(), newUser.getName(), newUser.getEmail(), newUser.getPassword(), newUser.getRole(), newUser.getUserName());
    }

    @Override
    public List<User> getAll(){
        return userRepository.findAll();
    }

    @Override
    public User get(long id){
        return userRepository.findById(id).orElseThrow(
                ()-> new EntityNotFoundException("User not found")
        );
    }

    @Override
    public User update(final long id, final User user){
        User userUpdated = userRepository.findById(id).orElse(null);
        if(Objects.nonNull(userUpdated)) {
            String passwordHash = passwordEncoder.encode(user. getPassword());
            userUpdated.setName(user.getName());
            userUpdated.setEmail(user.getEmail());
            userUpdated.setPassword(user.getPassword());
            userUpdated.setRole(user.getRole());
            userUpdated.setUserName(user.getUserName());
            return userRepository.save(userUpdated);
        }
        return null;
    }

    public void delete(long id){
        userRepository.deleteById(id);
    }
}
