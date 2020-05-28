<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="CadastroInicialResponsavel.aspx.cs" Inherits="Pages_CadastroInicialResponsavel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div class="row justify-content-center">
          <div class="col-11"></div>
        <div class="col-1 text-center mt-2">
            <img src="../Images/menu.png" class="img-fluid" style="width: 100%;" />
        </div>
        <div class="col-12 text-center mb-3">
            <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%; filter: grayscale(100%);" />
        </div>
        <div class="col-12 text-center mb-5 mt-2 ">
            <h1 class="text-monospace">Cadastro</h1>
        </div>

        <div class="col-8">
            <div class="row justify-content-center">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control form-control-lg" placeholder="Nome:" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtSobrenome" runat="server" CssClass="form-control form-control-lg" placeholder="Sobrenome:" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control form-control-lg" placeholder="Sexo:">
                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="O">Outro</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtData" runat="server" CssClass="form-control form-control-lg" type="date" required="true" />
                    </div>
                </div>
            </div>
            <div class="form-group mb-2">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" type="email" placeholder="Email:" required="true" />
            </div>
            <div class="form-group mb-2">
                <asp:TextBox ID="txtConfirmaEmail" runat="server" CssClass="form-control form-control-lg" type="email" placeholder="Confirme o Email:" required="true" />
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control form-control-lg" type="password" placeholder="Senha:" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <asp:TextBox ID="txtConfirmaSenha" runat="server" CssClass="form-control form-control-lg" type="password" placeholder="Confirme sua Senha:" required="true" />
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="d-flex justify-content-center mt-2">
                <asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-dark btn-logincadastro" Text="Continuar Cadastro" />
            </div>
        </div>

    </div>

   
</asp:Content>

