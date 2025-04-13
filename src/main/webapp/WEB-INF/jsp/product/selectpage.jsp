<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart Prototype</title>
    <link rel="stylesheet" href="/assets/css/selectpage.css">
</head>
<body>
<div class="container">
    <div class="search-container">
        <input type="text" class="search-input" placeholder="검색어를 입력하세요">
        <span class="clear-button">✕</span>
    </div>
    <div class="flex-container">
        <div class="main-content">
            <!-- 카테고리 섹션 -->
            <div class="category-section">
                <button class="category-button active">우유</button>
                <button class="category-button">과일</button>
                <button class="category-button">채소</button>
                <button class="category-button">정육</button>
                <button class="category-button">생수</button>
                <button class="category-button">음료</button>
            </div>

            <!-- 상품 섹션 -->
            <div class="product-section">
                <div class="product-grid">
                    <div class="product-card">
                        <div class="product-name">서울우유</div>
                        <div class="product-price">3,000원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">매일우유</div>
                        <div class="product-price">2,800원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">연세우유</div>
                        <div class="product-price">2,900원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">파스퇴르</div>
                        <div class="product-price">3,200원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">건국우유</div>
                        <div class="product-price">3,100원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">남양우유</div>
                        <div class="product-price">3,000원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">바나나우유</div>
                        <div class="product-price">1,500원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">초코우유</div>
                        <div class="product-price">1,500원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">딸기우유</div>
                        <div class="product-price">1,500원</div>
                    </div>
                    <div class="product-card">
                        <div class="product-name">저지방우유</div>
                        <div class="product-price">3,500원</div>
                    </div>
                </div>
            </div>

            <!-- 장바구니 섹션 -->
            <div class="cart-section">
                <h2 class="cart-title">장바구니</h2>
                <div class="cart-items">
                    <div class="cart-item">
                        <span>서울우유</span>
                        <span>3,000원</span>
                    </div>
                    <div class="cart-item">
                        <span>매일우유</span>
                        <span>2,800원</span>
                    </div>
                    <div class="cart-item">
                        <span>연세우유</span>
                        <span>2,900원</span>
                    </div>
                    <div class="cart-item">
                        <span>파스퇴르우유</span>
                        <span>3,200원</span>
                    </div>
                    <div class="cart-item">
                        <span>건국우유</span>
                        <span>3,100원</span>
                    </div>
                    <div class="cart-item">
                        <span>남양우유</span>
                        <span>3,000원</span>
                    </div>
                    <div class="cart-item">
                        <span>바나나우유</span>
                        <span>1,500원</span>
                    </div>
                    <div class="cart-item">
                        <span>초코우유</span>
                        <span>1,500원</span>
                    </div>
                    <div class="cart-item">
                        <span>딸기우유</span>
                        <span>1,500원</span>
                    </div>
                </div>
                <div class="cart-footer">
                    <div class="cart-date">04월 11일</div>
                    <div class="total-price">총결제금액: 57,500원</div>
                    <div class="payment-buttons">
                        <button class="payment-button card-payment">카드결제</button>
                        <button class="payment-button point-payment">포인트결제</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>