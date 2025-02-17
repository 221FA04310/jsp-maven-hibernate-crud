<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="theme-color" content="#33b5e5">
<title>Client Formiguei Doceria</title>

<style>
.sombra {
    box-shadow: rgba(0, 0, 0, 0.16) 0px 3px 6px, rgba(0, 0, 0, 0.23) 0px 3px 6px;
}
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <header class="d-flex px-3 flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="list-clients"
            class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" fill="currentColor" class="bi bi-bug-fill" viewBox="0 0 16 16">
              <path d="M4.978.855a.5.5 0 1 0-.956.29l.41 1.352A4.985 4.985 0 0 0 3 6h10a4.985 4.985 0 0 0-1.432-3.503l.41-1.352a.5.5 0 1 0-.956-.29l-.291.956A4.978 4.978 0 0 0 8 1a4.979 4.979 0 0 0-2.731.811l-.29-.956z" />
              <path d="M13 6v1H8.5v8.975A5 5 0 0 0 13 11h.5a.5.5 0 0 1 .5.5v.5a.5.5 0 1 0 1 0v-.5a1.5 1.5 0 0 0-1.5-1.5H13V9h1.5a.5.5 0 0 0 0-1H13V7h.5A1.5 1.5 0 0 0 15 5.5V5a.5.5 0 0 0-1 0v.5a.5.5 0 0 1-.5.5H13zm-5.5 9.975V7H3V6h-.5a.5.5 0 0 1-.5-.5V5a.5.5 0 0 0-1 0v.5A1.5 1.5 0 0 0 2.5 7H3v1H1.5a.5.5 0 0 0 0 1H3v1h-.5A1.5 1.5 0 0 0 1 11.5v.5a.5.5 0 1 0 1 0v-.5a.5.5 0 0 1 .5-.5H3a5 5 0 0 0 4.5 4.975z" />
            </svg>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="list-clients" class="nav-link px-2 btn btn-danger text-white">Back</a></li>
        </ul>
    </header>
    <section class="w-100 mt-5 p-4 d-flex justify-content-center pb-4">
        
        <c:if test="${client != null}">
        <form action="update-client" method="post" style="width: 26rem;" class="needs-validation" novalidate>
        </c:if>
        
            <caption>
                <h4>
                <c:if test="${client != null}">
                Edit Client
                </c:if>
                </h4>
            </caption>
            <div class="row mb-4">
                
                <c:if test="${client != null}">
                <input type="hidden" name="id" value="<c:out value='${client.id}'/>" />
                </c:if>
                
                <!-- Email input -->
                <div class="form-outline mb-4">
                    <input type="email" id="email" class="form-control"
                    value="<c:out value='${client.email}'/>" placeholder="Email" name="email" required>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-4">
                    <input type="password" id="password" class="form-control"
                    value="<c:out value='${client.password}'/>" placeholder="Password" name="password" required>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <input type="text" id="name" placeholder="Name"
                        value="<c:out value='${client.name}'/>" class="form-control" name="name" required>
                    </div>
                </div>

                <div class="col">
                    <div class="form-outline">
                        <input type="text" id="surname" placeholder="Surname"
                        value="<c:out value='${client.surname}'/>" class="form-control" name="surname" required>
                    </div>
                </div>

            </div>

            <!-- Submit button -->
            <div class="d-grid mb-4">
                <input type="submit" class="btn btn-primary sombra" name="submit" value="Save">
            </div>
        </form>
    </section>
    <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
    </script>
    <script src="https://kit.fontawesome.com/d13f87c2a3.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
