package com.itwill.joo01.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.joo01.domain.Product;
import com.itwill.joo01.domain.User;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor // 생성자 자동 생성
@RequestMapping("/product") // "/post" 로 시작하는 주소 다처리
@Controller
public class ProductController {
    
	@GetMapping("/productsList")
	public void productList() {
		
	}

	@GetMapping("/productDetail")
	public void productsDetail() {
		
	}

	@GetMapping("/productsHotList")
	public void productsHotList() {
		
	}

	@GetMapping("/productsNewList")
	public void productsNewList() {
		
	}
	
	@GetMapping("/productOrder")
	public void productOrder(Model model) {
	log.info("productOrder()");
        
    User user1 = new User(1, "hong", 11234, "korea", "seoul", "010-1234-5678", "hong@daum.net", 11000);
    Product product1 = new Product(1, "https://cdn.econovill.com/news/photo/202305/613036_551446_335.png", "전통주 1", 30000, 1);
        
    // 뷰에 보여줄 데이터를 Model에 저장.
    model.addAttribute("user", user1);
    model.addAttribute("product", product1);
        
    // 리턴 값이 없는 경우 뷰의 이름은 요청 주소와 같음.    
	}
	
}