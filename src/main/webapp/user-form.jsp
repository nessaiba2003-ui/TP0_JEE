<%@ include file="header.jsp" %>

<div class="row justify-content-center">
    <div class="col-lg-7">
        <div class="card border-0 shadow-sm p-4 p-md-5">
            <h2 class="fw-bold mb-4 text-dark">
                <i class="bi <c:if test='${user != null}'>bi-person-check-fill</c:if><c:if test='${user == null}'>bi-person-plus-fill</c:if> text-primary me-2"></i>
                <c:if test="${user != null}">Modifier l'Utilisateur</c:if>
                <c:if test="${user == null}">Nouvel Utilisateur</c:if>
            </h2>
            <p class="text-muted mb-4 small">Configurez les informations personnelles de l'utilisateur.</p>
            <hr class="mb-5 opacity-10">

            <form action="<%= request.getContextPath() %>/<c:if test='${user != null}'>update-user</c:if><c:if test='${user == null}'>create-user</c:if>" method="post">
                <c:if test="${user != null}">
                    <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
                </c:if>

                <div class="row g-4">
                    <div class="col-md-6">
                        <label for="firstName" class="form-label fw-semibold">Prénom</label>
                        <input type="text" class="form-control form-control-lg border-2" id="firstName" name="firstName" value="<c:out value='${user.firstName}' />" placeholder="John" required>
                    </div>
                    <div class="col-md-6">
                        <label for="lastName" class="form-label fw-semibold">Nom</label>
                        <input type="text" class="form-control form-control-lg border-2" id="lastName" name="lastName" value="<c:out value='${user.lastName}' />" placeholder="Doe" required>
                    </div>

                    <div class="col-12">
                        <label for="email" class="form-label fw-semibold">Adresse Email</label>
                        <input type="email" class="form-control form-control-lg border-2" id="email" name="email" value="<c:out value='${user.email}' />" placeholder="john.doe@exemple.com" required>
                    </div>

                    <div class="col-12">
                        <label for="password" class="form-label fw-semibold">Mot de passe</label>
                        <input type="password" class="form-control form-control-lg border-2" id="password" name="password" placeholder="••••••••" <c:if test="${user == null}">required</c:if>>
                        <c:if test="${user != null}">
                            <div class="form-text mt-2"><i class="bi bi-info-circle me-1"></i> Laissez vide pour conserver le mot de passe actuel.</div>
                        </c:if>
                    </div>

                    <div class="col-12 mt-5">
                        <div class="d-flex gap-3">
                            <button type="submit" class="btn btn-primary btn-lg px-5 flex-grow-1 shadow">Enregistrer</button>
                            <a href="<%= request.getContextPath() %>/users" class="btn btn-light btn-lg border px-4">Annuler</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>