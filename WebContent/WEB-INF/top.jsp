<%@page import="controller.PutBookServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.LoginForm"%>
<% LoginForm loginForm = (LoginForm)session.getAttribute("loginForm"); %>
<% String name = controller.PutBookServlet.getNotNullString(request.getParameter("name"));%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="//cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.css"
	type="text/css" rel="stylesheet" />

<style type="text/css">
img {
	width: 10%; /* 横幅を割合で指定 */
	height: auto; /* 高さは自動指定 */
}

.box2 {
	padding: 0.5em 1em;
	margin: 2em 0;
	font-weight: bold;
	color: #000000; /*文字色*/
	background: #FFF;
	border: solid 2px #eee; /*線*/
	border-radius: 10px; /*角の丸み*/
}

.box2 p {
	margin: 0;
	padding: 0;
}

table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
}

table th, table td {
	padding: 10px 0;
	text-align: center;
}

table tr:nth-child(odd) {
	background-color: #eee
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div>topページ</div>
<br>
ImageURLを追加すると
<br>
EmployeeNoに画像が追加される（クリックすると画像表示）
<br>


	<div class="box2">
		<table id="list_table"
			class="table table-striped table-bordered table-hover table-condensed">
			<colgroup>
				<col style="width: 30px;">
				<col style="width: 200px;">
				<col style="width: 300px;">
				<col style="width: 200px;">
			</colgroup>
			<thead>
			<tbody>
				<tr>
					<th bgcolor="#bbbbbb"><input type="checkbox" class="check-all" /></th>
					<th bgcolor="#bbbbbb">EmployeeNo</th>
					<th bgcolor="#bbbbbb">BookTitle</th>
					<th bgcolor="#bbbbbb">About</th>
					<th bgcolor="#bbbbbb">Action</th>
				</tr>
			</thead>
			<tr id="list">
				<td><input type="checkbox" class="list-check" /></td>
				<td class="employeeno">00001</td>
				<td class="title">A</td>
				<td class="about">1982/01/02</td>
				<td><a href="#" class="delete-link">削除</a></td>
			</tr>
			<tr id="list">
				<td><input type="checkbox" class="list-check" /></td>
				<td class="employeeno">00002</td>
				<td class="title">B</td>
				<td class="about">1981/09/25</td>
				<td><a href="#" class="delete-link">削除</a></td>
			</tr>
			<tr id="list">
				<td><input type="checkbox" class="list-check" /></td>
				<td class="employeeno">00003</td>
				<td class="title">C</td>
				<td class="about"></td>
				<td><a href="#" class="delete-link">削除</a></td>
			</tr>
			</tbody>
			<tfoot>

			</tfoot>
		</table>
	</div>

	<table id="append_table" class="table table-bordered table-condensed">
		<colgroup>
			<col style="width: 30px;">
			<col style="width: 200px;">
			<col>
			<col style="width: 300px;">
			<col style="width: 200px;">
		</colgroup>
		<thead>
			<tr>
				<th bgcolor="#bbbbbb"></th>
				<th bgcolor="#bbbbbb"><label for="add_no">EmployeeNo</label></th>
				<th bgcolor="#bbbbbb">BookTitle</th>
				<th bgcolor="#bbbbbb">About</th>
				<th bgcolor="#bbbbbb">ImageURL</th>
				<th bgcolor="#bbbbbb">Action</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td><input type="text" id="add_no" class="form-control"></td>
				<td><input type="text" id="add_name" class="form-control"></td>
				<td><input type="text" id="add_about" class="form-control"></td>
				<td><input type="text" id="add_image" class="form-control"></td>
				<td><button type="button" id="append_row"
						class="btn btn-default">登録</button></td>
			</tr>
		</tbody>
	</table>


	<script src="//code.jquery.com/jquery-latest.js"></script>
	<script
		src="//cdn.rawgit.com/noelboss/featherlight/1.7.13/release/featherlight.min.js"
		type="text/javascript" charset="utf-8"></script>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>


	<script type="text/javascript">

var refleshAllCheckboxes = (function() {
    var allChecked = true;
    $('.list-check').each(function() {
      allChecked &= $(this).prop('checked');
    });
    $('.check-all').prop('checked', allChecked);
  });

  $('#list_table').on('click', '.check-all', function() {
    var checkboxValue = $(this).prop('checked');
    $('.check-all').prop('checked', checkboxValue);
    $('.list-check').prop('checked', checkboxValue);
  });

  $('#list_table').on('click', '.list-check', function() {
    refleshAllCheckboxes();
  });

  $('#append_row').on('click', function() {
    $('#list_table').append(
      $('<tr>').append(
        $('<td>').append($('<input type="checkbox">').addClass('list-check').prop('checked', $('.check-all').prop('checked'))),
        $('<td>').append($('<a>').attr('data-featherlight','image').prop('href',$('#add_image').val()).append($('#add_no').val())),
        $('<td>').append($('#add_name').val()),
        $('<td>').append($('#add_about').val()),
        $('<td>').append(
          $('<a>').prop('href', '#').addClass('delete-link').append('削除')
        )
      )
    );
    $('#add_no').val('');
    $('#add_name').val('');
    $('#add_about').val('');
  });

  $('#list_table').on('click', '.delete-link', function(){
    $(this).closest('tr').remove();
    refleshAllCheckboxes();
  });

  </script>




</body>
</html>