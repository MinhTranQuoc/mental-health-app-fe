package com.example.mental_health.dto.response;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AuthResponseDto {
    private String token;
    private String readername;
    private String avatar;

    public AuthResponseDto(String token) {
        this.token = token;
    }

    public AuthResponseDto(String token, String readername, String avatar) {
        this.token = token;
        this.readername = readername;
        this.avatar = avatar;
    }

    // Getters and setters
}

