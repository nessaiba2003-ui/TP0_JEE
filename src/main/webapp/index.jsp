<%@ include file="header.jsp" %>

<div class="row align-items-center mb-5">
    <div class="col-lg-7">
        <h1 class="display-3 fw-bold mb-4">Optimisez votre <span style="color: var(--primary);">Inventaire</span></h1>
        <p class="lead mb-5 text-secondary">Une plateforme robuste intégrant Jakarta EE, Hibernate et JSP pour une gestion fluide et efficace de vos ressources.</p>
        <div class="d-flex gap-3">
            <a href="<%= request.getContextPath() %>/products" class="btn btn-primary btn-lg shadow">Explorer les Produits</a>
            <a href="<%= request.getContextPath() %>/users" class="btn btn-outline-dark btn-lg">Gérer les Utilisateurs</a>
        </div>
    </div>
    <div class="col-lg-5 d-none d-lg-block">
        <div class="p-5 bg-white rounded-circle shadow-lg text-center" style="background: linear-gradient(135deg, #fff 0%, #f0f4ff 100%);">
            <img src="https://img.icons8.com/illustrations/external-abstract-line-graph-economic-analysis-and-growth/100/external-abstract-line-graph-economic-analysis-and-growth.png" class="img-fluid" alt="Stats">
        </div>
    </div>
</div>

<div class="row g-4">
    <div class="col-md-6">
        <div class="card h-100 p-4 border-0">
            <div class="d-flex align-items-center mb-3">
                <div class="bg-primary bg-opacity-10 p-3 rounded-3 me-3">
                    <img src="https://img.icons8.com/fluency/48/user-group-man-man.png" width="32" alt="Users">
                </div>
                <h3 class="h5 mb-0 fw-bold">Utilisateurs</h3>
            </div>
            <p class="text-muted mb-4">Contrôlez les accès et les profils des membres de votre équipe en toute simplicité.</p>
            <div class="mt-auto d-flex gap-2">
                <a href="<%= request.getContextPath() %>/users" class="btn btn-light border flex-grow-1">Liste</a>
                <a href="<%= request.getContextPath() %>/user-form" class="btn btn-primary flex-grow-1">Ajouter</a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card h-100 p-4 border-0">
            <div class="d-flex align-items-center mb-3">
                <div class="bg-secondary bg-opacity-10 p-3 rounded-3 me-3">
                    <img src="https://img.icons8.com/fluency/48/box.png" width="32" alt="Products">
                </div>
                <h3 class="h5 mb-0 fw-bold">Stock & Produits</h3>
            </div>
            <p class="text-muted mb-4">Gérez votre catalogue de produits, suivez les quantités et mettez à jour les prix en temps réel.</p>
            <div class="mt-auto d-flex gap-2">
                <a href="<%= request.getContextPath() %>/products" class="btn btn-light border flex-grow-1">Inventaire</a>
                <a href="<%= request.getContextPath() %>/product-form" class="btn btn-secondary flex-grow-1">Ajouter</a>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>