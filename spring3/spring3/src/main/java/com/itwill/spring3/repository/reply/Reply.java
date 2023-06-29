package com.itwill.spring3.repository.reply;

import com.itwill.spring3.repository.BaseTimeEntity;
import com.itwill.spring3.repository.post.Post;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@Builder
@ToString(exclude = {"post"})
@Entity
@Table(name = "REPLIES")
@SequenceGenerator(name = "REPLIES_SEQ_GEN", sequenceName = "REPLIES_SEQ", allocationSize = 1)
public class Reply extends BaseTimeEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "REPLIES_SEQ_GEN")
    private Long id; // Primary Key
    
    @ManyToOne(fetch = FetchType.LAZY) // EAGER(기본값): 즉시로딩. LAZY: 지연로딩.
    // Many(다) = Reply, One(1) = Post인 경우
    private Post post; // Foreign Key, 관계를 맺고 있는 엔티티.
    
    @Column(nullable = false) // Not Null
    private String replyText; // 댓글 내용
    
    @Column(nullable = false) // Not Null
    private String writer; // 댓글 작성자
}
