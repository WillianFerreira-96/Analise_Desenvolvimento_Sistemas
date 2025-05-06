package com.descomplica.FrameBlog.service.impl;

import com.descomplica.FrameBlog.models.UserV2;
import com.descomplica.FrameBlog.repositories.UserRepository;
import com.descomplica.FrameBlog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public UserV2 save(final UserV2 userV2) {
        UserV2 existingUserV2 = userRepository.findByUsername(userV2.getUsername());
        if (Objects.nonNull(existingUserV2)) {
            throw new RuntimeException("Existing User");
        }

        String passwordHash = passwordEncoder.encode(userV2.getPassword());
        UserV2 entity = new UserV2(userV2.getUserId(), userV2.getName(), userV2.getEmail(), userV2.getUsername(), userV2.getPassword(), userV2.getRole());
        UserV2 newUserV2 = userRepository.save(entity);
        return new UserV2(newUserV2.getUserId(), newUserV2.getName(), newUserV2.getEmail(), newUserV2.getUsername(), newUserV2.getPassword(), newUserV2.getRole());
    }

    @Override
    public List<UserV2> getAll(){
        return userRepository.findAll();
    }

    @Override
    public UserV2 get(long id){
        return userRepository.findById(id).orElseThrow(null
               // ()-> new EntityNotFoundException("User not found")
        );
    }

    @Override
    public UserV2 update(final long id, final UserV2 userV2){
        UserV2 userV2Updated = userRepository.findById(id).orElse(null);
        if(Objects.nonNull(userV2Updated)) {
            String passwordHash = passwordEncoder.encode(userV2.getPassword());
            userV2Updated.setName(userV2.getName());
            userV2Updated.setEmail(userV2.getEmail());
            userV2Updated.setPassword(userV2.getPassword());
            userV2Updated.setRole(userV2.getRole());
            userV2Updated.setUsername(userV2.getUsername());
            return userRepository.save(userV2Updated);
        }
        return null;
    }

    public void delete(long id){
        userRepository.deleteById(id);
    }
}
