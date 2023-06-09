package com.itwill.spring3.dto;

import com.itwill.spring3.repository.post.Post;

import lombok.Data;

@Data
public class PostUpdateDto {
    private Long id;
    
    private String title;
    private String content;
    
    
    // DTO를 엔터티 객체로 변환해서 리턴하는 메서드:
    public Post toEntity() {
        return Post.builder()
                .title(title)
                .content(content)
                .build();
    }
}
