<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="CadastroVulneravel.aspx.cs" Inherits="Pages_CadastroVulneravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="row justify-content-center">


        <div class="col-12 text-center mb-3">
            <a href="Index.aspx">
                <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%;" />
            </a>
        </div>
        <div class="col-12 text-center mb-5 mt-2 ">
            <h1>Cadastro de Vulneravel</h1>
        </div>

        <div class="col-8">
            <div class="row justify-content-center">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control form-control-lg" placeholder="Nome" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtSobrenome" runat="server" CssClass="form-control form-control-lg" placeholder="Sobrenome" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control form-control-lg" placeholder="Sexo:">
                            <asp:ListItem Enabled="true" Text="Sexo" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Feminino" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Outro" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:DropDownList ID="ddlCutis" runat="server" CssClass="form-control form-control-lg" placeholder="Etnia:">
                            <asp:ListItem Enabled="true" Text="Etnia" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Amarela" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Branca" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Indígena" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Negra" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Parda" Value="5"></asp:ListItem>

                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtCorDosOlhos" runat="server" CssClass="form-control form-control-lg" placeholder="Cor Dos Olhos" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtCorDoCabelo" runat="server" CssClass="form-control form-control-lg" placeholder="Cor do Cabelo" required="true" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:DropDownList ID="ddlSangue" runat="server" CssClass="form-control form-control-lg">
                            <asp:ListItem Enabled="true" Text="Tipo Sanguineo" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="A+" Value="1"></asp:ListItem>
                            <asp:ListItem Text="A-" Value="2"></asp:ListItem>
                            <asp:ListItem Text="B+" Value="3"></asp:ListItem>
                            <asp:ListItem Text="B-" Value="4"></asp:ListItem>
                            <asp:ListItem Text="O+" Value="5"></asp:ListItem>
                            <asp:ListItem Text="O-" Value="6"></asp:ListItem>
                            <asp:ListItem Text="AB+" Value="7"></asp:ListItem>
                            <asp:ListItem Text="AB-" Value="8"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtData" runat="server" CssClass="form-control" required placeholder="Data de Nascimento" type="date" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 mb-2">
                    <asp:TextBox ID="txtAltura" runat="server" CssClass="form-control form-control-lg" placeholder="Altura" required="true" />
                </div>
                <div class="col-6">
                    <asp:TextBox ID="txtPeso" runat="server" CssClass="form-control form-control-lg" placeholder="Peso" required="true" />
                </div>

            </div>
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control form-control-lg" placeholder="Adicione uma breve descrição do desaparecido" required="true" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="form-group">
                <div class="d-flex justify-content-center mt-2">
                    <asp:Button ID="btnContinuaCadastroVulneravel" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Continuar Cadastro" OnClick="btnContinuaCadastroVulneravel_Click" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>

