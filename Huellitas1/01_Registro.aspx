<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="01_Registro.aspx.cs" Inherits="Huellitas1._01_Registro" %>

<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Huellitas-Sign Up
    </title>
    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="../assets/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
    <link href="../assets/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="assets/css/argon-dashboard.css" rel="stylesheet" />
    <!-- sweet alert -->
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>
</head>


<body class="bg-default">
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
    <div class="main-content">
        <!-- Navbar -->
        <nav class="navbar navbar-top navbar-horizontal navbar-expand-md navbar-dark">
            <div class="container px-4">
                <a class="navbar-brand" href="Index.aspx">
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
                            <a class="nav-link nav-link-icon" href="02_Login.aspx">
                                <i class="ni ni-key-25"></i>
                                <span class="nav-link-inner--text">Log in</span>
                            </a>
                        </li>
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
            <!-- Table -->
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8">
                    <div class="card bg-secondary shadow border-0">

                        <div class="card-body px-lg-5 py-lg-5">
                            <div class="text-center text-muted mb-4">
                                <h1>Sign Up</h1>
                            </div>
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"><i class="ni ni-single-02"></i></span>
                                        <asp:TextBox ID="txtfirst" runat="server" placeholder="Name..." type="text" class="form-control" minlength="3" MaxLength="100"></asp:TextBox>
                                    </div>

                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"><i class="ni ni-single-02"></i></span>
                                        <asp:TextBox ID="txtapellido" runat="server" placeholder="Last name..." type="text" class="form-control" minlength="5" MaxLength="100"></asp:TextBox>
                                    </div>


                                    <div class="input-group input-group-alternative mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"><i class="ni ni-circle-08"></i></span>
                                        <asp:TextBox ID="txtusuario" runat="server" placeholder="User..." type="text" class="form-control" minlength="5" MaxLength="100"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative mb-3">
                                            <div class="input-group-prepend">
                                            </div>
                                            <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                                            <asp:TextBox ID="txtgmail" runat="server" placeholder="Gmail..." type="email" class="form-control" minlength="3" MaxLength="100"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group input-group-alternative">
                                            <div class="input-group-prepend">
                                            </div>
                                            <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                            <asp:TextBox ID="txtclave" runat="server" placeholder="password..." type="password" class="form-control" minlength="3" MaxLength="100"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="input-group input-group-alternative">
                                        <div class="input-group-prepend">
                                        </div>
                                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                                        <asp:TextBox ID="txtconfirm" runat="server" placeholder="Repeat password..." type="password" class="form-control" minlength="3" MaxLength="100"></asp:TextBox>
                                    </div>
                                    <div class="text-muted font-italic"><small>Password security:<span class="text-success font-weight-700">strong</span></small></div>
                                    <div class="row my-4">
                                        <div class="col-12">
                                            <div class="custom-control custom-control-alternative custom-checkbox">
                                                <input class="custom-control-input" id="customCheckRegister" type="checkbox">
                                                <label class="custom-control-label" for="customCheckRegister">
                                                    <span class="text-muted">I agree with the <a href="#!">Privacy Policy</a></span>
                                                </label>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="text-center">
                                        <asp:Button runat="server" Text="Register" CssClass="mybtn" BackColor="#5E72E4" Width="130px" Height="50px" ForeColor="White" OnClick="Unnamed1_Click"></asp:Button>
                                        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <footer class="py-5">
        <div class="container">
            <div class="row align-items-center justify-content-xl-between">
                <div class="col-xl-6">
                    <ul class="nav nav-footer justify-content-center justify-content-xl-end">
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
                        </li>
                        <li class="nav-item">
                            <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!--   Core   -->
    <script src="../assets/js/plugins/jquery/dist/jquery.min.js"></script>
    <script src="../assets/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!--   Optional JS   -->
    <!--   Argon JS   -->
    <script src="../assets/js/argon-dashboard.min.js?v=1.1.2"></script>
    <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweeralert2@8"></script>
</body>


</html>
