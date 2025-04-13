<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css">
    <link rel="stylesheet" href="/assets/css/loginpage.css">
</head>
<body>
<div class="page-layout">
    <div class="left-section">
        <p class="main-text">
            <strong>로그인</strong>을 위해<br>
            <strong>휴대폰 번호</strong>를<br>
            입력해 주세요
        </p>

        <div class="left-bottom">
            <button type="button" class="btn-back" onclick="location.href='/smartCart_main'">이전단계</button>
        </div>
    </div>

    <div class="right-section">
        <div class="keypad-container">
            <div class="keypad-display-wrapper">
                <div class="keypad-display" id="phoneDisplay">
                    <span class="prefix">010-</span><span id="numberPart"></span>
                </div>
                <div class="divider-line"></div>
            </div>
            <div class="keypad">
                <button onclick="appendNumber('1')">1</button>
                <button onclick="appendNumber('2')">2</button>
                <button onclick="appendNumber('3')">3</button>
                <button onclick="appendNumber('4')">4</button>
                <button onclick="appendNumber('5')">5</button>
                <button onclick="appendNumber('6')">6</button>
                <button onclick="appendNumber('7')">7</button>
                <button onclick="appendNumber('8')">8</button>
                <button onclick="appendNumber('9')">9</button>
                <button onclick="deleteLast()"></button>
                <button onclick="appendNumber('0')">0</button>
                <button onclick="deleteLast()"><</button>
            </div>
        </div>
    </div>
</div>

<button type="button" class="btn-fixed" onclick="loginUser()">확인</button>
<script src="/assets/js/jquery-3.7.1.min.js"></script>
<script src="/assets/js/cookie.js"></script>
<script>
    function appendNumber(num) {
        const numberPart = document.getElementById("numberPart");
        let rawText = numberPart.innerText.replace(/-/g, ''); // 하이픈 제거

        if (rawText.length < 8) {
            rawText += num;
            numberPart.innerText = formatPhoneNumber(rawText);
        }
    }

    function deleteLast() {
        const numberPart = document.getElementById("numberPart");
        let rawText = numberPart.innerText.replace(/-/g, '');

        rawText = rawText.slice(0, -1);
        numberPart.innerText = formatPhoneNumber(rawText);
    }

    function formatPhoneNumber(input) {
        if (input.length <= 4) {
            return input;
        } else {
            return input.slice(0, 4) + '-' + input.slice(4);
        }
    }
    //쿠키설정
    $(document).ready(function() {
        var numberPart = getCookie("numberPart");
        $('#numberPart').text(numberPart);
    });

    function rememberNumber() {
        var numberPart = $('#numberPart').text();
        if(numberPart) {
            setCookie("numberPart", numberPart, 7);
        } else {
            deleteCookie("numberPart");
        }
    }
    
    //로그인
    function loginUser() {
        var numberPart = $('#numberPart').text();
        var fullPhone = '010-' + numberPart;

        $.ajax({
            url: '/smartCart_phonelogin',
            type: 'POST',
            data: {
                userPhone: fullPhone
            },
            success: function(response) {
                if(response) {
                    // 로그인 성공 시 전화번호를 URL 파라미터로 전달
                    window.location.href = '/smartCart_select?userPhone=' + encodeURIComponent(fullPhone);
                } else {
                    alert('로그인 실패');
                }
            }
        });
    }

</script>
</body>
</html>
