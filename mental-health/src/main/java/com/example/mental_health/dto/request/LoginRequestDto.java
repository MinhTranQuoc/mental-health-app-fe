package com.example.mental_health.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoginRequestDto {
    private String keyword;
    private String password;
}
