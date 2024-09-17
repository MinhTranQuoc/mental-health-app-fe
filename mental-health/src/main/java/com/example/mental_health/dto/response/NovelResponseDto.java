package com.example.mental_health.dto.response;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class NovelResponseDto {
    private Long id;
    private String title;
    private String chapter;
    private String updated;
    private Boolean isHot;
    private String avatar;
    private String img;
}
