package com.descomplica.FrameBlog.repositories.v2;

import com.descomplica.FrameBlog.models.v2.UserV2;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepositoryV2 extends JpaRepository<UserV2, Long> {
    UserV2 findByUsername(String login);
}
