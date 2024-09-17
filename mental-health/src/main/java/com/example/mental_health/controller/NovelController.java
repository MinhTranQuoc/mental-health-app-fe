package com.example.mental_health.controller;

import com.example.mental_health.dto.response.NovelResponseDto;
import com.example.mental_health.dto.response.ResponseSuccess;
import com.example.mental_health.service.INovelService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/novel")
@CrossOrigin(origins = "http://localhost:3000")
@RequiredArgsConstructor
public class NovelController {

    @Autowired
    private INovelService novelService;

    @GetMapping("/novels")
    public ResponseSuccess<Page<NovelResponseDto>> getAllNovels(
            @RequestParam int page,
            @RequestParam int size) {
        Page<NovelResponseDto> novels = novelService.getAllNovels(page, size);
        return new ResponseSuccess<>(HttpStatus.OK, "Fetched all novels successfully", novels);
    }

    @GetMapping("/hot-novel")
    public ResponseSuccess<List<NovelResponseDto>> getRandomHotNovels() {
        List<NovelResponseDto> hotNovels = novelService.getRandomNovels();
        return new ResponseSuccess<>(HttpStatus.OK, "Fetched random hot novels successfully", hotNovels);
    }
}
