
<form:form modelAttribute="commodity" action="./newCommodity?${_csrf.parameterName}=${_csrf.token}" method="post"
               enctype="multipart/form-data" id="addComm">

        <form class="form-inline" name="subCategoryID">
        <c:forEach var="subCategory" items="${subcategories}">
            <fieldset class="form-group" name="subCategoryID">
                <input value="${subCategory.id}" name="subCategoryID" type="radio" id="radio${subCategory.id}">
                <label for="radio${subCategory.id}">${subCategory.category.name} => ${subCategory.name}</label>
            </fieldset>
        </c:forEach>
        </form>
        <div class="md-form">
            <label for="form1" class="">Commodity name</label>
            <form:input path="name" type="text" id="form1" class="form-control"/>
        </div>
        <div class="md-form">
            <label for="form1" class="">Descriptions</label>
            <form:input path="description" type="text" id="form1" class="form-control"/>
        </div>
        <div class="md-form">
            <label for="form1" class="">Price</label>
            <form:input path="price" type="text" id="form1" class="form-control"/>
        </div>
        <form class="range-field">
            <label for="form1" class="">Quantity</label>
            <input path="quantity" type="range" min="0" max="25" />
        </form>
        <form action="#">
            <div class="file-field">
                <div class="btn btn-primary btn-sm">
                    <span>Choose files</span>
                    <input type="file" multiple>
                </div>
                <div class="file-path-wrapper">
                    <input path="commodityImage" form="addComm" class="file-path validate" type="text" placeholder="Upload one or more files">
                </div>
            </div>
        </form>
                <button type="submit" class="btn btn-primary" id="rebBTN" form="addComm">Add Commodity</button>
    </form:form>