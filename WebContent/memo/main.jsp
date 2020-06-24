<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file = "../include/nav.jsp" %>
	

	
	<!-- 메모하기 -->	
<div class="container">
  <h2>Form control: textarea</h2>
  <p>The form below contains a textarea for comments:</p>
  <form>
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="comment" name="text"></textarea>
    </div>
    <button onclick="memoWrite()" type="button" class="btn btn-primary">닫기</button>
  </form>
</div>

	<!-- 메모 한 내용들을 뿌리기 -->
<div class="container">
  <h2>Form control: textarea</h2>
  <p>The form below contains a textarea for comments:</p>
  <form>
    <div class="form-group">
      <label for="comment">Comment:</label>
      <textarea class="form-control" rows="5" id="comment" name="text"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>







</body>

<script>

function Memowrite(personId) {
	
	$.ajax({
		data: "POST",
		url: "/keep/memo?cmd=writeProc",
		data : JSON.
		contentType : "application/json; charset=utf-8",
		dataType : "json"
		
	}).done(function() {
		
	}).fail(function() {
		
	});
	
}




</script>




</html>