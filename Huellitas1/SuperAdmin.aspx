<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuperAdmin.aspx.cs" Inherits="Huellitas1.SuperAdmin" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Admin
    </title>
    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="../assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
    <link href="../assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="../assets/css/argon-dashboard.css?v=1.1.2" rel="stylesheet" />
    <!-- Sweet alert -->
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
</head>

<body class="bg-default">
    <form id="form1" runat="server">
        <script type="text/javascript">
            function validar(e) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla == 8) return true; // 3
                patron = /[A-Za-z\s]/; // 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
            }
        </script>
        <script type="text/javascript">
            function numeros(nu) { // 1
                tecla = (document.all) ? e.keyCode : e.which; // 2
                if (tecla == 8) return true; // 3
                ppatron = /\d/; // Solo acepta números// 4
                te = String.fromCharCode(tecla); // 5
                return patron.test(te); // 6
            }
        </script>

        <script>
            function NumCheck(e, field) {
                key = e.keyCode ? e.keyCode : e.which
                // backspace
                if (key == 8) return true
                // 0-9
                if (key > 47 && key < 58) {
                    if (field.value == "") return true
                    regexp = /.[0-9]{2}$/
                    return !(regexp.test(field.value))
                }
                // .
                if (key == 46) {
                    if (field.value == "") return false
                    regexp = /^[0-9]+$/
                    return regexp.test(field.value)
                }
                // other key
                return false
            }
        </script>
        <div class="main-content">
            <!-- Navbar -->
            <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
                <div class="container px-4">
                    <a class="navbar-brand" href=" Index.aspx">
                        <img src="1/pata1.png" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbar-collapse-main">
                        <!-- Collapse header -->
                        <div class="navbar-collapse-header d-md-none">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="../index.html">
                                        <img src="../assets/img/brand/blue.png">
                                    </a>
                                </div>
                                <div class="col-6 collapse-close">
                                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                                        <span></span>
                                        <span></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- Navbar items -->
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link nav-link-icon" href="../examples/register.html"></a>
                            </li>
                            <li class="nav-item"></li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Header -->
            <div class="header bg-gradient-primary py-7 py-lg-8">
                <div class="container">
                    <div class="header-body text-center mb-7">
                        <div class="row justify-content-center">
                            <div class="col-lg-5 col-md-6">
                                <h1 class="text-white">Huellitas!</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="separator separator-bottom separator-skew zindex-100">
                    <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
                        <polygon class="fill-default" points="2560 0 2560 100 0 100"></polygon>
                    </svg>
                </div>
            </div>
            <!-- Page content -->
            <div class="container mt--8 pb-5">
                <div class="row justify-content-center">
                    <div class="col-lg-5 col-md-7">
                        <div class="card bg-secondary shadow border-0">
                            <div class="card-header bg-transparent pb-5">
                                <div class="text-muted text-center mt-2 mb-3">
                                    <br />
                                    <br />
                                    <h1>Add Admin</h1>
                                    <div class="btn-wrapper text-center">
                                    </div>
                                </div>
                            </div>
                            <div class="card-body px-lg-5 py-lg-5">
                                <div class="text-center text-muted mb-4">
                                    <div class="text-center text-muted mb-4">
                                        <h2>Select the user you want to make an admin</h2>
                                    </div>
                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"></span>
                                        <asp:TextBox ID="txtid" runat="server" placeholder="ID user..." type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)"></asp:TextBox>
                                    </div>

                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"></span>
                                        <asp:TextBox ID="txtidrol" runat="server" placeholder="ID role..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="12"></asp:TextBox>
                                    </div>


                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"></span>
                                        <asp:TextBox ID="txtnombre" runat="server" placeholder="Name..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="12"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative mb-3">
                                            <div class="input-group-prepend">
                                            </div>
                                            <span class="input-group-text"></span>
                                            <asp:TextBox ID="txtapellido" runat="server" placeholder="Lastname..." type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                            </div>
                                            <span class="input-group-text"></span>
                                            <asp:TextBox ID="txtusuario" runat="server" placeholder="User..." type="text" class="form-control" minlength="5" MaxLength="10" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                            </div>
                                            <span class="input-group-text"></span>
                                            <asp:TextBox ID="txtpassword" runat="server" placeholder="Password..." type="text" class="form-control" minlength="5" MaxLength="10" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                            </div>
                                            <span class="input-group-text"></span>
                                            <asp:TextBox ID="txtemail" runat="server" placeholder="Email..." type="text" class="form-control" minlength="5" MaxLength="10" />
                                        </div>
                                    </div>

                                    <asp:Button runat="server" Text="Seleccionar" CssClass="mybtn" OnClick="Unnamed1_Click" Width="109px"></asp:Button>
                                    <asp:Button runat="server" Text="Editar" CssClass="mybtn" OnClick="Unnamed2_Click"></asp:Button>
                                                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <div class="text-center">
                    <div class="form-button" runat="server">
                        <asp:Literal ID="alerta" runat="server"></asp:Literal>
                    </div>
                    <div class="container">
                        <asp:GridView ID="gvdlista" runat="server" AutoGenerateColumns="False" Width="1004px" Height="80px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id_Usuario" HeaderText="ID" />
                                <asp:BoundField DataField="IdRol" HeaderText="IDrol" />
                                <asp:BoundField DataField="Nombre" HeaderText="Name" />
                                <asp:BoundField DataField="Apellido" HeaderText="Lastname" />
                                <asp:BoundField DataField="Nombre_Usuario" HeaderText="User" />
                                <asp:BoundField DataField="Password" HeaderText="Password" />
                                <asp:BoundField DataField="Correo" HeaderText="Email" />

                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        <!--   Core   -->
            <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
            <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
            <!--   Optional JS   -->
            <!--   Argon JS   -->
            <script src="../assets/js/argon-dashboard.min.js?v=1.1.2"></script>
            <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
            <script>
                window.TrackJS &&
                    TrackJS.install({
                        token: "ee6fab19c5a04ac1a32a645abde4613a",
                        application: "argon-dashboard-free"
                    });

            </script>
    </form>
</body>

</html>
