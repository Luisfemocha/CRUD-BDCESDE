<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formEstudiante.aspx.cs" Inherits="VistaCesde.formEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CRUD ESTUDIANTE</title>
    <link rel="stylesheet" href="estilos.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body class="cuerpo">
    <header>
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#"><span class="auto-style8">.NET</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="formAdministrativo.aspx">Administrativo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="formProfesor.aspx">Profesor</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="formEstudiante.aspx">Estudiante<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.html">Acerca de.</a>
                    </li>
                </ul>
                <span class="auto-style4">CRUD</span><span class="auto-style8"> </span>
            </div>
        </nav>
    </header>
    <main>
        <form id="form1" runat="server">
            <div>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblCE" runat="server" Text="Crear Estudiante"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblide" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ide" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveride" runat="server" Text="Verificar ID" OnClick="btnveride_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveride" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblnome" runat="server" Text="Nombre:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltele" runat="server" Text="Teléfono:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tele" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblprog" runat="server" Text="Programa:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="prog" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnCE" runat="server" Text="Crear Estudiante" OnClick="btnCE_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblCE1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblLE" runat="server" Text="Leer Estudiante"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidel" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idel" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnidel" runat="server" Text="Verificar ID" OnClick="btnidel_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridel" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnle" runat="server" Text="Leer Estudiante" OnClick="btnle_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblle1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblae" runat="server" Text="Actualizar Estudiante"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblideviejo" runat="server" Text="ID Viejo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ideviejo" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnverideviejo" runat="server" Text="Verificar ID" OnClick="btnverideviejo_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblverideviejo" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidea" runat="server" Text="ID Nuevo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idea" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridea" runat="server" Text="Verificar ID" OnClick="btnveridea_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridea" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblnomea" runat="server" Text="Nombre Nuevo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nomea" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltelea" runat="server" Text="Teléfono Nuevo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="telea" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblproga" runat="server" Text="Programa Nuevo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="proga" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnae" runat="server" Text="Actualizar Estudiante" OnClick="btnae_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblae1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblbe" runat="server" Text="Borrar Estudiante"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblideb" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ideb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnverideb" runat="server" Text="Verificar ID" OnClick="btnverideb_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblverideb" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnbe" runat="server" Text="Borrar Estudiante" OnClick="btnbe_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblbe1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </form>
        <br />
    </main>
    <footer>
        <center>
            <p>
                Luis Felipe Moreno Chamorro<br/>
                CC: 1001366627<br/>
                Eimi Shadday Pinzón Hoyos<br />
                CC: 1193096185 <br />
                Yirleyson Toro Ramírez<br />
                CC: 1152223265<br />
            </p>
            <div class="bandera"></div>
            <p>
                Medellín<br/>
                Colombia<br/>
                2020
            </p>
        </center>
    </footer>
</body>
</html>