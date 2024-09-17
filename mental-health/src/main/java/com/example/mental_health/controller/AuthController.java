package com.example.mental_health.controller;

import com.example.mental_health.dto.request.LoginRequestDto;
import com.example.mental_health.dto.request.RegisterRequestDto;
import com.example.mental_health.dto.response.AuthResponseDto;
import com.example.mental_health.dto.response.ResponseSuccess;
import com.example.mental_health.entity.UserEntity;
import com.example.mental_health.service.IAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private IAuthService authService;

    @PostMapping("/login")
    public ResponseSuccess<?> login(@RequestBody LoginRequestDto loginRequest) {
        try {
            // Xác thực người dùng và lấy token
            String token = authService.authenticate(loginRequest.getUsername(), loginRequest.getPassword());

            // Lấy thông tin người dùng từ username
            UserEntity user = authService.findByUsername(loginRequest.getUsername());

            // Trả về token, readername và avatar
            return new ResponseSuccess<>(HttpStatus.OK, "Login success",
                    new AuthResponseDto(token, user.getReaderName(), user.getAvatar()));
        } catch (Exception e) {
            return new ResponseSuccess<>(HttpStatus.UNAUTHORIZED,"Invalid login credentials");
        }
    }

    @PostMapping("/register")
    public ResponseEntity<?> register(@RequestBody RegisterRequestDto registerRequest) {
        try {
            // Đăng ký người dùng
            UserEntity newUser = authService.register(registerRequest.getUsername(), registerRequest.getPassword(),
                    registerRequest.getAvatar(), registerRequest.getRole());

            // Trả về thông tin người dùng mới
            return ResponseEntity.status(HttpStatus.CREATED).body(newUser);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Error registering user");
        }
    }
}
