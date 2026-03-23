<%@ include file="header.jsp" %>

<div class="row justify-content-center py-5">
    <div class="col-md-6 text-center">
        <div class="card border-0 shadow-sm p-5 bg-white">
            <div class="mb-4">
                <i class="bi bi-exclamation-triangle-fill text-danger display-1 shadow-sm rounded-circle p-3 d-inline-block bg-danger bg-opacity-10 mb-3"></i>
            </div>
            <h2 class="fw-bold text-dark mb-3">Oups ! Une erreur est survenue</h2>
            <p class="text-muted mb-5 lead">Nous sommes désolés, mais quelque chose s'est mal passé. Veuillez réessayer plus tard ou contacter l'administrateur.</p>
            <div class="d-grid gap-2 overflow-hidden shadow-sm rounded-3">
                <a href="<%= request.getContextPath() %>/" class="btn btn-primary btn-lg border-0 shadow">
                    <i class="bi bi-house-door-fill me-2"></i>Retour à l'accueil
                </a>
            </div>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>