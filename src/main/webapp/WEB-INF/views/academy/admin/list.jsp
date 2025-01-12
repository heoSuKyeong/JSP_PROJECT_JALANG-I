<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>자랑이</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<%=request.getContextPath() %>/resources/img/favicon.ico" rel="icon">
  <link href="<%=request.getContextPath() %>/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<%=request.getContextPath() %>/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/resources/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath() %>/resources/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Logis
  * Updated: Sep 18 2023 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/logis-bootstrap-logistics-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>

  table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#middlebar .search-window {
  padding: 15px 0;
  background-color: #F3F6FC;
  border-top: 1px solid #101D34;
}
#middlebar .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#middlebar .search-window .search-wrap select {
  height: 40px;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #101D34;
}
#middlebar .search-window .search-wrap input {
  height: 40px;
  width: 80%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #101D34;
}
#middlebar .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#middlebar .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #101D34;
  border-bottom: 1px solid #101D34;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 139px;
  text-align: center;
}

.board-table .th-username {
  width: 139px;
}

.board-table .th-startdate {
  width: 139px;
}

.board-table .th-decacccount {
  width: 139px;
}

.board-table .th-id {
  width: 139px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
} 

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #101D34;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}


  
  
  
  	#pagebar {
		text-align: center;
		margin: 20px 0;
		
	}
  	#pagebar > a {
color: #555;		
	}
	
	
	#btnadd {
  backface-visibility: hidden;
  background: #0D42FF;
  border: 0;
  border-radius: .375rem;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  font-family: Circular,Helvetica,sans-serif;
  font-size: 16px;
  font-weight: 700;
  letter-spacing: -.01em;
  line-height: 1.3;
  text-align: center;
  text-decoration: none;
  transform: translateZ(0) scale(1);
  transition: transform .2s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  width: 80px;
  height: 30px;
  
 }
  #btnadd {
  	display: inline-block;
  	float: right;
  	margin: 10px 50px;
  
  }
  
  </style>
  
  <%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</head>

<body>

  <%@ include file="/WEB-INF/views/inc/header.jsp" %>


  
  <!-- main -->

 

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" id=middlebar>
      <div class="page-header d-flex align-items-center" style="background-image: url('<%=request.getContextPath() %>/resources/img/backgroundImg2.png');">
        <div class="container position-relative">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-6 text-center">
              <h2>학원 관리</h2>
              <p></p>
            </div>
          </div>
        </div>
      </div>
      <nav>
        <div class="container">
          <ol>
            <li><a href="index.html">관리 메뉴</a></li>
            <li>학원 관리</li>
          </ol>
          <div class="search-window">
                <form method="GET' action="/jr/academy/admin/list.do">
                    <div class="search-wrap">
							<select name="column">
								<option value="academyName">이름</option>
								<option value="academyLocation">위치</option>
								<option value="academyTel">전화번호</option>
							</select>
							<input id="search" type="text" name="word" placeholder="검색어를 입력해주세요." required>
                        <button type="submit" class="btn btn-dark">검색</button>
                    </div>
                </form>
            </div>
        </div>
      </nav>
    </div><!-- End Breadcrumbs -->

   
<section class="notice">

   
   
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
   <input id="btnadd" type="button" value="추가" onclick="location.href='/jr/academy/admin/add.do'">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-username">이름</th>
                    <th scope="col" class="th-id">위치</th>
                    <th scope="col" class="th-startdate">전화번호</th>                                     
                    <th scope="col" class="th-decacccount">별점</th>                                     
                </tr>
                </thead>
            <tbody>
                  <c:forEach items="${list}" var="dto" varStatus="status">
                    <tr>
                       <td>${status.count}</td>
                        <td><a href="/jr/academy/admin/detail.do?seq=${dto.academySeq}">${dto.academyName}</td> <!-- 회원명 -->
                        <td>${dto.academyLocation}</td> 
                        <td>${dto.academyTel}</td> 
                        <td>${dto.academyStar}</td> 
                    </tr>
                </c:forEach>
                
                <c:if test="${totalCount == 0 }">
                	<tr><td colspan="5">검색 결과가 없습니다.</td></tr>
                </c:if>
                
            </tbody>
            </table>
        </div>
    </div>
    

</section>


<div id="pagebar">${ pageBar }</div>  
  

  <!-- /main -->

  <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/inc/footer.jsp" %>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>
  
  <%@ include file="/WEB-INF/views/inc/ad.jsp" %>
  <%@ include file="/WEB-INF/views/inc/side.jsp" %>

  <Script>
  
  
  </Script>


</body>

</html>