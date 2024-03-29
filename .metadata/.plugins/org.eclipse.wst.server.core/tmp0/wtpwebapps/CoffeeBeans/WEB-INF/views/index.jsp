<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>커피콩스(CoffeeBeans)</title>

    <!-- Favicon -->
    <link rel="icon" href="resources/img/core-img/abc.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="resources/ddd.css">

</head>

<style>
	.a {
		display:inline-block;
	}
	.categoryb {
		color:#6B4928;
	}
</style>

<body>   	
   	<jsp:include page="/WEB-INF/views/includes/header.jsp"/>
    
    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area">
        <!-- Hero Post Slides -->
        <div class="hero-post-slides owl-carousel">
            <!-- Single Slide -->
            <c:forEach items="${nlist2}" var="nbbs">
            <div class="single-slide" id="imagebox">
                <!-- Blog Thumbnail -->
                <div class="blog-thumbnail">
                    <a href="boardcontent?bbsid=${nbbs.BBSID}"><img id="picturebox" src="<spring:url value='/image/${nbbs.SAVEFILENAME}'/>" alt=""></a>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    <!-- ##### Hero Area End ##### -->
    
    <!-- ##### Catagory Area Start ##### -->
    <div class="post-catagory section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Single Post Catagory -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-post-catagory mb-30">
                        <img src="resources/img/bg-img/04.jpg" alt="">
                        <!-- Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                                <a href="board" class="post-tag">Function1</a>
                                <a href="board" class="post-title">BOARD</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Post Catagory -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-post-catagory mb-30">
                        <img src="resources/img/bg-img/05.jpg" alt="">
                        <!-- Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                                <a href="map" class="post-tag">Function2</a>
                                <a href="map" class="post-title">CAFE MAP</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Post Catagory -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-post-catagory mb-30">
                        <img src="resources/img/bg-img/062.jpg" alt="">
                        <!-- Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                                <a href="voclist" class="post-tag">Function3</a>
                                <a href="voclist" class="post-title">Voice Of Customer</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Area End ##### -->
    
    
    
    <!-- ##### Big Posts Area Start ##### -->
    <div class="big-posts-area mb-50">
        <div class="container">
        	
        	<!-- Single Big Post Area -->
        	<c:if test="${recentcontent.BBSID != null}">
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50">
                        <a href="boardcontent?bbsid=${recentcontent.BBSID}"><img id="recentpicture" src="<spring:url value='/image/${recentfile.SAVEFILENAME}'/>" alt=""></a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                    	<h2 class="categoryb">[최신 게시글]</h2>
                    	<h4>${recentcontent.BBSID}</h4>
                    	<ul>
                    	<li class="a">
                        <a href="#" class="post-tag">${recentcontent.REGION} /</a>
                        </li>
                        <li class="a">
                        <a href="#" class="post-tag">${recentcontent.SCORE}</a>
                        </li>
                        </ul>
                        
                        <a href="boardcontent?bbsid=${recentcontent.BBSID}" class="post-title">${recentcontent.TITLE}</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">조회수 : ${recentcontent.VIEWSCOUNT}</a>
                            <a href="#" class="post-author">${recentcontent.EMAIL}</a>
                        </div>
                        <p>${recentcontent.CONTENT}</p>
                        <h4>작성일자 : ${recentcontent.WRITEDATE}</h4>
                        <a href="boardcontent?bbsid=${recentcontent.BBSID}" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
            </div>
            </c:if>
        
            <!-- Single Big Post Area -->
            <c:if test="${maxcontent.BBSID != null}">
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50">
                        <a href="boardcontent?bbsid=${maxcontent.BBSID}"><img id="maxpicture" src="<spring:url value='/image/${maxfile.SAVEFILENAME}'/>" alt=""></a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                    	<h2 class="categoryb">[최고 조회수 게시글]</h2>
                    	<h4>${maxcontent.BBSID}</h4>
                    	<ul>
                    	<li class="a">
                        <a href="#" class="post-tag">${maxcontent.REGION} /</a>
                        </li>
                        <li class="a">
                        <a href="#" class="post-tag">${maxcontent.SCORE}</a>
                        </li>
                        </ul>
                        
                        <a href="boardcontent?bbsid=${maxcontent.BBSID}" class="post-title">${maxcontent.TITLE}</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">${maxcontent.WRITEDATE}</a>
                            <a href="#" class="post-author">${maxcontent.EMAIL}</a>
                        </div>
                        <p>${maxcontent.CONTENT}</p>
                        <h4>최고 조회수 : ${maxcontent.VIEWSCOUNT}</h4>
                        <a href="boardcontent?bbsid=${maxcontent.BBSID}" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
            </div>
            </c:if>
            
            <!-- Single Big Post Area -->
            <c:if test="${MaxcountcommentsBbs.BBSID != null}">
            <div class="row align-items-center">
                <div class="col-12 col-md-6">
                    <div class="big-post-thumbnail mb-50">
                        <a href="boardcontent?bbsid=${MaxcountcommentsBbs.BBSID}"><img id="recentpicture" src="<spring:url value='/image/${Maxcountcommentsfile.SAVEFILENAME}'/>" alt=""></a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="big-post-content text-center mb-50">
                    	<h2 class="categoryb">[최다(多) 댓글 게시글]</h2>
                    	<h4>${MaxcountcommentsBbs.BBSID}</h4>
                    	<ul>
                    	<li class="a">
                        <a href="#" class="post-tag">${MaxcountcommentsBbs.REGION} /</a>
                        </li>
                        <li class="a">
                        <a href="#" class="post-tag">${MaxcountcommentsBbs.SCORE}</a>
                        </li>
                        </ul>
                        
                        <a href="boardcontent?bbsid=${MaxcountcommentsBbs.BBSID}" class="post-title">${MaxcountcommentsBbs.TITLE}</a>
                        <div class="post-meta">
                            <a href="#" class="post-date">조회수 : ${MaxcountcommentsBbs.VIEWSCOUNT}</a>
                            <a href="#" class="post-author">${MaxcountcommentsBbs.EMAIL} /</a>
                            <a href="#" class="post-author">${MaxcountcommentsBbs.WRITEDATE}</a>
                        </div>
                        <p>${MaxcountcommentsBbs.CONTENT}</p>
                        <h4>최다 댓글수 : ${Countcomments.COMMENTS}개</h4>
                        <a href="boardcontent?bbsid=${MaxcountcommentsBbs.BBSID}" class="btn bueno-btn">Read More</a>
                    </div>
                </div>
            </div>
			</c:if>
        </div>
    </div>
    <!-- ##### Big Posts Area End ##### -->

    <jsp:include page="/WEB-INF/views/includes/footer.jsp"/>

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="resources/js/bootstrap/popper.min.js"></script>
    
    <script>
		$('div#imagebox').css({
			'width' : '100%',
			'maxWidth' : 'none',
			'height' : '500px'
		})
		$('img#picturebox').css({
			'width':'100%',
			'maxWidth' : 'none',
			'height' : '500px'
		})
		$('img#maxpicture').css({
			'width':'100%',
			'maxWidth' : 'none',
			'height' : '400px'
		})
		$('img#recentpicture').css({
			'width':'100%',
			'maxWidth' : 'none',
			'height' : '400px'
		})
	</script>
	
    <!-- Bootstrap js -->
    <script src="resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="resources/js/active.js"></script>
</body>

</html>