package com.descomplica.FrameBlog.service.v2;

import com.descomplica.FrameBlog.models.UserV2;

import java.util.List;

public interface UserServiceV2 {
    UserV2 save(final UserV2 user);

    com.descomplica.FrameBlog.models.v2.UserV2 save(com.descomplica.FrameBlog.models.v2.UserV2 user);

    List<com.descomplica.FrameBlog.models.v2.UserV2> getAll();
    UserV2 get(long id);
    UserV2 update(long id, UserV2 user);
    void delete(long id);
}
