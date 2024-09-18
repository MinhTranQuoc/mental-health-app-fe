package com.example.mental_health.service;

import com.example.mental_health.entity.UserEntity;

public interface IAuthService {
    String authenticate(String username, String password);
    UserEntity register(String username, String password, String email);
    UserEntity findByUsername(String username);
}

