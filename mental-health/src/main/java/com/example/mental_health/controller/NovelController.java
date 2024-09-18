package com.example.mental_health.controller;

import com.example.mental_health.dto.response.NovelResponseDto;
import com.example.mental_health.dto.response.ResponseHtmlStatus;
import com.example.mental_health.service.INovelService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/novel")

@RequiredArgsConstructor
public class NovelController {

    @Autowired
    private INovelService novelService;

    @GetMapping("/novels")
    public ResponseHtmlStatus<Page<NovelResponseDto>> getAllNovels(
            @RequestParam int page,
            @RequestParam int size) {
        Page<NovelResponseDto> novels = novelService.getAllNovels(page, size);
        return new ResponseHtmlStatus<>(HttpStatus.OK, "Fetched all novels successfully", novels);
    }

    @GetMapping("/hot-novel")
    public ResponseHtmlStatus<List<NovelResponseDto>> getRandomHotNovels() {
        List<NovelResponseDto> hotNovels = novelService.getRandomNovels();
        return new ResponseHtmlStatus<>(HttpStatus.OK, "Fetched random hot novels successfully", hotNovels);
    }
}
