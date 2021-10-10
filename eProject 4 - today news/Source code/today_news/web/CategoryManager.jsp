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
                    <div class="col-sm-4">
                        <h2>Manage articles</h2>
                    </div>  
                    <div class="col-sm-4">
                        <div class="collapse navbar-collapse"
                             id="navbar-collapse-1">
                            <form class="navbar-form navbar-right" 
                                  role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search article...">
                                </div>
                                <button type="submit" class="btn btn-primary">Search</button>
                            </form>
                        </div>
                    </div>  

                    <div class="col-sm-4">
                        <a href="newArticle"  class="btn btn-success" ><i class="material-icons">&#xE147;</i> <span>Add New Article</span></a>						
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Feature</th>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Content</th>
                        <th>Publish</th>
                        <th>Publish Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listP}" var="o">
                        <tr>
                            <td><p style="color:green; font-weight: bold">${o.feature == 1 ? "Featured" : ""}</td>
                            <td>${o.title}</td>
                            <td><c:forEach items="${listC}" var="c"> ${o.categoryId == c.id ? c.categoryName : ""} </c:forEach></td>
                            <td><div class="content-short">${o.content}</div></td>
                            <td>${o.publish == 1 ? "Published": "Unpublished"}</td>
                            <td>${o.publishdate}</td>
                            <td>
                                <a href="editArticle?id=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="#" class="delete" data-toggle="modal" onclick="confirmDeleteArticle(${o.id})" value="Delete" data-target="#modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>


    <!-- Delete Modal HTML -->

    <div id="deleteEmployeeModal" class="modal fade">
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
                                    function confirmDeleteArticle(id) {
                                        $("#modalBody").html("<h5 class='text-danger'>Delete this article will also remove all the comments associated. Are you sure you want to proceed? </h5>");
                                        $("#btnConfirm").on("click", function () {
                                            deleteArticle(id);
                                        });
                                    }
                                    function deleteArticle(id) {
                                        $.post("deleteArticle?aid=" + id, function (result) {
                                            $('#modal').modal('hide');
                                            location.reload();
                                        });
                                    }
</script>