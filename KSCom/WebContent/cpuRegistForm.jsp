<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cpu등록 폼</title>
<link rel="stylesheet" href="css/form.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/jquery.js"></script>
<script type="text/javascript">



</script>
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

<c:choose>
<c:when test="${id ne 'admin' }">
<script>
alert('잘못된 경로입니다.');
location.href="loginForm.jsp";
</script>
</c:when>
<c:otherwise>

<section>
   
      <h2>CPU등록</h2>
   
      <form action=""  method="post" name = "writeForm" enctype="multipart/form-data">
      
   <table>
   <tr>
      <td class = "td_left">
         <label for = "name">제품 이름 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "name" id ="name" required="required" />
         <input type="button" onclick="itemsCheck()" value="클릭">
         <span id="resultName"></span>
         <input type="text" name="resultNameDB" value="notRs">

      </td>
   </tr>
   
   <tr>	
      <td class = "td_left">
         <label for = "core">코어 : </label>
      </td>
      <td class = "td_right">
         <select id="core" name="core">
         
         <option value="dual">듀얼코어</option>
         <option value="quad">쿼드코어</option>
         <option value="hexa">헥사코어</option>
         <option value="octa">옥사코어</option>
         <option value="another">기타코어</option>
       
         </select>
      </td>
   </tr>
   
   
   <tr>
      <td class = "td_left">
         <label for = "cpu_package">브랜드 : </label>
      </td>
      <td class = "td_right">
         <select id="cpu_package" name="cpu_package">
         
         <option value="인텔">인텔</option>
         <option value="amd">AMD</option>
         <option value="기타">기타</option>
       
         </select>
      </td>
   </tr>
   
   <tr>
      <td class = "td_left">
         <label for = "image">상품이미지 : </label>
      </td>
      <td class = "td_right">
         <input type = "file" name = "image" id ="image" required="required"/> *10MB 까지 업로드가능
      </td>
   </tr>
   <tr>
      <td class = "td_left">
         <label for = "price">가격 : </label>
      </td>
      <td class = "td_right">
         <input type = "number" class="onlyNum" name = "price" id ="price" placeholder="숫자만 입력" required="required"/>
      </td>
   </tr>
   
    <tr>
      <td class = "td_left">
         <label for = "content">제품 정보 : </label>
      </td>
      <td class = "td_right">
         <textarea name="content" id="content" rows="13" cols="70"  wrap="physical" required="required"></textarea>
      </td>
   </tr>
   <tr>
      <td colspan="2" id = "commandCell"> 
         <input type = "submit" value = "상품등록" class="writeSubCpu"/>      
         <input type = "reset" value = "다시작성"/>      
         <input type = "button" value = "상품목록보기" onClick="window.location.href='cpuList.do'"/>      
      </td>
   </tr>   
   </table>
   </form>
   

     
</section>
</c:otherwise>
</c:choose>
</body>
</html>