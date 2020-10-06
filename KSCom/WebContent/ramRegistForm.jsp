<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>램등록폼</title>
<link rel="stylesheet" href="css/form.css">
<script>
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
   
      <h2>Ram등록</h2>
   
      <form action="" method="post" name = "writeForm" enctype="multipart/form-data">
      
   <table>
    
   <tr>
      <td class = "td_left">
         <label for = "brand">브랜드 : </label>
      </td>
      <td class = "td_right">
         <select id="brand" name="brand">
         <option value="삼성">삼성</option>
         <option value="GelL">GelL</option>
         <option value="G.SKILL">G.SKILL</option>
         <optgroup label="마이크론">
         <option value="대원cts">대원cts</option>
         <option value="아스크텍">아스크텍</option>
         </optgroup>
         </select>
      </td>
   </tr>
    <tr>
      <td class = "td_left">
         <label for = "name">제품 이름 : </label>
      </td>
      <td class = "td_right">
         <input type = "text" name = "name" id ="name" required="required"/>
          <input type="button" onclick="itemsCheck()" value="클릭">
         <span id="resultName"></span>
      </td>
   </tr>
   <tr class="td_left">
   	<td><label for ="clock">클럭 :</label></td>
   	<td class="td_right">
   		<input type="text" name="clock" id="clock"/>Mhz
   	</td>
   	</tr>
   <tr>
      <td class = "td_left">
         <label for = "capacity">용량 : </label>
      </td>
      <td class = "td_right">
         <select id="capacity" name="capacity">
         <option value="4GB">4GB</option>
         <option value="8GB">8GB</option>
         <option value="16GB">16GB</option>
         <option value="32GB">32GB</option>
         <option value="64GB">64GB</option>
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
         <input type = "number" class="onlyNum" name = "price" id ="price" placeholder="숫자만 입력"/>
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
         <input type = "submit" value = "상품등록" class="writeSubRam"/>      
         <input type = "reset" value = "다시작성"/>      
         <input type = "button" value = "상품목록보기" onClick="window.location.href='ramList.do'"/>      
      </td>
   </tr>   
   </table>
   </form>
   
</section>
</c:otherwise>
</c:choose>
</body>
</html>