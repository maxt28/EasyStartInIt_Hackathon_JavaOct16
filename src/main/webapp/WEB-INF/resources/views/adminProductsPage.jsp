

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">
        <div class="col-xs-12 col-sm-9">

            <p class="pull-right visible-xs">
                <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
            </p>
            <div class="jumbotron">
                <h1>Products Page</h1>
                <p>Description of products</p>
            </div>
            <div class="row">
                <c:forEach var="product" items="${products}">
                    <div class="col-xs-6 col-lg-4">
                        <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="180" height="180">
                        <a href="/product?name=${product.name}">
                            <h2><c:out value="${product.name}"/></h2>
                        </a>
                        <p><c:out value="${product.description}"/> </p>
                        <h3><c:out value="${product.price}"/> </h3>
                        <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>

                        <% //TODO - add EDIT & DELETE button %>

                    </div><!--/.col-xs-6.col-lg-4-->
                </c:forEach>
            </div><!--/row-->
        </div><!--/.col-xs-12.col-sm-9-->

        <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar">
            <div class="list-group">
                <c:forEach var="name" items="${categories}">
                    <c:if test="${name==category.name}">
                        <a href="/product?name=${category}" class="list-group-item active">
                            <c:out value="${category.name}"/>
                        </a>
                    </c:if>
                    <c:if test="${name!=category.name}">
                        <a href="/products?name=${name}" class="list-group-item">
                            <c:out value="${name}"/>
                        </a>
                    </c:if>
                </c:forEach>
                <a href="#" class="list-group-item active">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
                <a href="#" class="list-group-item">Link</a>
            </div>
        </div><!--/.sidebar-offcanvas-->
    </div><!--/row-->
</div> <!-- /container -->


<!-- Bootstrap core JavaScript-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>

<script>
    <%@include file="resources/js/bootstrap.min.js"%>
</script>

</body>
</html>

