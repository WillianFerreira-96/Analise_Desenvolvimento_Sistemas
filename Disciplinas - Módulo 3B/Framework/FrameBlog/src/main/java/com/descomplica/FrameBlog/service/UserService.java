package com.descomplica.FrameBlog.service;

import com.descomplica.FrameBlog.models.UserV2;

import java.util.List;

public interface UserService {
    UserV2 save(UserV2 userV2);
    List<UserV2> getAll();
    UserV2 get(long id);
    UserV2 update(long id, UserV2 userV2);
    void delete(long id);

}

