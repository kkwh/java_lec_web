package com.itwill.spring2.dto;

import com.itwill.spring2.domain.Post;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PostUpdateDto {
    
    private String title;
    private String content;
    
    public Post toEntity() {
        // return new Post(0, title, content, author, null, null);
        
        return Post.builder()
                .title(title)
                .content(content)
                .build();
    }
}
