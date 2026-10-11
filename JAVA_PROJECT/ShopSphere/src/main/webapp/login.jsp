<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="ShopSphere - Login" />
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navbar.jsp" %>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-5">
            <div class="card border-0 shadow-sm p-4 rounded-3">
                <div class="text-center mb-4">
                    <div class="bg-primary text-white d-inline-flex p-3 rounded-circle mb-3 shadow-sm">
                        <i class="bi bi-person-fill fs-2"></i>
                    </div>
                    <h3 class="fw-bold">Sign In</h3>
                    <p class="text-muted small">Access your ShopSphere account & orders</p>
                </div>

                <!-- Error Alert -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show small" role="alert">
                        <i class="bi bi-exclamation-circle-fill me-2"></i>${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>

                <!-- Demo Credentials Helper Callout -->
                <div class="alert alert-info py-2 px-3 small mb-4">
                    <strong><i class="bi bi-info-circle me-1"></i>Demo Accounts for Lab Evaluation:</strong>
                    <ul class="mb-0 ps-3 mt-1">
                        <li><strong>Admin:</strong> admin@shopsphere.com / admin123</li>
                        <li><strong>Customer:</strong> rahul@gmail.com / user123</li>
                    </ul>
                </div>

                <form action="${pageContext.request.contextPath}/login" method="POST">
                    <div class="mb-3">
                        <label for="email" class="form-label fw-semibold">Email Address</label>
                        <div class="input-group">
                            <span class="input-group-text bg-light"><i class="bi bi-envelope"></i></span>
                            <input type="email" class="form-control" id="email" name="email"
                                   placeholder="name@example.com" value="${param.email}" required>
                        </div>
                    </div>

                    <div class="mb-4">
                        <label for="password" class="form-label fw-semibold">Password</label>
                        <div class="input-group">
                            <span class="input-group-text bg-light"><i class="bi bi-lock"></i></span>
                            <input type="password" class="form-control" id="password" name="password"
                                   placeholder="Enter your password" required>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 py-2 fw-bold shadow-sm">
                        <i class="bi bi-box-arrow-in-right me-1"></i>Sign In
                    </button>
                </form>

                <hr class="my-4">

                <div class="text-center">
                    <span class="text-muted small">Don't have an account?</span>
                    <a href="${pageContext.request.contextPath}/register.jsp" class="fw-semibold text-decoration-none ms-1">
                        Create One Now
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="fragments/footer.jsp" %>
