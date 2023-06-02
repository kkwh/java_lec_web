package com.itwill.joo01.domain;

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
public class OrderProduct {

    private long id;
    private long productId; // 상품아이디
    private long orderId; // 주문아이디
    private int productCount; // 상품수량
    private int productPrice; // 상품가격
    
}
