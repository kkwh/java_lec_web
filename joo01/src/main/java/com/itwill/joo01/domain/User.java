package com.itwill.joo01.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
	
	private long id;
	private String name;
	private int postCode;
	private String addr;
	private String detailAddr;
	private String phone;
	private String email;
	private int currentPoint;
}
