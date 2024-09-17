package com.example.mental_health.service.impl;

import com.example.mental_health.dto.response.NovelResponseDto;
import com.example.mental_health.entity.NovelEntity;
import com.example.mental_health.repository.NovelRepository;
import com.example.mental_health.service.INovelService;
import com.example.mental_health.converter.NovelConverter; // Import lớp converter
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.PageImpl;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

@Service
public class NovelServiceImpl implements INovelService {

    @Autowired
    private NovelRepository novelRepository;

    @Autowired
    private NovelConverter novelConverter; // Inject converter

    @Override
    public Page<NovelResponseDto> getAllNovels(int page, int size) {
        PageRequest pageRequest = PageRequest.of(page, size);
        Page<NovelEntity> novelEntities = novelRepository.findAll(pageRequest);
        return novelEntities.map(novelConverter::entityToDto);
    }

    public List<NovelResponseDto> getRandomNovels() {
        List<NovelEntity> novelEntities = novelRepository.findRandomHotNovels();
        return novelConverter.entitiesToListDto(novelEntities);
//        return novelEntities.stream().map(novelConverter::entityToDto).collect(Collectors.toList());
    }
}
