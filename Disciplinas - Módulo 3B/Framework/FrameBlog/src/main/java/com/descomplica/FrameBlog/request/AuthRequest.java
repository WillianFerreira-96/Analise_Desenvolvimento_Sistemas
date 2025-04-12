package com.descomplica.FrameBlog.request;

public class AuthRequest {
    final String userName;
    final String password;

    public AuthRequest(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }
}
