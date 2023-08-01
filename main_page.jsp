<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
    <style>
        .mainpage {
            display: flex;
        }
    </style>
</head>
<body>
<h1>메인 페이지</h1>

<h3>김씨(ma)님 안녕하세요.</h3>
<h3 id="pointDisplay">포인트: 220000점</h3>
<button type="button" onclick="logout()">로그아웃</button>

<h3>구입할 콘텐츠를 선택하세요</h3>

<div class="mainpage">
    <!-- 각 콘텐츠 이미지를 클릭하면 해당 포인트가 차감되도록 함수를 호출합니다 -->
    <div><img src="images/main1.png" style="width:200px;height:150px" onclick="purchaseCourse(100000)">&nbsp;</div>
    <div><img src="images/main2.png" style="width:200px;height:150px" onclick="purchaseCourse(500000)">&nbsp;</div>
    <div><img src="images/main3.png" style="width:200px;height:150px" onclick="purchaseCourse(300000)">&nbsp;</div>
</div>
<div>광고 <br/>
    <!-- Add an 'id' attribute to the image for referencing in JavaScript -->
    <img id="adImage" src="images/main4.png" style="width:200px;height:150px">&nbsp;</div>

<script>
    // 초기 포인트 설정 (220000점)
    let currentPoints = 220000;

    function logout() {
        // 로그아웃 버튼을 클릭하면 로그인 페이지로 리디렉션합니다.
        window.location.href = 'login_page.jsp';
    }

    function purchaseCourse(coursePoints) {
        if (currentPoints < coursePoints) {
            alert("포인트가 부족합니다. 광고를 클릭하여 포인트를 얻으세요.");
        } else {
            const confirmation = confirm("정말로 콘텐츠(intro)를 구입하시겠습니까?");
            if (confirmation) {
                // 포인트 차감
                currentPoints -= coursePoints;
                alert("콘텐츠(intro)를 구입하였습니다.");

                // 페이지에 보여지는 포인트 정보를 업데이트합니다.
                document.getElementById("pointDisplay").innerText = `포인트: ${currentPoints}점`;
            }
        }
    }

    // Function to handle the click event on the "main4.png" image
    document.getElementById("adImage").addEventListener("click", function () {
        // Generate a random point between 1 and 1000 (inclusive)
        const randomPoints = Math.floor(Math.random() * 1000) + 1;
        currentPoints += randomPoints;
        alert(`광고를 클릭하여 ${randomPoints}포인트를 획득하였습니다.`);

        // Update the displayed point information
        document.getElementById("pointDisplay").innerText = `포인트: ${currentPoints}점`;
    });
</script>
</body>
</html>
