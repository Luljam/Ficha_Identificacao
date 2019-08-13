<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="id.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website." />
    <title>Ficha de Identificação</title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

    <style>
        .RadioButtonWidth label{
            width: 200px
        }
    </style>

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

    <!-- Conteudo -->
    <div class="container">
        <form id="form1" runat="server">
            <fieldset>
                <legend>Tipo Paciente</legend>

                <asp:RadioButtonList ID="rbList1" runat="server" RepeatDirection="Horizontal" CssClass="RadioButtonWidth">
                    <asp:ListItem Value="F">Funcionário</asp:ListItem>
                    <asp:ListItem Value="D">Dependente</asp:ListItem>
                    <asp:ListItem Value="M">Munícipe</asp:ListItem>
                </asp:RadioButtonList>
            </fieldset>

            <!-- Dados do Beneficiário -->
            <fieldset>
                <legend>Dados do Beneficiário</legend>

                <div class="form-group">
                    <label for="txbNome">Nome</label>
                    <asp:TextBox ID="txbNome" class="form-control" placeholder="Nome" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txbNomeSocial">Nome Social</label>
                    <asp:TextBox ID="txbNomeSocial"  class="form-control" placeholder="Nome Social" runat="server"></asp:TextBox>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="txbMatricula">Matrícula</label>
                        <asp:TextBox ID="txbMatricula"  class="form-control" placeholder="Matrícula" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-3">
                        <label for="txbProntuario">Prontuário</label>
                        <asp:TextBox ID="txbProntuario" runat="server" class="form-control"  placeholder="Número do Prontuário"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputCPF">CPF</label>
                        <asp:TextBox ID="txbCPF" class="form-control" runat="server" placeholder="CPF"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputRG">R.G.</label>
                        <asp:TextBox ID="txbRG" class="form-control" runat="server"  placeholder="R.G."></asp:TextBox>
                    </div>
                </div>
                <div class="form-row">
                     <div class="form-group col-md-3">
                        <label for="inputDataNascimento">Data de Nascimento</label>
                        <asp:TextBox ID="txbdataNascimento"  class="form-control" runat="server" placeholder="Data de Nascimento"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="ddlSexo">Sexo</label>
                        <asp:DropDownList ID="ddlSexo" runat="server" class="form-control">
                            <asp:ListItem>Selecione...</asp:ListItem>
                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="O">Outro</asp:ListItem>
                        </asp:DropDownList>
                       
                    </div>
                    <div class="form-group col-md-3">
                        <label for="ddlRaca">Raça</label>
                        <asp:DropDownList ID="ddlRaca" runat="server" class="form-control">
                            <asp:ListItem>Selecione...</asp:ListItem>
                            <asp:ListItem Value="B">Branca</asp:ListItem>
                            <asp:ListItem Value="N">Negra</asp:ListItem>
                            <asp:ListItem Value="A">Amarela</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="ddlEstadoCivil">Estado Civil</label>
                        <asp:DropDownList ID="ddlestadoCivil" runat="server" class="form-control">
                            <asp:ListItem>Selecione...</asp:ListItem>
                            <asp:ListItem Value="C">Casado</asp:ListItem>
                            <asp:ListItem Value="S">Solteiro</asp:ListItem>
                            <asp:ListItem Value="D">Divorciado</asp:ListItem>
                            <asp:ListItem Value="O">Outro</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col">
                        <label for="txbNaturalidade">Naturalidade</label>
                        <asp:TextBox ID="txbNaturalidade" class="form-control" runat="server" placeholder="Naturalidade"></asp:TextBox>
                    </div>

                    <div class="col">
                        <label for="txbNacionalidade">Nacionalidade</label>
                        <asp:TextBox ID="txbNacionalidade" class="form-control" runat="server" placeholder="Nacionalidade"></asp:TextBox>
                    </div>

                    <div class="col-7">
                        <label for="txbOcupacao">Ocupação</label>
                        <asp:TextBox ID="txbOcupacao" class="form-control" runat="server" placeholder="Ocupação"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <label for="txbEndereco">Endereço</label>
                    <asp:TextBox ID="txbEndereco" class="form-control" runat="server" placeholder="Endereço"></asp:TextBox>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="txbBairro">Bairro</label>
                        <asp:TextBox ID="txbBairro" class="form-control" runat="server" placeholder="Bairro"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="txbMunicipio">Município</label>
                        <asp:TextBox ID="txbMunicipio" class="form-control" runat="server" placeholder="Município"></asp:TextBox>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="ddlEstado">Estado</label>
                        <asp:DropDownList ID="ddlEstado" runat="server" class="form-control">
                            <asp:ListItem>Selecione...</asp:ListItem>
                            <asp:ListItem Value="SP">São Paulo</asp:ListItem>
                            <asp:ListItem Value="RJ">Rio de Janeiro</asp:ListItem>
                            <asp:ListItem Value="MG">Minas Gerais</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="txbCep">Cep</label>
                        <asp:TextBox ID="txbCep" class="form-control" runat="server" placeholder="Cep"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="txbTelefone1">Telefone</label>
                        <asp:TextBox ID="txbTelefone1" class="form-control" runat="server" placeholder="Telefone"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-3">
                        <label for="txbTelefoneRecado">Telefone para Recado</label>
                        <asp:TextBox ID="txbTelefoneRecado" class="form-control" runat="server" placeholder="Telefone para Recado"></asp:TextBox>
                    </div>

                </div>


                <div class="form-group ">
                    <label for="txbPai">Nome do Pai</label>
                    <asp:TextBox ID="txbPai" class="form-control" runat="server" placeholder="Nome do Pai"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txbMãe">Nome da Mãe</label>
                    <asp:TextBox ID="txbMãe" class="form-control" runat="server" placeholder="Nome da Mãe"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txbConjuje">Nome do Cônjuje</label>
                    <asp:TextBox ID="txbConjuje" class="form-control" runat="server" placeholder="Nome do Cônjune"></asp:TextBox>
                </div>
                
                <asp:Button ID="btnGravar" class="btn btn-primary" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
            </fieldset>
        </form>
    </div>
</body>
</html>
