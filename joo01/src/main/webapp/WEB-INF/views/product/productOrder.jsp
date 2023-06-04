<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 부트스트랩 -->
<title>JOO</title>
<style>
table {
    border-collapse: collapse;
    border: none;
}

body {
    background-color: black;
    color: white;
}
</style>

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">
</head>
<body style="background-color: black; color: white;">
    <div>
        <header class="my-1 p-3 text-bg-dark">
            <div>
                <nav class="navbar navbar-expand-lg bg-secondary">
                    <div class="container-fluid">
                        <!-- 홈과 로고클릭시 메인페이지로 이동 -->
                        <a class="navbar-brand" href="/joo01/">로고</a>
                        <button class="navbar-toggler" type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item"><a
                                    class="nav-link active"
                                    aria-current="page" href="/joo01/">Home</a></li>

                                <!-- TODO : 로그인 회원가입 링크로 이동(로그인상태일때 비가시화) -->
                                <li class="nav-item"><a
                                    class="nav-link"
                                    href="/joo01/user/sign">로그인/회원가입</a></li>

                                <li class="nav-item dropdown"><a
                                    class="nav-link dropdown-toggle"
                                    href="#" role="button"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"> 마이페이지 </a>
                                    <ul class="dropdown-menu">
                                        <li><a
                                            class="dropdown-item"
                                            href="/joo01/user/myPrivate">개인정보
                                                수정</a></li>
                                        <li><a
                                            class="dropdown-item"
                                            href="/joo01/user/myGrade">적립금
                                                확인</a></li>
                                        <li><a
                                            class="dropdown-item"
                                            href="/joo01/user/myOrder">주문
                                                내역</a></li>
                                        <li><a
                                            class="dropdown-item"
                                            href="/joo01/user/myQuseries">문의
                                                내역</a></li>
                                        <li><hr
                                                class="dropdown-divider"></li>
                                        <li><a
                                            class="dropdown-item"
                                            href="/joo01/user/myBasket">장바구니</a></li>

                                    </ul></li>
                                <!-- 최근본 상품은 모달로 처리 -->
                                <li class="nav-item"><a
                                    class="nav-link" href="">최근본상품</a></li>
                                <li class="nav-item"><a
                                    class="nav-link" href="">문의하기</a></li>
                            </ul>
                            <!-- 검색 페이지 -->
                            <form class="d-flex" role="search"
                                action="/joo01/product/productsList">
                                <input class="form-control me-2"
                                    type="search" placeholder="제품 검색"
                                    aria-label="Search" id="searchText">
                                <button class="btn btn-outline-success"
                                    type="submit">search</button>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>
            <h3 class="text-center">주문서 작성</h3>
        </header>

        <div class="orderListArea ">
            <div class="title">
                <h3 class="body1" style="letter-spacing: 0px;">상품
                    정보</h3>
            </div>
            <hr />

            <div class="boardList ">
                <table border="1" summary="">
                    <thead>
                        <tr>
                            <th scope="col" class="thumb"
                                style="text-indent: -9999px;">이미지</th>
                            <th scope="col" class="product"
                                style="text-indent: -9999px;">상품정보</th>
                            <th scope="col" class="price"
                                style="text-indent: -9999px;">판매가</th>
                            <th scope="col" class="quantity"
                                style="text-indent: -9999px;">수량</th>

                        </tr>
                    </thead>
                    <tbody
                        class="xans-element- xans-order xans-order-normallist">
                        <tr class="xans-record-">
                            <td class="thumb" style="width: 135px;">
                                <a href="/joo01/product/productDetail">
                                    <img src=${ product.image } alt=""
                                    width="100">
                            </a>
                            </td>
                            <td class="product">
                                <div class="prd-name">
                                    <a
                                        href="/joo01/product/productDetail"
                                        class="title5"><strong>${ product.info }</strong></a>
                                    <div class="price"
                                        style="font-family: Pretendard, serif; margin-bottom: 10px;">
                                        <div class="discount">
                                            <strong
                                                class="body2 color-white"
                                                style="font-family: Pretendard, serif;">${ product.price }</strong>
                                        </div>
                                    </div>
                                    <p class="quantity body2">수량 :
                                        ${ product.stock }</p>
                                </div>
                            </td>

                        </tr>
                    </tbody>
                </table>
            </div>

            <main class="my-2">
                <section class="card">
                    <div data-text-content="true"
                        style="font-size: 16px;" class="">
                        <h3 class="body1" style="letter-spacing: 0px;">주문자 정보</h3>
                    </div>
                    <form class="card-body">
                        <div class="my-2">
                            <input class="form-control" id="name"
                                value="${ user.name }"
                                placeholder="주문자 성함" readonly />
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="postCode"
                                value="${ user.postCode }"
                                placeholder="우편번호" readonly />
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="addr"
                                value="${ user.addr }" placeholder="주소" readonly />
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="detailAddr"
                                value="${ user.detailAddr }"
                                placeholder="상세주소" readonly />
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="phone"
                                value="${ user.phone }"
                                placeholder="휴대폰 번호" readonly />
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="email"
                                value="${ user.email }"
                                placeholder="이메일" readonly />
                        </div>

                        <!--  <input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="010 (콤보박스)" style="color: rgb(94, 94, 94);" class=""> 
                        <input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="1234" style="color: rgb(94, 94, 94);" class="">
                        <input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="5678" style="color: rgb(94, 94, 94);" class="">
                        <br><br>
                        <input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="010 (콤보박스)" style="color: rgb(94, 94, 94);" class=""> 
                        <input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="1234" style="color: rgb(94, 94, 94);" class="">
                        <input type="text" data-min-width="60" data-min-height="30" data-text-content="true" value="5678" style="color: rgb(94, 94, 94);" class="">
                    -->

                    </form>
                </section>

                <hr />
                <section class="card">
                    <div data-text-content="true"
                        style="font-size: 16px;" class="">
                        <h3 class="body1" style="letter-spacing: 0px;">배송지 정보</h3>
                    </div>
                    <br> 
                    
                    <span class="form-check"> 
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked >
                            <label class="form-check-label" for="flexRadioDefault1"> 주문자 정보와 동일 </label>
                    </span> 
                    <span class="form-check"> 
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" > 
                            <label class="form-check-label" for="flexRadioDefault2"> 새로 입력 </label>
                    </span>
                    
                    <form id="recipientInfo" class="card-body">
                        <div class="my-2">
                            <input class="form-control" id="name2"
                                value="${ user.name }"
                                placeholder="수령자 성함" readonly/>
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="postCode2"
                                value="${ user.postCode }"
                                placeholder="우편번호" readonly/>
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="addr2"
                                value="${ user.addr }" placeholder="주소" readonly/>
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="detailAddr2"
                                value="${ user.detailAddr }"
                                placeholder="상세주소" readonly/>
                        </div>
                        <div class="my-2">
                            <input class="form-control" id="phone2"
                                value="${ user.phone }"
                                placeholder="휴대폰 번호" readonly/>
                        </div>
                        <div class="my-2">
                            <textarea class="form-control" id="message"
                                placeholder="배송메시지"></textarea>
                        </div>
                        <div data-text-content="true"
                            style="font-size: 16px;" class="">사용할
                            포인트 (10,000 포인트 이상부터 사용 할 수 있습니다)</div>
                        <c:choose>
                            <c:when test="${user.currentPoint >= 10000}">
                                <div class="my-2">
                                    <input class="form-control"
                                        id="currentPoint"
                                        value="${ user.currentPoint }" />
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="my-2">
                                    <input class="form-control"
                                        id="currentPoint" value="0"
                                        readonly />
                                </div>
                            </c:otherwise>
                        </c:choose>

                        <div data-text-content="true"
                            style="font-size: 16px;" class="">
                            (보유중인 포인트: ${ user.currentPoint } 원)</div>
                    </form>
                </section>

                <br />
                <div class="total">
                    <h4>
                        <strong id="current_pay_name">최종결제 금액</strong>
                    </h4>
                    <!--<div class="price"><div class="price-name">총 주문금액</div><div class="box"><strong id="total_order_price_view">18,900</strong>원 <span class="tail displaynone"><span id="total_order_price_ref_view" class="tail"></span></span></div></div>-->
                    <div>
                        <div class="price-name">상품금액</div>
                        <div class="box"
                            style="font-family: Pretendard, serif;">KRW
                            ${ product.price * product.stock }</div>
                    </div>
                    <div>
                        <div class="price-name">배송비</div>
                        <div class="box">
                            <span>+</span><span
                                style="font-family: Pretendard, serif;">KRW
                                3,000</span>
                        </div>
                    </div>
                    <div class="option "
                        style="margin-bottom: 0 !important;">
                        <div class="price-name">총 할인</div>
                        <div class="box">
                            <strong
                                style="font-family: Pretendard, serif;">-</strong><strong
                                style="font-family: Pretendard, serif;">KRW
                                <c:choose>
                                    <c:when
                                        test="${user.currentPoint >= 10000}">
                                            ${ user.currentPoint }
                                    </c:when>
                                    <c:otherwise>
                                            0
                                    </c:otherwise>
                                </c:choose>
                            </strong> <span class="tail displaynone"> <span
                                id="total_sale_price_ref_view"
                                class="tail"> </span>
                            </span>
                        </div>
                    </div>
                    <div class="total-price"
                        style="margin-top: 15px !important; margin-bottom: 5px !important;">
                        <div class="price-name">최종 결제 금액</div>
                        <div class="box"
                            style="font-family: Pretendard, serif;">
                            <strong>= </strong>KRW <strong
                                id="total_order_sale_price_view">18,900</strong>
                            <span class="tail displaynone"><span
                                id="total_order_sale_price_ref_view"
                                class="tail"></span></span>
                        </div>
                    </div>

                    <div>
                        <p>
                            ( <strong> 총 적립예정금액</strong><span
                                id="mAllMileageSum">149원 </span>)
                        </p>
                    </div>

                </div>
        </div>
        </main>

        <footer class="my-1 p-3 text-bg-dark">
            <!-- 기업정보, 홈 인스타, 페이스북, 등등 필한거 -->
            <h1 class="text-center">풋터</h1>

            <a href="">home</a>
        </footer>
        
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous">
        </script>
        <script src="../static/js/productOrder/productOrder.js"></script>

    </div>
</body>
</html>