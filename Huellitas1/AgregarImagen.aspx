<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarImagen.aspx.cs" Inherits="Huellitas1.AgregarImagen" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Argon Dashboard - Free Dashboard for Bootstrap 4 by Creative Tim
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
        <div class="main-content">
            <!-- Navbar -->
            <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
                <div class="container px-4">
                    <a class="navbar-brand" href="../index.html">
                        <img src="../assets/img/brand/white.png" />
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
                            
                            <div class="card-body px-lg-5 py-lg-5">
                                <div class="text-center text-muted mb-4">
                                    <div class="text-center text-muted mb-4">
                                        <h2>Login</h2>
                                    </div>
                                </div>
                                <div class="input-group input-group-alternative">
                                    <div class="form-group">
    <asp:Label ID="LabelFoto" runat="server" CssClass="form-label"
        Text="Foto"></asp:Label>

    <asp:FileUpload ID="PhotoFile" CssClass="form-control" name="File"
        runat="server" />

</div>

<asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="mybtn" OnClick="btnAgregar_Click"></asp:Button>|
                                </div>
                            </div>
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
