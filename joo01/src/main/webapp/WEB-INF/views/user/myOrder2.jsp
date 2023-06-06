<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>홈페이지 뷰 예시</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    
    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }
    
    .order-filter {
      margin-bottom: 20px;
    }
    
    .order-filter-period {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }
    
    .order-filter-period__button button {
      margin-right: 10px;
    }
    
    .order-filter-period__date {
      display: flex;
    }
    
    .order-filter-period__input-wrap {
      margin-right: 10px;
    }
    
    .order-filter-confirm {
      background-color: #007bff;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
    }
    
    #order-table,
    #cancel-table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }
    
    #order-table th,
    #order-table td,
    #cancel-table th,
    #cancel-table td {
      border: 1px solid #ccc;
      padding: 10px;
      text-align: left;
    }
    
    #order-table th {
      background-color: #f2f2f2;
    }
    
    .n-prd-row {
      display: flex;
      align-items: center;
    }
    
    .n-prd-row img {
      margin-right: 10px;
    }
    
    .txt-lighter {
      color: #888;
    }
    
    .btn-set {
      display: flex;
    }
    
    .btn-set button {
      margin-right: 5px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="order-filter">
      <div class="order-filter-period">
        <div class="order-filter-period__button">
          <button type="button" class="btn btn-outline-primary col-12 mx-auto">1주일</button>
          <button type="button" class="order-filter-period__tab__button">1개월</button>
          <button type="button" class="order-filter-period__tab__button">3개월</button>
          <button type="button" class="order-filter-period__tab__button">6개월</button>
        </div>
        <div class="order-filter-period__date">
          <div class="order-filter-period__input-wrap">
            <input type="date" class="order-filter-period__input" name="dt_fr_input" value="" placeholder="-">
          </div>
          <div class="order-filter-period__input-wrap">
            <input type="date" class="order-filter-period__input" name="dt_to_input" value="" placeholder="-">
          </div>
        </div>
      </div>
      <button type="button" class="order-filter-confirm">조회하기</button>
    </div>
    <table id="order-table" class="n-table table-col n-order-view" width="100%">
      <colgroup>
        <col style="width: *">
        <col style="width: 14.2%">
        <col style="width: 14.2%">
        <col style="width: 14.2%">
        <col style="width: 10.2%">
        <col style="width: 11%">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">상품정보</th>
          <th scope="col">수량</th>
          <th scope="col">금액</th>
          <th scope="col">주문일자</th>
          <th scope="col" colspan="2">주문 상태</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            <div class="n-prd-row">
              <a href="/joo01/product/productDetail" class="img-block">
                <img src="${ product.image }" alt="전통주" width="100">
              </a>
              상품명
            </div>
          </td>
          <td>
            수량
          </td>
          <td>
            KRW 가격
          </td>
          <td>
            주문일자
          </td>
          <td class="txt-lighter">
            <div class="btn-set btn-parents">
              주문 상태
            </div>
          </td>
        </tr>
      </tbody>
    </table>
    <table id="cancel-table" class="n-table table-col n-order-view" width="100%" style="display: none;">
      <colgroup>
        <col style="width: *">
        <col style="width: 14.2%">
        <col style="width: 14.2%">
        <col style="width: 14.2%">
        <col style="width: 10.2%">
        <col style="width: 11%">
      </colgroup>
      <thead>
        <tr>
          <th scope="col">상품정보</th>
          <th scope="col">수량</th>
          <th scope="col">금액</th>
          <th scope="col">취소일자</th>
          <th scope="col" colspan="2">주문 상태</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
            <div class="n-prd-row">
              <a href="/joo01/product/productDetail" class="img-block">
                <img src="${ product.image }" alt="전통주" width="100">
              </a>
              상품명
            </div>
          </td>
          <td>
            수량
          </td>
          <td>
            KRW 가격
          </td>
          <td>
            취소일자
          </td>
          <td class="txt-lighter">
            <div class="btn-set btn-parents">
              주문 상태
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>
