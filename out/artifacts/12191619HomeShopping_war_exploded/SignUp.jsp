<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원가입 페이지</title>
    <style>
        .SignUp{
            background-color: #ffc800;
        }
    </style>
    <script>
        var IDoverlap = true;
        function SignIn(){
            if(IDoverlap){
                alert("아이디 중복을 먼저 확인해주세요.");
                return;
            }
            else{
                document.getElementById("form_signin").submit();
            }
        }

        function CheckIdOverlap(){
            var checkid;
            checkid = document.getElementById("ID").value;

            // document.getElementById("jsp_include").innerHTML = "<"+"jsp:include page='UserController?id=" + checkid + "'/>";
            var existid;
            existid = '${user}';
            if(existid === ""){
                alert(checkid + " 와" + " 중복되는 아이디가 없습니다. ");
                document.getElementById("checkbutton").value = "확인완료";
                IDoverlap = false;
            }
            else{
                alert("중복되는 아이디가 있습니다.");
            }
        }
    </script>
</head>
<body>
<h1>회원가입</h1>
<jsp:include page="component/HorizNavBar.jsp"/>
<form class="form-inline" id="form_signin" action="CompleteSignUp.jsp" method="post">
    <a style="margin-left: 100px; color: black; text-decoration: none">ID : </a>
    <input class="form-control" style="margin-bottom: 10px" id="ID" type="text" name="id">
    <input class="btn btn-info btn-lg" style="margin-bottom: 10px" id="checkbutton" type="button" value="중복확인" onclick="CheckIdOverlap()"> <br>
    PWD : <input class="form-control" style="margin-bottom: 10px" type="text" name="pwd"> <br>
    Name : <input class="form-control" style="margin-bottom: 10px" type="text" name="name"> <br>
    money : <input class="form-control" style="margin-bottom: 10px" type="int" name="money"> <br>
    <input class="btn btn-info btn-lg" type="button" value="가입하기" onclick="SignIn()">
</form>
</body>
</html>