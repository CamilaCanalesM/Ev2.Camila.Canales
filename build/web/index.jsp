<%-- 
    Document   : index
    Created on : 21-08-2023, 1:58:33
    Author     : ccana
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Registro de Usuarios - EV2</title>

    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
            <header class="header">
        <nav class="navbar navbar-expand-lg navbar-light bg-secondary bg-gradient">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="Logo-CIISA.png" alt="Logo">
                </a>
            </div>
        </nav>
    </header>
    <body class="bg-light">
        <div class="container py-5">
            <h1 class="text-center mb-4">Registro de Usuarios</h1>
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Edad</th>
                            <th scope="col">Correo</th>
                        </tr>
                    </thead>
                    <tbody class="table-group-divider">
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_registro_usuarios?user=root");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM tbl_usuarios");
                            while (rs.next()) {
                        %>

                        <tr>
                            <th scope="row"><%= rs.getInt("id")%></th>
                            <td><%= rs.getString("nombre")%></td>
                            <td><%= rs.getString("apellido")%></td>
                            <td><%= rs.getInt("edad")%></td>
                            <td><%= rs.getString("correo")%></td>
                        </tr>
                        <% }
                        %>
                    </tbody>
                </table>
                </body>
                </html>
