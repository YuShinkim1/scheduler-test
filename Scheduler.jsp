<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.concurrent.Executors" %>
<%@ page import="java.util.concurrent.ScheduledExecutorService" %>
<%@ page import="java.util.concurrent.TimeUnit" %>
<!DOCTYPE html>
<html>
<head>
    <title>Scheduler</title>
</head>
<body>
    <h1>스케줄러 작동</h1>

    <%-- 스케줄러 시작버튼 --%>
    <button type="button" onclick="startScheduler()">스케줄러 시작</button>
    <%-- 스케줄러 종료버튼 --%>
    <button type="button" onclick="stopScheduler()">스케줄러 종료</button>

    <script>
        var scheduler; // ScheduledExecutorService 객체를 저장할 변수

        function startScheduler() {
            // 스케줄러 시작시 출력할 메시지
            console.log("스케줄러가 시작되었습니다.");

            // 스케줄러 시작: 20초마다 increasePointsTask() 함수를 실행
            scheduler = setInterval(increasePointsTask, 20000); // 20초 (20000 milliseconds)
        }

        function stopScheduler() {
            // 스케줄러 종료시 출력할 메시지
            console.log("스케줄러가 종료되었습니다.");

            // 스케줄러 종료
            clearInterval(scheduler);
        }

        function increasePointsTask() {
            // 현재 시간을 구해서 포맷팅
            var currentTime = new Date();
            var formattedTime = currentTime.getHours() + ":" + currentTime.getMinutes() + ":" + currentTime.getSeconds();

            // 5명의 유저 정보 (가정)
            var users = [
                { id: 1, name: "User 1", point: 0 },
                { id: 2, name: "User 2", point: 0 },
                { id: 3, name: "User 3", point: 0 },
                { id: 4, name: "User 4", point: 0 },
                { id: 5, name: "User 5", point: 0 }
            ];

            // 모든 유저들에게 1포인트씩 획득
            users.forEach(function(user) {
                user.point += 1;
            });

            // 현재 유저들의 포인트 정보와 실행 시간을 출력
            console.log("job가 실행됨: " + formattedTime + "/ " + users.length + "명에게 포인트 부여(1점)");
            console.log(users);
        }
    </script>
</body>
</html>
