<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="EsqueciASenhaInicial.aspx.cs" Inherits="Pages_EsqueciASenhaInicial" %>

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
            <h1>Esqueceu a senha?</h1>
            <p class="font-weight-bold">Siga os passos para atualizar sua senha</p>
        </div>

        <div class="col-6">
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" type="Email" placeholder="Digite o email cadastrado no sistema"></asp:TextBox>
            </div>
            <div class="form-group text-right">
                <span class="m-0 text-info text-muted">Um código será enviado ao email informado</span>
            </div>
            <div class="form-group">
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnEntrar" runat="server" CssClass="btn btn-primary btn-logincadastro" Text="Enviar código" OnClick="btnEntrar_Click" />
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
    <div class="modal fade" id="modalEmailInvalido" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ops!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>Email informado não é válido, tente outro.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

