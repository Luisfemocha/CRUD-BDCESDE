<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formProfesor.aspx.cs" Inherits="VistaCesde.formProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CRUD PROFESOR</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="formProfesor.aspx">Profesor<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="formEstudiante.aspx">Estudiante</a>
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
                            <asp:Label ID="lblCP" runat="server" Text="Crear Profesor"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidp" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idp" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridp" runat="server" Text="Verificar ID" OnClick="btnveridp_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridp" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblnomp" runat="server" Text="Nombre:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nomp" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltelp" runat="server" Text="Teléfono:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="telp" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblcarp" runat="server" Text="Cargo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="carp" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnCP" runat="server" Text="Crear Profesor" OnClick="btnCP_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblCP1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblLP" runat="server" Text="Leer Profesor"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidpl" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idpl" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnidpl" runat="server" Text="Verificar ID" OnClick="btnidpl_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridpl" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnlp" runat="server" Text="Leer Profesor" OnClick="btnlp_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lbllp1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblap" runat="server" Text="Actualizar Profesor"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidpviejo" runat="server" Text="ID Viejo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idpviejo" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridpviejo" runat="server" Text="Verificar ID" OnClick="btnveridpviejo_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridpviejo" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidap" runat="server" Text="Nuevo ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idap" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridap" runat="server" Text="Verificar ID" OnClick="btnveridap_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridap" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblnomap" runat="server" Text="Nuevo Nombre:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nomap" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltelap" runat="server" Text="Nuevo Teléfono:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="telap" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblcargap" runat="server" Text="Nuevo Cargo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="cargap" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnap" runat="server" Text="Actualizar Profesor" OnClick="btnap_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblap1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblbp" runat="server" Text="Borrar Profesor"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidpb" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idpb" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridpb" runat="server" Text="Verificar ID" OnClick="btnveridpb_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridpb" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnbp" runat="server" Text="Borrar Profesor" OnClick="btnbp_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblbp1" runat="server" Text=""></asp:Label>
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
