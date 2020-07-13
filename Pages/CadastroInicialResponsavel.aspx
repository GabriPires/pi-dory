<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="CadastroInicialResponsavel.aspx.cs" Inherits="Pages_CadastroInicialResponsavel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="row justify-content-center">


        <div class="col-12 text-center mb-3">
            <a href="Index.aspx">
                <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%;" />
            </a>
        </div>
        <div class="col-12 text-center mb-5 mt-2 ">
            <h1>Cadastro</h1>
            <p>Informe seus dados pessoais</p>
        </div>

        <div class="col-8">
            <div class="row justify-content-center">
                <div class="col-6">
                    <div class=" mb-2">
                        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control " placeholder="Nome" required />
                    </div>
                </div>
                <div class="col-6">
                    <div class=" mb-2">
                        <asp:TextBox ID="txtSobrenome" runat="server" CssClass="form-control " required placeholder="Sobrenome"/>
                    </div>
                </div>
                <div class="col-6">
                    <div class=" mb-2">
                        <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control ">
                            <asp:ListItem Enabled="true" Text="Sexo" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Masculino" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Feminino" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Outro" Value="3"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-6">
                    <div class=" mb-2">
                        <asp:TextBox ID="txtData" runat="server" CssClass="form-control" TextMode="Date"/>
                    </div>
                </div>
            </div>
            <div class=" mb-2">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" type="email" placeholder="Email" required />
            </div>
            <div class=" mb-2">
                <asp:TextBox ID="txtConfirmaEmail" runat="server" CssClass="form-control form-control-lg" type="email" placeholder="Confirme o email" required />
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="form-group mb-2">
                        <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control form-control-lg" type="password" placeholder="Senha" required="true" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <asp:TextBox ID="txtConfirmaSenha" runat="server" CssClass="form-control form-control-lg" type="password" placeholder="Confirme sua senha" required="true" />
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12">
            <div class="form-group">
                <div class="d-flex justify-content-center mt-2">
                    <asp:Button ID="btnCadastrar" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Continuar cadastro" OnClick="btn_Click" />
                </div>
            </div>

        </div>

    </div>

    <!-- Modal Email-->
    <div class="modal fade" id="modalErroCadastroEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ops!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4>Emails diferentes. Digite novamente.</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Fim Modal Email -->

    <!-- Modal Senha-->
    <div class="modal fade" id="modalErroCadastroSenha" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelSenha" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabelSenha">Ops!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4>Senhas diferentes. digite Novamente.</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Fim Modal Senha -->

    <!-- Modal Email ja cadastrado-->
    <div class="modal fade" id="modalErroCadastroEmailJaCadastrado" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelEmail2" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabelEmail2">Ops!</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4>Email já cadastrado. Tente efetuar login.</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Fim Modal  Email ja cadastrado-->

    <script src="../Scripts/jquery-3.0.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script  src="../Scripts/jquery.maskedinput.js"></script>
    
</asp:Content>

