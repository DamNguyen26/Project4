<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!--Header-->
<%@include file="Header.jsp"%> 
<!-- BEGIN body -->
  <div id="body">
    <!-- BEGIN content -->
    <div id="content" class="single">
      <!-- begin post -->
      <div class="single">
        <h2>${detail.title}</h2>
        <img class="alignright" src="images/${detail.thumbnail}.jpg" width="200" height="150" alt="" />
        <span>${detail.content}</span>
      </div>
      <%@include file="CommentSection.jsp"%>
      <!-- end post -->
    </div>
      
    <!-- END content -->
    <!-- BEGIN left sidebar -->
    <%@include file="SideMenu.jsp"%>
    <!-- END right sidebar -->
    <div class="break"></div>
  </div>
  <!-- END body -->
</div>
<!-- END wrapper -->
</body>
</html>