<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> 
<!-- BEGIN left sidebar -->
    <div id="lsidebar">
      <!-- begin categories -->
      <h2>Categories</h2>
      <ul>
        <c:forEach items="${listC}" var="o">
            <li><a href="category?cid=${o.id}"><p style="${tag == o.id ? "font-weight: bold;": "" }">${o.categoryName}</p></a></li>
        </c:forEach>
      </ul>
      <!-- end categories -->
        <!-- begin pages -->
      <h2>Pages</h2>
      <ul>
        <li><a href="#">About</a></li>
        <li><a href="#">Links</a></li>
        <li><a href="#">Archives</a></li>
        <li><a href="#">Resources</a></li>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Sitemap</a></li>
      </ul>
      <!-- end pages -->
      <!-- begin meta -->
      <c:if test="${sessionScope.acc == null}">
      <h2><a href="Login.jsp">Login</a></h2>
      </c:if>
      <c:if test="${sessionScope.acc != null}">
      <h2>Hi, ${sessionScope.acc.username}</h2>
      <ul>
           <c:if test="${sessionScope.acc.role == 1}">
           <li><a href="manager">Admin site</a></li>
           </c:if>
           <li><a href="logout">Logout</a></li>   
      </ul>
      </c:if>  
      <!-- end meta -->
    </div>
    <!-- END left sidebar -->
    <!-- BEGIN right sidebar -->
    <div id="rsidebar">
    
      <!-- begin popular articles -->
      <h2>Popular Articles</h2>
      <ul>
          <c:forEach items="${listPopArticleID}" var="f">
        <li><a href="detail?id=${f}"><c:forEach items="${listAllArticle}" var="n">${f == n.id? n.title :""}</c:forEach></a></li>
        </c:forEach>
      </ul>
      <!-- end popular articles -->
      <!-- begin featured video -->
      <h2>Featured Video</h2>
      <div class="video"> <img src="images/_video.jpg" alt="" /> </div>
      <!-- end featured video -->
    </div>
    <!-- END right sidebar -->