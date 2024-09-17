package com.example.mental_health.service.Impl;

import com.example.mental_health.Component.JwtUtil;
import com.example.mental_health.entity.UserEntity;
import com.example.mental_health.repository.UserRepository;
import com.example.mental_health.service.IAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AuthServiceImpl implements IAuthService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public String authenticate(String username, String password) {
        // Tìm người dùng
        UserEntity user = userRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));

        // Kiểm tra mật khẩu
        if (passwordEncoder.matches(password, user.getPassword())) {
            // Tạo JWT nếu thành công
            return jwtUtil.generateToken(user);
        } else {
            throw new BadCredentialsException("Invalid username or password");
        }
    }

    @Override
    public UserEntity register(String username, String password, String avatar, String role) {
        // Kiểm tra xem người dùng đã tồn tại chưa
        if (userRepository.findByUsername(username).isPresent()) {
            throw new RuntimeException("User already exists");
        }

        // Mã hóa mật khẩu
        String encodedPassword = passwordEncoder.encode(password);

        // Tạo người dùng mới
        UserEntity newUser = UserEntity.builder()
                .username(username)
                .password(encodedPassword)
                .avatar(avatar)
                .role(role)
                .build();

        return userRepository.save(newUser);
    }

    // Thêm phương thức này để lấy thông tin người dùng
    @Override
    public UserEntity findByUsername(String username) {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
    }
}
