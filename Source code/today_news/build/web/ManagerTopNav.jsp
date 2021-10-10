<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="manager">All articles</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="managerComment">Comments</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <c:forEach items="${listC}" var="o">
                            <li><a href="managerCategory?cid=${o.id}"><p style="${tag == o.id ? "font-weight: bold;": "" }">${o.categoryName}</p></a></li>
                        </c:forEach>
                        <li role="separator" class="divider"></li>
                        <li><a href="#ManageCategoryModal" data-toggle="modal">Manage categories</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="HomeController">Go to front-end site</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.acc.username}<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="logout">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- Manage category Modal HTML -->
<div id="ManageCategoryModal" class="modal fade">

    <div class="modal-dialog">
        <div class="modal-content">
            <!--category table-->
            <div class="modal-header">						
                <h4 class="modal-title">Manage Category</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Category Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listC}" var="o">
                    <tr>
                        <td>${o.categoryName}</td>
                        <td>
                            <a href="#editCategoryModal"  class="edit" data-toggle="modal" onclick="Value(${o.id},'${o.categoryName}')"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#" class="delete" data-toggle="modal" onclick="confirmDeleteCategory(${o.id})" value="Delete" data-target="#modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <!--End of category table-->
            <form action="addCategory" method="post">

                <div class="modal-body">					
                    <div class="form-group">
                        <label>New Category Name</label>
                        <input name="categoryName" type="text" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Ennd of Manage category Modal HTML -->

<!-- Edit Modal HTML -->
<div id="editCategoryModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="editCategory" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Edit Category</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <input id="categoryId" name="categoryId" type="hidden" class="form-control" readonly required>
                        <label>Category Name</label>
                        <input id="categoryName" name="categoryName" type="text" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Edit Modal HTML -->

<div class="modal fade" id="modal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header bg-ars">
                <h4 class="modal-title" id="modalTitle">Delete confirm</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <!-- Modal body -->
            <div class="modal-body" id="modalBody">
            </div>
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal" id="btnConfirm">Confirm</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<script>
    function confirmDeleteCategory(id) {
        $("#modalBody").html("<h5 class='text-danger'>Delete this category will also remove all the articles associated. Are you sure you want to proceed? </h5>");
        $("#btnConfirm").on("click", function () {
            deleteCategory(id);
        });
    }
    function deleteCategory(id) {
        $.post("deleteCategory?cid=" + id, function (result) {
            $('#modal').modal('hide');
            location.reload();
        });
    }
</script>

<script>
$("#editCategoryModal").modal("hide");
    function Value(categoryId, categoryName) {
        $("#categoryName").val(categoryName);
        $("#categoryId").val(categoryId);
    }

    
    
</script>

