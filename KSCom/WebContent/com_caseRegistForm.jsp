<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>com_case등록 폼</title>
<link rel="stylesheet" href="css/form.css">
</head>
<body>

<c:choose>
<c:when test="${id eq 'admin' }">
<jsp:include page="AdminPage.jsp"></jsp:include>
</c:when>
<c:otherwise>
<jsp:include page="template.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
</c:otherwise>
</c:choose>
<section>
   
      <h2>컴퓨터 케이스등록</h2>
   
      <form action="com_caseRegist.do" method="post" name = "writeForm" enctype="multipart/form-data">
      
   <table>
   <tr>
      <td class = "td_left">
         <label for = "brand">제조사 : </label>
      </td>
      <td class = "td_right">
       <select id="brand" name="brand">
       <option value="앱코">앱코</option>
       <option value="아이군주">아이군주</option>
       <option value="마이크로닉스">마이크로닉스</option>
       <option value="COX">COX</option>
       <option value="잘만">잘만</option>
       </select>
      </td>
   </tr>
   <tr>
      <td class = "td_left">
         <label for = "name">제품 이름 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "name" id ="name" required="required"/>
      </td>
   </tr>
   
   <tr>	
      <td class = "td_left">
         <label for = "core">제품 사이즈 : </label>
      </td>
      <td class = "td_right">
         <select id="size" name="size">
         
         <option value="빅타워">빅타워</option>
         <option value="미들타워">미들타워</option>
         <option value="미니타워">미니타워</option>
         <option value="데스크탑">데스크탑</option>
         <option value="마이크로타워">마이크로타워</option>
       
         </select>
      </td>
   </tr>
   
   
   <tr>
      <td class = "td_left">
         <label for = "power_standard">파워 규격: </label>
      </td>
      <td class = "td_right">
         <select id="power_standard" name="power_standard"> 
         <option value="ATX">표준 ATX</option>
         <option value="Micro-ATX">마이크로 ATX</option>
         <option value="ITX">표준 ITX</option>
         </select>
      </td>
   </tr> <tr>
      <td class = "td_left">
         <label for = "power_standard">쿨링 팬: </label>
      </td>
      <td class = "td_right">
         <select id="board_standard" name="board_standard"> 
         <option value="8개">8개</option>
         <option value="7개">7개</option>
         <option value="6개">6개</option>
         <option value="5개">5개</option>
         <option value="4개">4개</option>
         <option value="3개이하">3개이하</option>
         
         </select>
      </td>
   </tr>
  
   <tr>
      <td class = "td_left">
         <label for = "image">상품이미지 : </label>
      </td>
      <td class = "td_right">
         <input type = "file" name = "image" id ="image"/> *10MB 까지 업로드가능
      </td>
   </tr>
   <tr>
      <td class = "td_left">
         <label for = "price">가격 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "price" id ="price" placeholder="숫자만 입력"/>
      </td>
   </tr>
   
    <tr>
      <td class = "td_left">
         <label for = "content">제품 정보 : </label>
      </td>
      <td class = "td_right">
         <textarea name="content" id="content" rows="13" cols="70" wrap="virtual"></textarea>
      </td>
   </tr>
   <tr>
      <td colspan="2" id = "commandCell"> 
         <input type = "submit" value = "상품등록"/>      
         <input type = "reset" value = "다시작성"/>      
         <input type = "button" value = "상품목록보기" onClick="window.location.href='com_caseList.do'"/>      
      </td>
   </tr>   
   </table>
   </form>
   
</section>

</body>
</html>