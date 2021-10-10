<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--Header-->
<%@include file="Header.jsp"%>
<!--End of Header-->
  <!-- BEGIN body -->
  <div id="body">
    <!-- BEGIN content -->
    <div id="content">
        <h1>${cateName}</h1>
      <!-- begin post -->
      <c:forEach items="${listA}" var="o">
      <div class="f post"> <a href="detail?id=${o.id}"><img src="images/${o.thumbnail}.jpg" alt="" /></a>
        <h3><a href="detail?id=${o.id}">${o.title}</a></h3>
        
        <!--parse local date to date-->
        <fmt:parseDate  value="${o.publishdate}"  type="date" pattern="yyyy-MM-dd" var="parsedDate" />
        <fmt:formatDate value="${parsedDate}" type="date" var="stdDatum" />
        <!--end of parsing local date to date-->
        
        <p class="details"><a href="#">${stdDatum}</a> | <c:forEach items="${listC}" var="c"><a href="category?cid=${o.categoryId == c.id ? c.id : "" }">${o.categoryId == c.id ? c.categoryName : "" }</a> </c:forEach> | <a href="${o.id}">23 Comments</a></p>
        <div  class="content-short">${o.content}</div>
      </div>
      </c:forEach>
      <!-- end post -->
    </div>
    <!-- END content -->
    <%@include file="SideMenu.jsp"%>
    <div class="break"></div>
  </div>
  <!-- END body -->
</div>
<!-- END wrapper -->
<!-- BEGIN footer -->
<div id="footer">
  <p>Aptech Learning</p>
</div>
<!-- END footer -->
</body>
</html>