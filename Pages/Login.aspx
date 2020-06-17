<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_LoginCadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <div class="row justify-content-center">
        <div class="col-11"></div>
        <div class="col-1 text-center mt-2">
            <img src="../Images/menu.png" class="img-fluid" style="width: 100%;"/>
        </div>
        <div class="col-12 text-center mb-5">
            <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%; filter: grayscale(100%);"/>
        </div>
        <div class="col-12 text-center mb-3 mt-4 mb-5">
            <h1 class="text-monospace">Bem Vindo(a)</h1>
        </div>
        
        <div class="col-6">
          <div class="form-group">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" type="Email" placeholder="Digite seu email"></asp:TextBox>
          </div>
          <div class="form-group mb-4">
              <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control form-control-lg" type="password" placeholder="Digite sua senha"></asp:TextBox>
              <div class="form-group text-right">
                <a href="#">Esqueceu a senha?</a>
              </div>
          </div>
            <div class="form-group">
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnEntrar" runat="server" CssClass="btn btn-dark btn-logincadastro" Text="Entrar" OnClick="btnEntrar_Click"/>
                </div>
                <div class="d-flex justify-content-center mt-2">
                    <p>ou</p>
                </div>
                <div class="d-flex justify-content-center">
                    <asp:Button ID="btnLoginFacebook" runat="server" CssClass="btn btn-dark btn-login-facebook" Text="Entre com o Facebook"/>
                </div>

                <hr />
                <div class="d-flex justify-content-center">
                    <!-- <asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-dark btn-cadastro" Text="Crie uma Conta"/> -->
                    <a href="CadastroInicialResponsavel.aspx" class="btn btn-dark btn-cadastro text-white">Crie uma Conta</a>
                </div>
          </div>
        </div>
       
    </div>

    <!-- Modal -->
    <div class="modal fade" id="modalErroLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ops!</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <h4>E-mail ou senha incorretos, tente novamente.</h4>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    
</asp:Content>

