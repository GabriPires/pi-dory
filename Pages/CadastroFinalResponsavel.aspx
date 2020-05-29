<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="CadastroFinalResponsavel.aspx.cs" Inherits="Pages_CadastroFinalResponsavel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
    </div>

    <div class="row justify-content-center">
        <div class="col-11"></div>
        <div class="col-1 text-center mt-2">
            <img src="../Images/menu.png" class="img-fluid" style="width: 100%;" />
        </div>
        <div class="col-12 text-center mb-3">
            <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%; filter: grayscale(100%);" />
        </div>
        <div class="col-12 text-center mb-2 mt-2 mb-5">
            <h1 class="text-monospace" >Cadastro</h1>
            <p >Estamos quase acabando</p>
        </div>

        <div class="col-8">
            <div class="form-group mb-2">
                <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control form-control-lg" placeholder="CPF" required="true" tooltip="Adicione o seu CPF"/>
            </div>


            <div class="form-group mb-2">
                <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control form-control-lg" placeholder="Endereço:" required="true" tooltip="Adicione o seu Endereço"/>
            </div>
            <div class="row justify-content-center">
                <div class="col-4">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control form-control-lg" placeholder="Numero:" required="true" tooltip="Adicione o numero da sua casa"/>
                    </div>
                </div>
                <div class="col-8">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtComplemento" runat="server" CssClass="form-control form-control-lg" placeholder="Complemento(*):" required="true" tooltip="Opcional"/>
                    </div>
                </div>
            </div>

            <div class="form-group mb-2">
                <asp:TextBox ID="txtReferencia" runat="server" CssClass="form-control form-control-lg" placeholder="Referencia(*):" tooltip="Opcional"/>
            </div>

            <div class="row justify-content-center">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control form-control-lg" placeholder="Celular:" required="true" tooltip="Adicione o seu Celular" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control form-control-lg" placeholder="Telefone(*):" tooltip="Opcional"/>
                    </div>
                </div>
            </div>
            <div class="form-group mb-1 text-right" style="font-size:10px;">
                <p class="text-monospace">Campos que tenham um * são opcionais!</p>
            </div>
            <div class="form-group">
                <div class="d-flex justify-content-center mt-2">
                    <!-- <asp:Button ID="btnFimCadastro" runat="server" CssClass="btn btn-dark btn-logincadastro" Text="Finalizar Cadastro" /> -->
                    <a href="Login.aspx" class="btn btn-dark btn-logincadastro text-white">Finalizar Cadastro</a>
                </div>
            </div>

        </div>

    </div>

    
</asp:Content>

