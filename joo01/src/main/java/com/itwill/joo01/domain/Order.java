package com.itwill.joo01.domain;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString   
public class Order {
    
    private long id;
    private long userId; // 유저 아이디
    private int initialPrice; // (할인 전) 총 상품 가격
    private int discountPoint; // 적용된 포인트 금액
    private int finalPrice; // 최종 지불할 금액
    private int accumulatedPoint; // 주문 후 누적될 포인트
    private LocalDateTime orderCreatedTime; // 주문일자
    private String orderStatus; // 주문상태
    
}
