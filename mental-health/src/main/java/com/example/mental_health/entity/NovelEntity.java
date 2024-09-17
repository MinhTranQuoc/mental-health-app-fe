package com.example.mental_health.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "novel")
public class NovelEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "chapter")
    private String chapter;

    @Column(name = "updated")
    private String updated;

    @Column(name = "isHot")
    private Boolean isHot;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "img")
    private String img;
}
