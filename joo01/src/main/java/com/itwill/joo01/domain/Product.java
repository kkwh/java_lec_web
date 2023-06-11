package com.itwill.joo01.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Product {
	
    private long id;
    private String image;
    private String info;
    private int price;
    private int stock;
}
