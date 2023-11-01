<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--안넣어주먄 한글 깨짐 -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>register</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/user/register.css">

</head>
<body>

<header class="header">

    <section class="flex">

        <a href="home" class="logo">Educa.</a>

        <form action="search.html" method="post" class="search-form">
            <input type="text" name="search_box" required placeholder="search courses..." maxlength="100">
            <button type="submit" class="fas fa-search"></button>
        </form>

        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="search-btn" class="fas fa-search"></div>
            <div id="user-btn" class="fas fa-user"></div>
            <div id="toggle-btn" class="fas fa-sun"></div>
        </div>

        <div class="profile">
            <img src="resources/images/pic-1.jpg" class="image" alt="">
            <h3 class="name">shaikh anas</h3>
            <p class="role">studen</p>
            <a href="profile.jsp" class="btn">view profile</a>
            <div class="flex-btn">
                <a href="login.jsp" class="option-btn">login</a>
                <a href="register.html" class="option-btn">register</a>
            </div>
        </div>

    </section>

</header>

<div class="side-bar">

    <div id="close-btn">
        <i class="fas fa-times"></i>
    </div>

    <div class="profile">
        <img src="resources/images/pic-1.jpg" class="image" alt="">
        <h3 class="name">shaikh anas</h3>
        <p class="role">studen</p>
        <a href="profile.jsp" class="btn">view profile</a>
    </div>

    <nav class="navbar">
        <a href="home"><i class="fas fa-home"></i><span>home</span></a>
        <a href="about"><i class="fas fa-question"></i><span>about</span></a>
        <a href="courses"><i class="fas fa-graduation-cap"></i><span>courses</span></a>
        <a href="teachers"><i class="fas fa-chalkboard-user"></i><span>teachers</span></a>
        <a href="contact"><i class="fas fa-headset"></i><span>contact us</span></a>
    </nav>

</div>

<section class="form-container">

    <form id="registerForm" action="/join" method="post">
        <h3>register now</h3>
        <p>your name <span>*</span></p>
        <input type="text" name="user_name" placeholder="enter your name" required maxlength="50" class="box">
        <!-- nick_name -->
        <p>your nick name <span>*</span>
            <button type="button" class="inline-btn" onclick="checkNickName()">중복 확인</button>
            <input type="checkbox" name="nickNameCheck" value="N" style="display: none;">
        </p>
        <!-- 중복 검사 -->
        <input type="text" name="nickName" placeholder="enter your nick name" required maxlength="50" class="box">
        <p>your email <span>*</span></p>
        <input type="email" name="email" placeholder="enter your email" required maxlength="50" class="box">
        <p>your password <span>*</span></p>
        <input type="password" name="pwd" placeholder="enter your password" required maxlength="20" class="box">
        <p>confirm password <span>*</span></p>
        <input type="password" name="c_password" placeholder="confirm your password" required maxlength="20"
               class="box">
        <p>select profile <span>*</span></p>
        <%--      <input type="file" accept="image/*" required class="box">--%>
        <input type="submit" id="formSubmit" value="register new" name="submit" class="btn">
    </form>

</section>

<footer class="footer">

    &copy; copyright @ 2022 by <span>mr. web designer</span> | all rights reserved!

</footer>

<!-- custom js file link  -->
<script src="resources/js/script.js"></script>


</body>
</html>

<script>
    function checkNickName() {
        console.log("checkNickName");
        let nickName = document.getElementsByName("nickName")[0].value;
        if (nickName == "") {
            alert("닉네임을 입력해주세요.");
            return false;
        }
        // fetch 사용

        fetch("/checkNickName?nickName=" + nickName)
            .then(response => response.text())
            .then(text => {
                console.log(text);
                if (text == "success") {
                    alert("사용 가능한 닉네임 입니다.");
                    document.getElementsByName("nickNameCheck")[0].value = "Y";
                } else {
                    alert("이미 사용중인 닉네임 입니다.");
                    document.getElementsByName("nickNameCheck")[0].value = "N";
                    // nickName 초기화
                    document.getElementsByName("nickName")[0].value = "";
                }
            });

    }

    // formSubmit 버튼 클릭시
    document.getElementById("formSubmit").onclick = function () {
        console.log("formSubmit");
        // nickNameCheck 값이 Y 인지 확인
        let nickNameCheck = document.getElementsByName("nickNameCheck")[0].value;
        console.log(nickNameCheck);
        if (nickNameCheck == "N") {
            alert("닉네임 중복 확인을 해주세요.");
            return false;
        }

       // password 같은지 확인
       let pwd = document.getElementsByName("pwd")[0].value;
       let c_pwd = document.getElementsByName("c_password")[0].value;
       console.log(pwd);
       console.log(c_pwd);
       if (pwd != c_pwd) {
          alert("비밀번호가 일치하지 않습니다.");
          return false;
       }

        // form submit
        let registerForm = document.getElementById("registerForm");
        registerForm.submit();
    }
</script>