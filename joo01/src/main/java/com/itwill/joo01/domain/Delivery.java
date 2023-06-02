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
public class Delivery {

    private long id;
    private long orderId; // 주문아이디 FK
    private String invoiceCode; // 송장번호
    private String street; // 도로명 주소
    private String detailAddr; // 상세 주소
    private int postCode; // 우편 번호
    private String recipientName; // 수신자 이름
    private String recipientPhone; // 수신자 번호
    private String recipientMessage; // 수신자 메시지
    private int deliveryPrice; // 배송비
    private String deliveryStatus; // 배송 상태
    private LocalDateTime deliveryCreatedTime; // 발송일
    private int deliveryType; // 배송 타입(주문자ㅡ수령자 구분)
    
}
