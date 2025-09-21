<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Shopping Cart Application</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css"
      integrity="sha512-SbiR/eusphKoMVVXysTKG/7VseWii+Y3FdHrt0EpKgpToZeemhqHeZeLWLhJutz/2ut2Vw1uQEj2MbRF+TVBUA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
    <body>
    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="card shadow-lg border-0">
            <div class="card-header bg-primary text-white text-center">
              <h2 class="mb-0">🛍️ Welcome to Shopping Website</h2>
            </div>
            <div class="card-body text-center">
              <p class="lead">
                Explore our wide range of products and add your favorites to the cart.
              </p>
              <div class="row mt-4">
                <div class="col-md-6 mb-3">
                  <a href="<%=request.getContextPath()%>/products"
                     class="btn btn-outline-primary btn-lg w-100">
                    Browse Products
                  </a>
                </div>
                <div class="col-md-6 mb-3">
                  <a href="<%=request.getContextPath()%>/cart"
                     class="btn btn-outline-success btn-lg w-100">
                    Go to Cart
                  </a>
                </div>
              </div>
            </div>
            <div class="card-footer text-muted text-center">
              © 2025 MyShop – All rights reserved.
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>