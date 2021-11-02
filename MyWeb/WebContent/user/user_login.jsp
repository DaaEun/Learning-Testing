<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.virtual-box {
   margin-bottom: 20px;
}
</style>
</head>
<body>

<jsp:include page="../include/header.jsp"/>

<!-- 로그인 양식 -->

<div class="virtual-box"></div>
<div class="container">
   <div class="row">
      <div class="col-md-offset-2 col-md-4">
         <div class="panel" style="width:200%;">
            <div class="panel-heading text-white" align="center" style="background: #F8F8FF;">
               <h2><span style="color: gray;">MyWeb</span> 로그인</h2>               
            </div>
            <div class="panel-body">
               <form action="user_login_con.jsp" method="post"
               style="margin-bottom: 0;">
               <table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
                  <tr>
                     <td style="text-align: left">
                        <p><strong>아이디를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                     </td>
                  </tr>
                  <tr>
                     <td><input type="text" name="id"
                        class="form-control" maxlength="15"
                        required="required" aria-required="true"
                        style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                        placeholder="ex) abc1234"></td>
                  </tr>
                  <tr>
                     <td style="text-align: left">
                        <p><strong>비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                     </td>
                  </tr>
                  <tr>
                     <td><input type="password" name="pw" 
                        size="17" maxlength="20"class="form-control" 
                        required="required" aria-required="true"
                        maxlength="20" style="ime-mode: inactive; 
                        margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
                        placeholder="비밀번호를 입력하세요."></td>
                  </tr>
                  
               
                  
                  <tr>
                     <td style="padding-top: 10px; text-align: center">
                        <p><strong>로그인하셔서 더 많은 서비스를 이용해보세요!</strong></p>
                     </td>
                  </tr>
                  <tr>
                     <td style="width: 100%; text-align: center; colspan: 2;">
                     <input
                        type="submit" value="로그인" class="btn form-control"
                        style="background-color: #343A40; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
                     </td>
                  </tr>
                  <tr>
                     <td
                        style="width: 100%; text-align: center; colspan: 2; margin-top: 24px; padding-top: 12px; border-top: 1px solid #ececec">

                        <a class="btn form-control" href="user_join.jsp"
                        style="cursor: pointer; margin-top: 0; height: 40px; color: white; background-color: gray; border: 0px solid #388E3C; opacity: 0.8">
                           회원가입</a>
                     </td>
                  </tr>
                  
               </table>
            </form>
            </div>
         </div>
      </div>
   </div>
</div>

<jsp:include page="../include/footer.jsp"/>

</body>
</html>











