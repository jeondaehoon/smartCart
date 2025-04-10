<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css">
    <link rel="stylesheet" href="/assets/css/startpage.css">
</head>
<body>
<p class="text-member">
    <strong>회원이</strong>신 경우<br>
    <strong>아래 회원 버튼</strong>을 눌러주세요
</p>

<button type="button" class="btn-member" onclick="location.href='/smartCart_login'">회원</button>

<p class="text-nonmember">
    <strong>비회원이</strong>신 경우<br>
    <strong>아래 비회원 버튼</strong>을 눌러주세요
</p>

<button type="button" class="btn-nonmember">비회원</button>

<div class="right-box-container">
    <div class="right-box">
        <span class="box-text">
            01<br>
            <span>회원 & 비회원</span> 모두 사용 가능!
        </span>
        <svg class="box-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="12" cy="12" r="10" stroke="black" stroke-width="2"/>
            <path d="M8 12L11 15L16 9" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </div>
    <div class="right-box">
        <span class="box-text">
            02<br>
            회원은 <span>간편결제</span> 및 <span>포인트 결제</span> 지원
        </span>
        <svg class="box-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="12" cy="12" r="10" stroke="black" stroke-width="2"/>
            <path d="M8 12L11 15L16 9" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </div>
    <div class="right-box">
        <span class="box-text">
            03<br>
            <span>현금 결제 불가</span> 카드 및 보바일 결제만 가능
        </span>
        <svg class="box-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="12" cy="12" r="10" stroke="black" stroke-width="2"/>
            <path d="M8 12L11 15L16 9" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </div>
    <div class="right-box">
        <span class="box-text">
            04<br>
            쉽고 편리한 <span>스마트 마트 카트</span>로 더 빠른 쇼핑!
        </span>
        <svg class="box-icon" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="12" cy="12" r="10" stroke="black" stroke-width="2"/>
            <path d="M8 12L11 15L16 9" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
    </div>
</div>


</body>
</html>
