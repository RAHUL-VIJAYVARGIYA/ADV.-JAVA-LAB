<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<c:set var="pageTitle" value="ShopSphere - Register" />
<%@ include file="fragments/header.jsp" %>
<%@ include file="fragments/navbar.jsp" %>

<div class="container my-5">
    <div class="row justify-content-center">
        <div class="col-md-7 col-lg-6">
            <div class="card border-0 shadow-sm p-4 rounded-3">
                <div class="text-center mb-4">
                    <div class="bg-success text-white d-inline-flex p-3 rounded-circle mb-3 shadow-sm">
                        <i class="bi bi-person-plus-fill fs-2"></i>
                    </div>
                    <h3 class="fw-bold">Create Account</h3>
                    <p class="text-muted small">Join ShopSphere to enjoy smooth and fast shopping</p>
                </div>

                <!-- Error Alert -->
                <c:if test="${not empty error}">
                    <div class="alert alert-danger alert-dismissible fade show small" role="alert">
                        <i class="bi bi-exclamation-circle-fill me-2"></i>${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>

                <form action="${pageContext.request.contextPath}/register" method="POST">
                    <div class="mb-3">
                        <label for="name" class="form-label fw-semibold">Full Name</label>
                        <div class="input-group">
                            <span class="input-group-text bg-light"><i class="bi bi-person"></i></span>
                            <input type="text" class="form-control" id="name" name="name"
                                   placeholder="e.g. John Doe" value="${param.name}" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label fw-semibold">Email Address</label>
                        <div class="input-group">
                            <span class="input-group-text bg-light"><i class="bi bi-envelope"></i></span>
                            <input type="email" class="form-control" id="email" name="email"
                                   placeholder="name@example.com" value="${param.email}" required>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="mobile" class="form-label fw-semibold">Mobile Number</label>
                        <div class="input-group">
                            <span class="input-group-text bg-light"><i class="bi bi-phone"></i></span>
                            <input type="tel" class="form-control" id="mobile" name="mobile"
                                   placeholder="10-digit mobile number" value="${param.mobile}" required>
                        </div>
                    </div>

                    <div class="row g-2 mb-4">
                        <div class="col-sm-6">
                            <label for="password" class="form-label fw-semibold">Password</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light"><i class="bi bi-lock"></i></span>
                                <input type="password" class="form-control" id="password" name="password"
                                       placeholder="Minimum 6 characters" required minlength="6">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <label for="confirmPassword" class="form-label fw-semibold">Confirm Password</label>
                            <div class="input-group">
                                <span class="input-group-text bg-light"><i class="bi bi-lock-fill"></i></span>
                                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword"
                                       placeholder="Re-type password" required minlength="6">
                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success w-100 py-2 fw-bold shadow-sm">
                        <i class="bi bi-check2-circle me-1"></i>Register Account
                    </button>
                </form>

                <hr class="my-4">

                <div class="text-center">
                    <span class="text-muted small">Already have an account?</span>
                    <a href="${pageContext.request.contextPath}/login.jsp" class="fw-semibold text-decoration-none ms-1">
                        Sign In Here
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="fragments/footer.jsp" %>
