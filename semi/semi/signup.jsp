<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="assets/images/logo.png" type="image/x-icon">
    <meta name="description" content="">

    <title>회원가입 페이지</title>
    <!--font-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&amp;subset=latin">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
    <link rel="stylesheet" href="assets/DXPOPi-KSCpc-EUC-H/styles.css">

    <!--CSS-->
    <link rel="stylesheet" href="assets/tether/tether.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/dropdown/css/style.css">
    <link rel="stylesheet" href="assets/theme/css/style.css">
    <link rel="stylesheet" href="assets/et-line-font-plugin/style.css">
    <link rel="stylesheet" href="assets/animate.css/animate.min.css">
<script type="text/css"

    <style>
        #style01 {
            text-align: center;
        }

        body {
            font-family: 'Montserrat','', 'Jeju Gothic', serif;
        }
    </style>

    <%--<%--%>
        <%--request.setCharacterEncoding("UTF-8");--%>
        <%--String id = request.getParameter("id");--%>

        <%--if(Mgr.idCheck(id)){--%>
            <%--out.printIn("<script>");--%>
            <%--out.printIn("alert('이미 사용중인 아이디입니다.)')");--%>
            <%--out.printIn("document.frm.id.focus();");--%>
            <%--out.printIn("</script>");--%>
        <%--}--%>

    <%--%>--%>

</head>
<body>
<section class="cms-section cms-section-hero cms-section-full cms-parallax-background text-md-center" id="header2-3" style="background-color: gainsboro;">

    <div class="cms-overlay" style="opacity: 0.3; background-color: rgb(0, 0, 0);"></div>
        <div class="cms-table-cell">
            <div class="container">
                <div class="frame1 text-md-center">
                    <form method="post" name="frm" id="frm" action="MemberProc.jsp">
                        <div class="" style="display:inline-block">

                            <table>
                                <tr>
                                    <td>ID</td>
                                    <td><input class="" name="id" tabindex="1" type="text" id="id" /></td>
                                </tr>
                                <tr>
                                    <td>비밀번호</td>
                                    <td><input class="" id="password" name="password" tabindex="3" type="password" /></td>
                                </tr>
                                <tr>
                                    <td>비밀번호확인</td>
                                    <td><input class="" id="password_ck" name="password_ck" tabindex="3" type="password" /></td>
                                </tr>
                                <tr>
                                    <td>사용자 이름</td>
                                    <td><input class="" id="name" name="name" tabindex="2" type="text" /></td>
                                </tr>
                                <tr>
                                    <td>생일</td>
                                    <td><input class="" id="birth" name="birth" tabindex="2" type="text" /></td>
                                </tr>
                                <tr>
                                    <td>핸드폰 번호</td>
                                    <td><input class="" id="phonenum" name="phonenum" tabindex="2" type="text" /></td>
                                </tr>
                                <tr>
                                    <td>e-mail</td>
                                    <td><input class="" id="email" name="email" tabindex="2" type="text" /></td>
                                </tr>
                                
                                
                                <tr>
                                    <td colspan="2" align="right">
                                        <input class="btn btn-primary" id="commit" name="commit" tabindex="4" type="button" value="회원가입" onClick="isWordCheck(this.frm.id.value);inputCheck()"/>
                                        <div class="card-btn" style="font-size: 125%"><a class="btn btn-primary" href="main.jsp" style="padding: 0.55rem 1.1875rem; font-size:1rem;">메인으로 가기</a></div>

                                    </td>
                                </tr>
                            </table>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</section>

<footer class="cms-small-footer cms-section cms-section-nopadding" id="footer1-2i" style="background-color: rgb(50, 50, 50); padding-top: 1.75rem; padding-bottom: 1.75rem; ">

    <div class="container">
        <div class="" style="float:left;width:100%;">

            <p class="text-xs-center"><span style="font-weight: bolder;">CONTACT US</span>&nbsp;&nbsp;&nbsp; Tel. 010-XXXX-XXXX / Email. wtf@afk.com</p>
            <p class="text-xs-center">Copyright © 2018 Team NewWorld. All rights reserved.</p>
        </div>
    </div>
</footer>


<!--JS-->
<script src="assets/web/assets/jquery/jquery.min.js"></script>
<script src="assets/tether/tether.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/smooth-scroll/SmoothScroll.js"></script>
<script src="assets/dropdown/js/script.min.js"></script>
<script src="assets/theme/js/script.js"></script>


<input name="animation" type="hidden">

<script type="text/javascript" src="scripts.js"></script>
<script type="text/javascript">
    function click() {
        if ((event.button == 2) || (event.button == 3)) {
            alert('보안상 마우스 오른쪽 버튼은 사용할수 없습니다.');
        }
    }
    document.onmousedown = click;
</script>
</body>
</html>