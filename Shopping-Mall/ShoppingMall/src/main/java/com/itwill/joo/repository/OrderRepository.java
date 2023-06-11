package com.itwill.joo.repository;

import java.util.List;

import com.itwill.joo.dto.OrderHistoryDto;
import com.itwill.joo.dto.OrderedProductDto;
import com.itwill.joo.dto.OrdererInfoDto;

public interface OrderRepository {
	
	OrderedProductDto selectOrderedProduct(long id);
	
	OrdererInfoDto selectOrdererInfo(long id);
	
	List<OrderHistoryDto> selectOrderHistory(long id);
	
	int deleteOrder(long id);
	int deleteOrderProduct(long id);
	int deleteDelivery(long id);
	
	int updateBuyComple(long id);
}
