

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
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
    <body>
        <%@include file="ManagerTopNav.jsp"%>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Add new articles</h2>
                        </div>  
                    </div>
                </div>
                <form action="newArticle" method="post">
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Title</label>
                                <input name="title" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Thumbnail</label>
                                <input name="thumbnail" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Content</label>
                                <textarea id="content" type="text" cols="40" rows="4" name="content" placeholder="Description..."></textarea>
               
                            </div>
                            <div class="form-group">
                                <label>Is this a feature article</label>
                                <input type="checkbox" id="feature" name="feature" value="1">
                            </div>
                            <div class="form-group">
                                <label>Publish</label>
                                <input type="checkbox" id="publish" name="publish" value="1">
                            </div>
                            <div class="form-group">
                                <label>Publish date</label>
                                <input type="date" id="publish_date" name="publish_date" required>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.id}">${o.categoryName}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" href="manager" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>

            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <script src="js/manager.js" type="text/javascript"></script>
        <script type="text/javascript">
            config = {};
            config.entities_latin = false;
            config.language = "vi";
            CKEDITOR.replace('content', config);
        </script>

    </body>
</html>