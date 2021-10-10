

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Today News CM</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
        <jsp:useBean id="a" class="dao.ArticleDAO" scope="request"></jsp:useBean>
    </header>
    <body>
        <%@include file="ManagerTopNav.jsp"%>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage Comments</h2>
                        </div>  
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th style="width:250px">Article</th>
                            <th>Username</th>
                            <th>Comment</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listComment}" var="o">
                            <tr>
                                <td ><c:forEach items="${listA}" var="a">${o.articleId == a.id? a.title : ""}</c:forEach></td>
                                <td><c:forEach items="${listU}" var="u"> ${o.userId == u.id ? u.username : ""} </c:forEach></td>
                                <td><div >${o.commentContent}</div></td>
                                <td>
                                    <a href="#" class="delete" data-toggle="modal" onclick="confirmDeleteComment(${o.id})" value="Delete" data-target="#modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


        <!-- Delete Modal HTML -->

        <div id="deleteCommentModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>

    </body>
</html>

<script>
    function confirmDeleteComment(id) {
        $("#modalBody").html("<h5 class='text-danger'>Are you sure you want to delete this comment? </h5>");
        $("#btnConfirm").on("click", function () {
            deleteComment(id);
        });
    }
    function deleteComment(id) {
        $.post("deleteComment?id=" + id, function (result) {
            $('#modal').modal('hide');
            location.reload();
        });
    }
</script>
