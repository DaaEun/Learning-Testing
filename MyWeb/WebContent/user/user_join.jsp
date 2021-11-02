<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

table {
   font-size: 1.25em;
}

</style>
</head>
<body>

<jsp:include page="../include/header.jsp"/>

<div class="virtual-box"></div>

<div class="container">
   <div class="row">
      <div class="col-md-offset-2 col-md-4">
         <div class="panel" style="width:200%;">
            <div class="panel-heading text-white" align="center" style="background: #F8F8FF;">
               <h2><span style="color: gray;">MyWeb</span> 회원 가입</h2>
            </div>
            <div class="panel-body">
               <form action="/MyWeb/join" method="post" name="reg_form" style="margin-bottom: 0;">
                  
                  <table
                     style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
                     <tr>
                        <td style="text-align: left">
                           <p><strong>아이디를 입력해 주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                        </td>                     
                     </tr>
                     <tr>
                        <td><input type="text" name="id"
                           class="form-control" maxlength="14"
                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                           placeholder="4글자 이상 작성하세요.">
                           </td>
                     </tr>
         
                     <tr>
                        <td style="text-align: left">
                           <p><strong>비밀번호를 입력해 주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                        </td>
                     </tr>
                     <tr>
                        <td><input type="password" size="17" maxlength="20"
                           name="pw" class="form-control" maxlength="20" 
                           style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
                           placeholder="4글자 이상 작성하세요."></td>
                     </tr>
                     <tr>
                        <td style="text-align: left">
                           <p><strong>비밀번호를 재확인 해 주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                        </td>
                     </tr>
                     <tr>
                        <td><input type="password" size="17" maxlength="20"
                           name="pw_check" class="form-control" 
                           maxlength="20"style="ime-mode: inactive; 
                           margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
                           placeholder="비밀번호가 일치해야합니다."></td>
                     </tr>
         
                     <tr>
                        <td style="text-align: left">
                           <p><strong>이름을 입력해 주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                        </td>
                     </tr>
                     <tr>
                        <td><input type="text" name="name"
                           class="form-control" maxlength="6"
                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                           placeholder="이름을 입력하세요."></td>
                     </tr>
                     
                      
                     <tr>
                        <td style="text-align: left">
                           <p><strong>이메일을 입력해 주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                        </td>
                     </tr>
                     <tr>
                        <td><input type="email" name="email"
                           class="form-control" 
                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                           placeholder="ex) abc@jsp.com"></td>
                     </tr>
                     <tr>
                        <td style="text-align: left">
                           <p><strong>주소를 입력해 주세요.</strong>&nbsp;&nbsp;&nbsp;</p>
                        </td>
                     </tr>
                     <tr>
                        <td><input type="text" name="address"
                           class="form-control" 
                           style="margin-bottom: 25px; width: 100%; height: 40px; border: 1px solid #d9d9de"
                           placeholder="ex) 서울특별시 종로구"></td>
                     </tr> 
                     
         
                     <tr>
                        <td style="padding-top: 10px; text-align: center">
                           <p><strong>회원가입을 환영합니다!</strong></p>
                        </td>
                     </tr>
                     <tr>
                        <td style="width: 100%; text-align: center; colspan: 2;">
                        <input
                           type="button" value="회원가입" 
                           class="btn form-control" onclick="joinConfirm()"
                           style="background: gray; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">
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















