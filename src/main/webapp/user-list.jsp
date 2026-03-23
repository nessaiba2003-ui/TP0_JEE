<%@ include file="header.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h1 class="h2 fw-bold text-dark mb-0">Gestion des Utilisateurs</h1>
    <a href="<%= request.getContextPath() %>/user-form" class="btn btn-primary shadow-sm rounded-pill px-4">
        <i class="bi bi-person-plus-fill me-2"></i>Nouvel Utilisateur
    </a>
</div>

<div class="card border-0 shadow-sm overflow-hidden mb-5">
    <div class="table-responsive">
        <table class="table table-hover align-middle mb-0">
            <thead class="bg-light">
                <tr>
                    <th class="ps-4 py-3">ID</th>
                    <th class="py-3">Utilisateur</th>
                    <th class="py-3">Email</th>
                    <th class="py-3 text-center">Date d'Inscription</th>
                    <th class="py-3 text-end pe-4">Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td class="ps-4">
                            <span class="badge bg-light text-dark border border-secondary border-opacity-25 rounded-pill px-3">#<c:out value="${user.id}" /></span>
                        </td>
                        <td>
                            <div class="d-flex align-items-center">
                                <div class="avatar me-3 bg-primary bg-opacity-10 text-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 40px; height: 40px; font-weight: 600;">
                                    ${user.firstName.substring(0,1)}${user.lastName.substring(0,1)}
                                </div>
                                <div class="fw-bold text-dark"><c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></div>
                            </div>
                        </td>
                        <td><a href="mailto:${user.email}" class="text-decoration-none text-muted"><c:out value="${user.email}" /></a></td>
                        <td class="text-center text-muted small"><c:out value="${user.createdAt}" /></td>
                        <td class="text-end pe-4">
                            <div class="btn-group shadow-sm rounded-3">
                                <a href="<%= request.getContextPath() %>/user-form?action=edit&id=<c:out value='${user.id}' />" class="btn btn-white border px-3" title="Modifier">
                                    <i class="bi bi-pencil-square text-primary"></i>
                                </a>
                                <a href="<%= request.getContextPath() %>/delete-user?id=<c:out value='${user.id}' />" class="btn btn-white border px-3" title="Supprimer" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet utilisateur?')">
                                    <i class="bi bi-trash text-danger"></i>
                                </a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty users}">
                    <tr>
                        <td colspan="5" class="text-center py-5 text-muted">
                            <i class="bi bi-people display-4 d-block mb-3 opacity-25"></i>
                            Aucun utilisateur enregistré.
                        </td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="footer.jsp" %>