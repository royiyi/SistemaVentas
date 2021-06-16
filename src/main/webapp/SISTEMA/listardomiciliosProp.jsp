<%-- 
    Document   : listarPropietarios
    Created on : 13-jun-2021, 19:19:41
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:useBean id="domicilioBean" scope="session" class="com.test.bean.PersonaBean"/>
        <a class="btn btn-success" href="../index.jsp">VOLVER</a>
        <h1>LISTAR DOMICILIOS </h1>

        <form method="POST">
            <div class="form-group">
                <label>Propietario</label>
                <select type="text" name="propietario">
                    <option value="">seleccione el propietario</option>
                    <%=domicilioBean.listarProp()%>
                </select>
            </div>
                <input type="submit" value="REGISTRAR" name="guardar" />
        </form>
                <%
                String prop=request.getParameter("propietario");
                %>
       
        <div class="table-responsive">
            <table class="table table-dark table-hober">
                <thead>
                    <tr>
                        <th>CODIGO</th>
                        <th>NOMBRE</th>
                        <th>PRECIO</th>
                        <th>DIRECCION</th>
                        <th>CIUDAD</th>
                        <th>CIUDAD</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <%=domicilioBean.listarDomiciliosProp(prop)%>
                </tbody>
            </table>
        </div>
    
        
    </body>
</html>

