<%@ include file="header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h1 class="h2 fw-bold text-dark mb-0">Inventaire des Produits</h1>
    <a href="<%= request.getContextPath() %>/product-form" class="btn btn-primary shadow-sm rounded-pill px-4">
        <i class="bi bi-plus-lg me-2"></i>Nouveau Produit
    </a>
</div>

<div class="card border-0 p-4 mb-4">
    <div class="row align-items-center">
        <div class="col-md-6 mb-3 mb-md-0">
            <p class="text-muted mb-0">Consultez et gérez vos produits en stock.</p>
        </div>
        <div class="col-md-6">
            <form action="<%= request.getContextPath() %>/products" method="get">
                <div class="input-group">
                    <span class="input-group-text bg-white border-end-0"><i class="bi bi-search text-muted"></i></span>
                    <input type="text" class="form-control border-start-0 ps-0" name="keyword" placeholder="Rechercher un produit..." value="${keyword}">
                    <button type="submit" class="btn btn-outline-primary px-4">Rechercher</button>
                    <c:if test="${not empty keyword}">
                        <a href="<%= request.getContextPath() %>/products" class="btn btn-outline-secondary px-3"><i class="bi bi-x-lg"></i></a>
                    </c:if>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="card border-0 shadow-sm overflow-hidden">
    <div class="table-responsive">
        <table class="table table-hover align-middle mb-0">
            <thead class="bg-light">
                <tr>
                    <th class="ps-4 py-3">ID</th>
                    <th class="py-3">Produit</th>
                    <th class="py-3">SKU</th>
                    <th class="py-3">Prix</th>
                    <th class="py-3">Stock</th>
                    <th class="py-3 text-end pe-4">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td class="ps-4">
                            <span class="badge bg-light text-dark border border-secondary border-opacity-25 rounded-pill px-3">#<c:out value="${product.id}" /></span>
                        </td>
                        <td>
                            <div class="fw-bold text-dark"><c:out value="${product.name}" /></div>
                        </td>
                        <td><code class="text-primary fw-medium"><c:out value="${product.sku}" /></code></td>
                        <td><span class="fw-semibold text-dark"><c:out value="${product.price}" /> €</span></td>
                        <td>
                            <c:set var="stockClass" value="${product.stockQuantity < 10 ? 'text-danger fw-bold' : 'text-success'}" />
                            <span class="${stockClass}">
                                <i class="bi bi-box-fill me-1 opacity-50"></i>
                                <c:out value="${product.stockQuantity}" />
                            </span>
                        </td>
                        <td class="text-end pe-4">
                            <div class="btn-group shadow-sm rounded-3">
                                <a href="<%= request.getContextPath() %>/product-form?action=edit&id=<c:out value='${product.id}' />" class="btn btn-white border px-3" title="Modifier">
                                    <i class="bi bi-pencil-square text-primary"></i>
                                </a>
                                <a href="<%= request.getContextPath() %>/delete-product?id=<c:out value='${product.id}' />" class="btn btn-white border px-3" title="Supprimer" onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit?')">
                                    <i class="bi bi-trash text-danger"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty products}">
                    <tr>
                        <td colspan="6" class="text-center py-5 text-muted">
                            <i class="bi bi-inbox display-4 d-block mb-3 opacity-25"></i>
                            Aucun produit trouvé.
                        </td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="footer.jsp" %>