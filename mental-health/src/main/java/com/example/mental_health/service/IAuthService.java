package com.example.mental_health.service;

import com.example.mental_health.entity.UserEntity;

public interface IAuthService {
    String authenticate(String username, String password);
    UserEntity register(String username, String password, String avatar, String role);
    UserEntity findByUsername(String username);
}

