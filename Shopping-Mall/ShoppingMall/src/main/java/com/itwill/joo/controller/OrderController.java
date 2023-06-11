package com.itwill.joo.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.joo.dto.OrderHistoryDto;
import com.itwill.joo.dto.OrderedProductDto;
import com.itwill.joo.dto.OrdererInfoDto;
import com.itwill.joo.service.OrderService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/order")
public class OrderController {
	
	private final OrderService orderService;
	
	@GetMapping("/orderPage")
	public String orderPage(Model model) {
		OrderedProductDto product = orderService.selectOrderedProduct(21);
		OrdererInfoDto user = orderService.selectOrdererInfo(4);
		model.addAttribute("product", product);
		model.addAttribute("user", user);
		
		return "order/orderPage";
	}
	
	@GetMapping("/orderHistory")
	public String orderHistory(Model model) {
	    List<OrderHistoryDto> dto = orderService.selectOrderHistory(1);
	    model.addAttribute("orders", dto);
	    
	    return "order/orderHistory";
	}
	
	
	
	

}
