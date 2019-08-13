<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="id.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Ficha de Identificação</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">HSPM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
            </ul>

        </div>
    </nav>

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Cadastro de ficha de Identificação</h1>
            <p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>
        </div>
    </div>


    <div class="container">
        <form id="form1" runat="server" class="form-inline">

            <div class="form-group col-md-3">
                <label for="ddlMenu">Selecione a operação desejada:</label>
            </div>
            <div class="form-group col-md-3">
                <asp:DropDownList ID="ddlMenu" runat="server" class="form-control">
                    <asp:ListItem Value="0" Text=" - Escolha uma opção - " />
                    <asp:ListItem Value="1" Text="Cadastro de Funcionário" />
                    <asp:ListItem Value="2" Text="Cadastro de Dependente" />
                    <asp:ListItem Value="3" Text="Cadastro de Munícipe" />
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnAcessar" runat="server" Text="Acessar" class="btn btn-primary" OnClick="btnAcessar_Click" />
            <div class="form-group col-md-12">
                     <asp:Label ID="lbMensagem" runat="server" Text="" ></asp:Label>
            </div>
        </form>
                
    </div>
</body>
</html>
