<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인보드 등록 폼</title>
<link rel="stylesheet" href="css/form.css">

</head>
<body>
<jsp:include page="template.jsp"></jsp:include>

<section id = "registForm">
   <nav>
      <h2>Mainboard등록</h2>
   </nav>
      <form action="mainboardRegist.do" method="post" name = "writeForm" enctype="multipart/form-data">
      
   <table>
    
   <tr>
      <td class = "td_left">
         <label for = "brand">브랜드 : </label>
      </td>
      <td class = "td_right">
         <select id="brand" name="brand">
         <option value="이엠텍">이엠텍</option>
         <option value="갤럭시">갤럭시</option>
         <option value="ZOTAC">조탁</option>
         <option value="MSI">MSI</option>
         <option value="GIGABYTE">GIGABYTE</option>
         <option value="엠텍코리아">엠텍코리아</option>
         <option value="ASUS">ASUS</option>
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
   <tr class="td_left">
   	<td><label for ="clock">제품 시리즈 :</label></td>
   	<td class="td_right">
   		<select id="kind" name="kind">
   		<optgroup label="geforce">
        <option value="geforceRTX30">지포스 RXT30</option>
        <option value="geforceRTX20">지포스 RXT20</option>
        <option value="geforce16">지포스 16</option>
        <option value="geforce10">지포스 10</option>
        <option value="geforce10">지포스 10</option>
        </optgroup>
        <optgroup label="radeon">
        <option value="radeonRX5000">라데온 rx5000</option>
        <option value="radeonRX500">라데온 rx500</option>
        <option value="radeonRX400">라데온 rx400</option>
        <option value="radeonR9">라데온 r9</option>
        </optgroup>
        </select>
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
         <input type = "file" name = "image" id ="image"/>
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
         <textarea name="content" id="content" rows="13" cols="40" wrap="off"></textarea>
      </td>
   </tr>
   <tr>
      <td colspan="2" id = "commandCell"> 
         <input type = "submit" value = "상품등록"/>      
         <input type = "reset" value = "다시작성"/>      
         <input type = "button" value = "상품목록보기" onClick="window.location.href='mainboardList.do'"/>      
      </td>
   </tr>   
   </table>
   </form>
   
</section>

</body>
</html>