<%@ include file="header.jsp" %>

<div class="row justify-content-center">
    <div class="col-lg-8">
        <div class="card border-0 shadow-sm p-4 p-md-5">
            <h2 class="fw-bold mb-4 text-dark">
                <i class="bi <c:if test='${product != null}'>bi-pencil-square</c:if><c:if test='${product == null}'>bi-plus-circle-fill</c:if> text-primary me-2"></i>
                <c:if test="${product != null}">Modifier le Produit</c:if>
                <c:if test="${product == null}">Ajouter un Produit</c:if>
            </h2>
            <hr class="mb-5 opacity-10">

            <form action="<%= request.getContextPath() %>/<c:if test='${product != null}'>update-product</c:if><c:if test='${product == null}'>create-product</c:if>" method="post">
                <c:if test="${product != null}">
                    <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
                </c:if>

                <div class="row g-4">
                    <div class="col-md-8">
                        <label for="name" class="form-label fw-semibold">Nom du produit</label>
                        <input type="text" class="form-control form-control-lg border-2" id="name" name="name" value="<c:out value='${product.name}' />" placeholder="Ex: Ordinateur Portable" required>
                    </div>
                    <div class="col-md-4">
                        <label for="sku" class="form-label fw-semibold">SKU</label>
                        <input type="text" class="form-control form-control-lg border-2" id="sku" name="sku" value="<c:out value='${product.sku}' />" placeholder="PRD-001" required>
                    </div>

                    <div class="col-12">
                        <label for="description" class="form-label fw-semibold">Description</label>
                        <textarea class="form-control border-2" id="description" name="description" rows="3" placeholder="Description détaillée du produit..."><c:out value='${product.description}' /></textarea>
                    </div>

                    <div class="col-md-6">
                        <label for="price" class="form-label fw-semibold">Prix (€)</label>
                        <div class="input-group">
                            <input type="number" step="0.01" class="form-control form-control-lg border-2" id="price" name="price" value="<c:out value='${product.price}' />" required>
                            <span class="input-group-text bg-light border-2 border-start-0">€</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="stockQuantity" class="form-label fw-semibold">Stock initial</label>
                        <input type="number" class="form-control form-control-lg border-2" id="stockQuantity" name="stockQuantity" value="<c:out value='${product.stockQuantity}' />" required>
                    </div>

                    <div class="col-12 mt-5">
                        <div class="d-flex gap-3">
                            <button type="submit" class="btn btn-primary btn-lg px-5 flex-grow-1 shadow">Enregistrer</button>
                            <a href="<%= request.getContextPath() %>/products" class="btn btn-light btn-lg border px-4">Annuler</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>