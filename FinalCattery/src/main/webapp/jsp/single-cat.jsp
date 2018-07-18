<
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/jsp/parts/header.jsp" %>

<div class="container">
    <div class="card">

        <div class="wrapper row">
            <div class="preview col-md-6">

                <div class="preview-pic tab-content">
                    <div class="tab-pane active" id="pic-1"><img src="http://placekitten.com/400/252"
                                                                 class="img-responsive"/></div>

                </div>

            </div>
            <div class="details col-md-6">
                <h3 class="product-title"><c:out value="${requestScope.singleCat.name}"/> <c:out
                        value="${requestScope.singleCat.lastname}"/></h3>
                <h3 class="status"><c:out value="${requestScope.singleCat.status}"/></h3>
                <h5 class="colors">
                    <strong><c:out value="${requestScope.singleCat.gender}"/></strong>
                </h5>
                <p class="product-description"><c:out value="${requestScope.singleCat.description}"/></p>
                <c:choose>
                    <c:when test="${requestScope.singleCat.priceWithDiscount != requestScope.singleCat.price && not empty requestScope.singleCat.priceWithDiscount}">
                        <h4 class="price">current price:
                            <del><span>$<c:out value="${requestScope.singleCat.price}"/></span></del>
                            <span>$<c:out value="${requestScope.singleCat.priceWithDiscount}"/></span></h4>
                    </c:when>
                    <c:otherwise>
                        <h4 class="price">current price: <span>$<c:out value="${requestScope.singleCat.price}"/></span>
                        </h4>
                    </c:otherwise>
                </c:choose>
                <h5 class="sizes">parents:
                    <span><c:out value="${requestScope.singleCat.femaleParent}"/> и
                        <span><c:out value="${requestScope.singleCat.maleParent}"/>
                </h5>
                <h5 class="colors">age:
                    <c:out value="${requestScope.singleCat.age}"/> month
                </h5>
                <h5 class="colors">body color:
                    <c:out value="${requestScope.singleCat.bodyColour}"/>
                </h5>
                <h5 class="colors">eyes color:
                    <c:out value="${requestScope.singleCat.eyesColour}"/>
                </h5>
                <c:choose>
                    <c:when test="${sessionScope.role eq 'USER'}">
                        <div class="action">
                            <button class="add-to-cart btn btn-default" type="button">Book</button>
                        </div>
                    </c:when>
                    <c:when test="${sessionScope.role eq 'ADMIN'}">
                        <div class="action">
                            <button class="add-to-cart btn btn-default" type="button">Delete</button>
                        </div>
                    </c:when>
                    <c:when test="${sessionScope.role eq 'EXPERT'}">
                        <div class="action">
                            <button class="add-to-cart btn btn-default" type="button">Edit</button>
                        </div>
                    </c:when>
                    <c:otherwise>

                        <i class="fas fa-exclamation mark"> You must be logged in in order to make an
                            order</i></c:otherwise>
                </c:choose>
            </div>

        </div>
    </div>
</div>

<%@ include file="/jsp/parts/footer.jsp" %>