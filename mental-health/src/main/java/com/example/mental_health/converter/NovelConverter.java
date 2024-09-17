package com.example.mental_health.converter;

import com.example.mental_health.dto.response.NovelResponseDto;
import com.example.mental_health.entity.NovelEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class NovelConverter {
    public NovelResponseDto entityToDto(NovelEntity novelEntity) {
        return NovelResponseDto.builder()
                .id(novelEntity.getId())
                .title(novelEntity.getTitle())
                .chapter(novelEntity.getChapter())
                .updated(novelEntity.getUpdated())
                .isHot(novelEntity.getIsHot())
                .avatar(novelEntity.getAvatar())
                .img(novelEntity.getImg())
                .build();
    }
    public List<NovelResponseDto> entitiesToListDto(List<NovelEntity> novelEntities) {
        List<NovelResponseDto> result = new ArrayList<>();
        novelEntities.forEach(entity -> result.add(this.entityToDto(entity)));
        return result;
    }
    public NovelEntity dtoToEntity(NovelResponseDto novelResponseDto) {
        return NovelEntity.builder()
                .id(novelResponseDto.getId())
                .title(novelResponseDto.getTitle())
                .chapter(novelResponseDto.getChapter())
                .updated(novelResponseDto.getUpdated())
                .isHot(novelResponseDto.getIsHot())
                .avatar(novelResponseDto.getAvatar())
                .img(novelResponseDto.getImg())
                .build();
    }
}
