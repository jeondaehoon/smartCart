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
    <div class="flex-container">
        <div class="main-content">
            <!-- 카테고리 섹션 -->
            <form id="categoryList">
                <div class="category-section" id="category-container">
                    <!-- 카테고리 버튼들이 여기에 동적으로 추가-->
                </div>
            </form>
            <!-- 상품 섹션 -->
            <div class="product-section">
                <div class="search-container">
                    <input type="text" class="search-input" placeholder="검색어를 입력하세요">
                    <span class="clear-button">✕</span>
                </div>
                <div class="product-grid">
                    <!-- 상품들이 여기에 동적으로 추가됩니다 -->
                </div>
            </div>

            <!-- 장바구니 섹션 -->
            <div class="cart-section">
                <h2 class="cart-title">장바구니</h2>
                <div class="cart-items">
                    <!-- 장바구니 아이템들이 여기에 동적으로 추가됩니다 -->
                </div>
                <div class="cart-footer">
                    <div class="cart-date">04월 11일</div>
                    <div class="total-price">총결제금액: 0원</div>
                    <div class="payment-buttons">
                        <button class="payment-button card-payment">카드결제</button>
                        <button class="payment-button point-payment">포인트결제</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script src="/assets/js/common.js"></script>
<script>
    // 페이지 로드 시 실행되는 초기화 함수
    $(document).ready(function() {
        categoryList();
    });

    // 카테고리 목록을 서버에서 가져오는 함수
    function categoryList() {
        set_server('/smartCart_select/categorylist', setCategoryList);
    }

    // 서버에서 받은 카테고리 데이터로 버튼을 생성하는 함수
    function setCategoryList(data) {
        console.log(data);
        var container = $('#category-container');
        var str = '';
        for(var i = 0; i < data.length; i++) {
            var category = data[i];
            str += '<input type="button" class="category-button" value="' + category.categoryName + '" onclick="selectCategory(this, \'' + category.categoryId + '\')">';
        }
        container.html(str);

        // 첫 번째 버튼에 active 클래스 추가하고 해당 카테고리의 상품 표시
        if (container.find('.category-button').length > 0) {
            var firstButton = container.find('.category-button').first();
            firstButton.addClass('active');
            var firstCategoryId = firstButton.attr('onclick').match(/'([^']+)'/)[1];
            getProductsByCategory(firstCategoryId);
        }
    }

    // 카테고리 버튼 클릭 시 실행되는 함수
    function selectCategory(button, categoryId) {
        // 모든 버튼에서 active 클래스 제거
        $('.category-button').removeClass('active');
        // 클릭된 버튼에 active 클래스 추가
        $(button).addClass('active');
        // 해당 카테고리의 상품 가져오기
        getProductsByCategory(categoryId);
    }

    // 카테고리 ID로 상품을 가져오는 함수
    function getProductsByCategory(categoryId) {
        set_server('/smartCart_select/products/' + categoryId, displayProducts);
    }

    // 상품 목록을 표시하는 함수
    function displayProducts(products) {
        var container = $('.product-grid');
        var str = '';
        for(var i = 0; i < products.length; i++) {
            var product = products[i];
            str += '<div class="product-card" onclick="addToCart(\'' + product.productId + '\', \'' + product.productName + '\', \'' + product.price + '\')">';
            str += '<div class="product-name">' + product.productName + '</div>';
            str += '<div class="product-price">' + comma(product.price) + '원</div>';
            str += '</div>';
        }
        container.html(str);
    }

    // 장바구니에 상품 추가하는 함수
    function addToCart(productId, productName, price) {
        // 장바구니 아이템 생성
        var cartItem = {
            productId: productId,
            productName: productName,
            price: price,
            quantity: 1
        };

        // 장바구니에 아이템 추가
        var cartItems = $('.cart-items');
        var existingItem = cartItems.find('[data-product-id="' + productId + '"]');

        if (existingItem.length > 0) {
            // 이미 있는 상품이면 수량 증가
            var quantityElement = existingItem.find('.item-quantity');
            var currentQuantity = parseInt(quantityElement.text());
            quantityElement.text(currentQuantity + 1);
        } else {
            // 새로운 상품이면 장바구니에 추가
            var itemHtml = '<div class="cart-item" data-product-id="' + productId + '">';
            itemHtml += '<div class="item-name">' + productName + '</div>';
            itemHtml += '<div class="item-details">';
            itemHtml += '<span class="item-quantity">1</span>';
            itemHtml += '<span class="item-price">' + comma(price) + '원</span>';
            itemHtml += '</div>';
            itemHtml += '<button class="delete-button" onclick="removeFromCart(\'' + productId + '\')">✕</button>';
            itemHtml += '</div>';

            cartItems.append(itemHtml);
        }

        // 총 결제금액 업데이트
        updateTotalPrice();
    }

    // 장바구니에서 상품 제거하는 함수
    function removeFromCart(productId) {
        var item = $('.cart-item[data-product-id="' + productId + '"]');
        item.remove();
        updateTotalPrice();
    }

    // 총 결제금액 업데이트 함수
    function updateTotalPrice() {
        var total = 0;
        $('.cart-item').each(function() {
            var quantity = parseInt($(this).find('.item-quantity').text());
            var price = parseInt(uncomma($(this).find('.item-price').text().replace('원', '')));
            total += quantity * price;
        });

        $('.total-price').text('총결제금액: ' + comma(total) + '원');
    }
</script>
</body>
</html>