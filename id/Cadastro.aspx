<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="id.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website.">
    <title>Responsive Side Menu &ndash; Layout Examples &ndash; Pure</title>

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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
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
                    <label for="inputNome">Nome</label>
                    <asp:TextBox ID="inputNome" runat="server" class="form-control" placeholder="Nome"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label for="inputNomeSocial">Nome Social</label>
                    <input type="text" class="form-control" id="inputNomeSocial" placeholder="Nome Social">
                </div>

                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputMatricula">Matrícula</label>
                        <input type="text" class="form-control" id="inputMatricula" placeholder="Matrícula">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="inputRF">Registro Funcional</label>
                        <input type="text" class="form-control" id="inputRF" placeholder="Registro Funcional">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputCPF">CPF</label>
                        <input type="text" class="form-control" id="inputCPF" placeholder="CPF">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputRG">R.G.</label>
                        <input type="text" class="form-control" id="inputRG" placeholder="R.G.">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputSexo">Sexo</label>
                        <select id="inputSexo" class="form-control">
                            <option selected>Selecione...</option>
                            <option>Feminino</option>
                            <option>Masculino</option>
                            <option>Outro</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputDataNascimento">Data de Nascimento</label>
                        <input type="text" class="form-control" id="inputDataNascimento" placeholder="Data de Nascimento">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputEstadoCivil">Estado Civil</label>
                        <select id="inputEstadoCivil" class="form-control">
                            <option selected>Selecione...</option>
                            <option>Casado</option>
                            <option>Solteiro</option>
                            <option>Divorciado</option>
                            <option>Outro</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col">
                        <label for="inputNaturalidade">Naturalidade</label>
                        <input type="text" class="form-control" id="inputNaturalidade" placeholder="Naturalidade">
                    </div>

                    <div class="col">
                        <label for="inputNacionalidade">Nacionalidade</label>
                        <input type="text" class="form-control" id="inputNacionalidade" placeholder="Nacionalidade">
                    </div>

                    <div class="col-7">
                        <label for="inputOcupacao">Ocupação</label>
                        <input type="text" class="form-control" id="inputOcupacao" placeholder="Ocupação">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEndereco">Endereço</label>
                    <input type="text" class="form-control" id="inputEndereco" placeholder="Endereço">
                </div>

                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputBairro">Bairro</label>
                        <input type="text" class="form-control" id="inputBairro">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputMunicipio">Município</label>
                        <input type="text" class="form-control" id="inputMunicipio">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputEstado">Estado</label>
                        <select id="inputEstado" class="form-control">
                            <option selected>Selecione...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputCep">Cep</label>
                        <input type="text" class="form-control" id="inputCep">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputTelefone1">Telefone</label>
                        <input type="text" class="form-control" id="inputTelefone1" placeholder="Telefone">
                    </div>

                    <div class="form-group col-md-3">
                        <label for="inputTelefoneRecado">Telefone para Recado</label>
                        <input type="text" class="form-control" id="inputTelefoneRecado" placeholder="Telefone para Recado">
                    </div>

                </div>

                <div class="form-group">
                    <label for="inputReferencia">Referência</label>
                    <input type="text" class="form-control" id="inputReferencia" placeholder="Local de Referência do Endereço">
                </div>

                <div class="form-group">
                    <label for="inputPai">Nome do Pai</label>
                    <input type="text" class="form-control" id="inputPai" placeholder="Nome do Pai">
                </div>
                <div class="form-group">
                    <label for="inputMãe">Nome da Mãe</label>
                    <input type="text" class="form-control" id="inputMae" placeholder="Nome da Mãe">
                </div>
                <div class="form-group">
                    <label for="inputConjuje">Nome do Cônjuje</label>
                    <input type="text" class="form-control" id="inputConjuje" placeholder="Nome do Cônjune">
                </div>
                <button type="submit" class="btn btn-primary">Gravar</button>

            </fieldset>
        </form>
    </div>
</body>
</html>
