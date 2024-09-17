package com.example.mental_health.repository;

import com.example.mental_health.entity.NovelEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NovelRepository extends JpaRepository<NovelEntity, Long> {
    @Query(value = "SELECT * FROM novel WHERE is_hot = true ORDER BY RAND() LIMIT 8", nativeQuery = true)
    List<NovelEntity> findRandomHotNovels();
}
