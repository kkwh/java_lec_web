package com.itwill.post.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;

import com.itwill.post.model.Post;

import oracle.jdbc.OracleDriver;

// JUnit Test(자바 단위 테스트)를 하기 위한 클래스.
// JDBC(Java Database Connectivity) 테스트 - ojdbc11 라이브러리 동작 여부 테스트.
// main 메서드를 만들지 않고, 테스트 메서드를 작성하면,
// junit-jupiter-engine에서 테스트 메서드를 실행함.
@TestMethodOrder(OrderAnnotation.class) // -> 테스트 메서드 실행 순서를 애너테이션으로 설정함.
public class JdbcTest {
    
    // Oracle 데이터베이스 접속 주소
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
    // 데이터베이스 접속 계정
    private static final String USER = "scott";
    // 데이터베이스 접속 비밀번호
    private static final String PASSWORD = "tiger";
    
    // 테스트 메서드 작성:
    //  (0) @Test 애너테이션 사용.
    //  (1) 가시성: public. (2) 리턴타입: void. (3) 파라미터를 갖지 않음.
    //  테스트 성공/실패 여부는 테스트 메서드 작성자가 설정.
    
    @Test // 테스트 메서드
    @Order(2) // 2번째로 실행할 테스트 메서드.
    public void testSelect() throws SQLException {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        // 1. JDBC 라이브러리를 DriverManager에 등록. 
        DriverManager.registerDriver(new OracleDriver());
        System.out.println("OJDBC 드라이버 등록 성공");
        
        // 2. 등록된 JDBC 드라이버를 사용해서 데이터베이스 서버에 접속.
        conn = DriverManager.getConnection(URL, USER, PASSWORD);
        Assertions.assertNotNull(conn);
        //-> conn이 null이 아니면 테스트 성공, 그렇지 않으면 테스트 실패.
        System.out.println("conn: " + conn);
        
        // TODO: 
        // POSTS 테이블의 전체 내용을 검색(select)하고 
        // ArrayList<Post>를 생성하고
        // 그 결과를 콘솔창에 출력.
        // ArrayList<Post>의 원소 개수는 1개임을 주장.
        String SQL = "select * from POSTS";
                     
                stmt = conn.prepareStatement(SQL);
                rs = stmt.executeQuery();
                
                
                ArrayList<Post> list = new ArrayList<>();
                
                while(rs.next()) {
                    Post post = new Post();
                    
                    post.setId(rs.getLong("ID"));
                    post.setTitle(rs.getString("TITLE"));
                    post.setContent(rs.getString("CONTENT"));
                    post.setAuthor(rs.getString("AUTHOR"));
                    post.setCreatedTime(rs.getTimestamp("Created_Time").toLocalDateTime());
                    post.setModifiedTime(rs.getTimestamp("Modified_Time").toLocalDateTime());
                    
                    list.add(post);
                    System.out.println(list);
                }
                
                Assertions.assertEquals(1, list.size());
                // -> list의 크기(원소 개수)가 1이면 단위 테스트 성공, 그렇지 않으면 실패.
                
                
        
        
        // 데이터베이스와 연결된 접속을 해제.
                rs.close();
                stmt.close();
                conn.close();
        System.out.println("연결 해제 성공.");
    }
    
    @Test // JUnit 엔진에서 호출할 테스트 메서드.
    @Order(1) // 첫번째로 실행할 테스트 메서드.
    public void testInsert() throws SQLException {
        // Driver 등록 -> Connection -> PreparedStatement -> execute -> 결과처리 -> 리소스 해제
        Connection conn = null;
        PreparedStatement stmt = null;
        
        DriverManager.registerDriver(new OracleDriver());
        conn = DriverManager.getConnection(URL, USER, PASSWORD);
        
        String sql = "insert into posts(title, content, author) values (?, ?, ?)";  
        stmt = conn.prepareStatement(sql);
        
        stmt.setString(1, "insert test");
        stmt.setString(2, "insert 테스트");
        stmt.setString(3, "공주메롱");
        
        int result = stmt.executeUpdate();
        Assertions.assertEquals(1, result);
        
        
        
        stmt.close();
        conn.close();
        
//        System.out.println("insert 완료");
        
    }
}
