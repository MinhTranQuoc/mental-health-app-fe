package com.example.mental_health.service;

import com.example.mental_health.dto.response.NovelResponseDto;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface INovelService {

    Page<NovelResponseDto> getAllNovels(int page, int size);

    List<NovelResponseDto> getRandomNovels();
}
