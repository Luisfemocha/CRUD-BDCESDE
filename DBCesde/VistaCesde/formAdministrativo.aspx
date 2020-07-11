<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formAdministrativo.aspx.cs" Inherits="VistaCesde.formAdministrativo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CRUD ADMINISTRATIVO</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="formAdministrativo.aspx">Administrativo<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="formProfesor.aspx">Profesor</a>
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
                            <asp:Label ID="lblCA" runat="server" Text="Crear Administrativo"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblida" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="ida" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnverida" runat="server" Text="Verificar ID" OnClick="btnverida_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblverida" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblnoma" runat="server" Text="Nombre:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="noma" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltela" runat="server" Text="Teléfono:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="tela" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblcara" runat="server" Text="Cargo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="carga" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnCA" runat="server" Text="Crear Administrativo" OnClick="btnCA_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblCA1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep" />
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblLA" runat="server" Text="Leer Administrativo"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidal" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idal" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnidal" runat="server" Text="Verificar ID" OnClick="btnidal_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridal" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnla" runat="server" Text="Leer Administrativo" OnClick="btnla_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblla1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblaa" runat="server" Text="Actualizar Administrativo"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidaviejo" runat="server" Text="ID Viejo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idaviejo" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridaviejo" runat="server" Text="Verificar ID" OnClick="btnveridaviejo_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridaviejo" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidaa" runat="server" Text="Nuevo ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idaa" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridaa" runat="server" Text="Verificar ID" OnClick="btnveridaa_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridaa" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblnomaa" runat="server" Text="Nuevo Nombre:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="nomaa" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbltelaa" runat="server" Text="Nuevo Teléfono:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="telaa" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblcargaa" runat="server" Text="Nuevo Cargo:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="cargaa" runat="server"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnaa" runat="server" Text="Actualizar Administrativo" OnClick="btnaa_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblaa1" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <hr class="sep"/>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="lblba" runat="server" Text="Borrar Administrativo"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblidab" runat="server" Text="ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="idab" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnveridab" runat="server" Text="Verificar ID" OnClick="btnveridab_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lblveridab" runat="server" Text=""></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnba" runat="server" Text="Borrar Administrativo" OnClick="btnba_Click" />
                        </td>
                        <td>
                            <asp:Label ID="lblba1" runat="server" Text=""></asp:Label>
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
