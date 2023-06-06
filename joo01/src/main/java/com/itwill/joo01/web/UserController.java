package com.itwill.joo01.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.Conditional;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.joo01.domain.OrderedProduct;
import com.itwill.joo01.domain.User;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor // 생성자 자동 생성
@RequestMapping("/user") // "/post" 로 시작하는 주소 다처리
@Controller
public class UserController {

	@GetMapping("/sign")
	public void sign() {
		log.info("sign()");
	}

	@PostMapping("/sign")
	public String login() {
		return "redirect:/";
	}
	
	@GetMapping("/myBasket")
	public void basket() {
		
	}
	
	@GetMapping("/myGrade")
	public void grade() {
		
	}
	
	@GetMapping("/myOrder")
	public void order(Model model) {
	    OrderedProduct product1 = new OrderedProduct(1, "https://cdn.econovill.com/news/photo/202305/613036_551446_335.png", "전통주1", 1, 10000, " 2023.05.31", "구매 확정");
	    OrderedProduct product2 = new OrderedProduct(2, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt1r-NsC0Ym0J_QKaxN_i5Wh4tlnBQnlY02A&usqp=CAU", "전통주2", 1, 20000, " 2023.04.01", "구매 확정");	    
	    OrderedProduct product3 = new OrderedProduct(3, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmj2-oahOccLM2_dIXNOql0z2CBoZEhohqQg&usqp=CAU", "전통주3", 2, 60000, " 2023.02.27", "구매 확정");
	    OrderedProduct product4 = new OrderedProduct(4, "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqKI3TcboROYZp541jjI20_XKf2X-D57ujeA&usqp=CAU", "전통주4", 1, 40000, " 2023.01.20", "취소 완료");
	    
	    
	    List<OrderedProduct> list = new ArrayList<>();
	    list.add(product1);
	    list.add(product2);
	    list.add(product3);
	    list.add(product4);
	    
	    model.addAttribute("products", list);
	    
	}
	
	@GetMapping("/myOrder2")
    public void order2() {
        
    }
	
	@GetMapping("/myPrivate")
	public void Myprivate() {
		
	}
	
	@GetMapping("/myQuseries")
	public void quseries() {
		
	}
	
}
