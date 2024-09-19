package com.example.mental_health.repository;

import com.example.mental_health.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {
    Optional<UserEntity> findByUsername(String username);

    @Query("select u from UserEntity u where u.username LIKE %:keyword% or u.email LIKE %:keyword%")
    Optional<UserEntity> searchByKeyword(String keyword);

    Optional<Object> findByEmail(String email);
}
