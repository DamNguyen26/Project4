<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div id="comments">
    <div id="respond">
        <form action="comment" method="post" id="commentform">
            <c:if test="${sessionScope.acc == null}">
                <p>
                    <input type="text" name="author" id="author" value="" size="22" tabindex="1" required/>
                    <label for="author"><small>Name (required)</small></label>
                </p>
            </c:if> 
            <p>
                <!--this field to pass the article ID to comment servelet-->
                <input type="hidden" name="aid" id="aid" value="${detail.id}" readonly required></textarea>
            </p>
            <p>
                <textarea name="comment" id="comment" cols="100%" rows="10" tabindex="4" required></textarea>
            </p>
            <p>
                <button name="submit" type="submit" id="submit">Submit Comment</button>
            </p>
        </form>   

    </div>
    <c:forEach items="${listComment}" var="o">
        <div class="commented">
            <h3>
            <c:forEach items="${listU}" var="u">
            ${o.userId == u.id ? u.username : ""}
            </c:forEach>
            </h3>
            <div  class="content-comment">${o.commentContent}</div>
        </div>
    </c:forEach>
</div>

<style>
    .commented{
        margin-top: 20px;
        padding: 10px;
        border: 1px solid;
        border-color: #993523;
    }
</style>