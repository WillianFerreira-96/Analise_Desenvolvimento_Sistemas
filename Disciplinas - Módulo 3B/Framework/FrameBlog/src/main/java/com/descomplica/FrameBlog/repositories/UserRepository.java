package com.descomplica.FrameBlog.repositories;

import com.descomplica.FrameBlog.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    static User findByUserName(String userName) {

    }

    User findByUsername(String login);
}
