package com.itwill.joo01.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrderedProduct {
	
	private long id;
	private String image;
	private String productName;
	private int stock;
	private int price;
	private String orderedDate;
	private String orderedStatus;
	
}
