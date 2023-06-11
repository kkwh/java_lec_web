package com.itwill.post.controller.post;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.itwill.post.model.Post;
import com.itwill.post.service.PostService;

/**
 * Servlet implementation class InIdListController
 */
@WebServlet(name = "inIdListController", urlPatterns = {"/post/detail"})
public class InIdListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final Logger log = LoggerFactory.getLogger(CreateController.class);
	    
	private final PostService postService = PostService.getInstance();
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    log.info("doGet()");
	    
	    // 요청 URL의 쿼리스트링에 포함된 요청 파라미터 id(포스트번호, pk)값을 찾음.
	    Post post = postService.readInId(Long.parseLong(request.getParameter("id")));
	    log.info("id = {}", Long.parseLong(request.getParameter("id")));
	    
	    request.setAttribute("post", post);
	    
	    request.getRequestDispatcher("/WEB-INF/post/detail.jsp")
        .forward(request, response);
	}

	

}
