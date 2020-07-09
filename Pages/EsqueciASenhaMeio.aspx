<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="EsqueciASenhaMeio.aspx.cs" Inherits="Pages_EsqueciASenhaMeio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row justify-content-center">
        <div class="col-12 text-center">
            <a href="Index.aspx">
                <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%;" />
            </a>
        </div>
        <div class="col-12 text-center mb-3 mt-4 mb-4">
            <h1>Estamos quase lá!</h1>
            <p class="">Verifique a caixa de spam, caso não tenha algum email nosso em sua caixa de entrada</p>
        </div>

        <div class="col-6">
            <div class="form-group">
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control form-control-lg" placeholder="Insira o código enviado para o seu email aqui"></asp:TextBox>
            </div>
            <div class="form-group">
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnContinuar" runat="server" CssClass="btn btn-primary btn-logincadastro" Text="Continuar" OnClick="btnContinuar_Click"/>
                </div>

                <hr />
                <div class="d-flex justify-content-center">
                    <p>Deseja efetuar login?</p>
                </div>
                <div class="d-flex justify-content-center">
                    <!-- <asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-dark btn-cadastro" Text="Crie uma Conta"/> -->
                    <a href="Login.aspx" class="btn btn-primary btn-cadastro text-white">Voltar para o login</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalCodigoInvalido" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ops!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Código informado não é válido, verifique o que foi inserido e tente novamente.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

