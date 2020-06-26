<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="TelaBO.aspx.cs" Inherits="Pages_TelaBO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <div class="row justify-content-center">


        <div class="col-12 text-center mb-3">
            <img src="../Images/Logo_3.0.png" class="img-fluid" style="width: 17%;" />
        </div>
        <div class="col-12 text-center">
            <h2>Estamos quase acabando...</h2>
        </div>
        
        <div class="col-12 text-center container">
            <p>Informe o boletim de ocorrência feito em uma delegacia mais próxima para evitar situações indesejadas</p>
        </div>
        <div class="col-8">
            
    <div class="row justify-content-center">
        
        
        <div class="col-12 mb-3">
            <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control form-control-lg" placeholder="Seu CPF" required="true" />
        </div>
        <div class="col-12 mb-3">
            <asp:TextBox ID="txtCPFDesaparecido" runat="server" CssClass="form-control form-control-lg" placeholder="CPF do Desaparecido" required="true" />
        </div>
        <div class="col-12 mb-3">
            <asp:TextBox ID="txtRG" runat="server" CssClass="form-control form-control-lg" placeholder="Seu RG" required="true" />
        </div>
        <div class="col-12 mb-3">
            <asp:TextBox ID="txtRGDesaparecido" runat="server" CssClass="form-control form-control-lg" placeholder="RG da pessoa Desaparecida" required="true" />
        </div>
        <div class="col-12 mb-3">
            <asp:TextBox ID="txtBO" runat="server" CssClass="form-control form-control-lg" placeholder="Numero do Boletim de Ocorrencia" required="true" />
        </div>
        <div class="col-11 mb-3">
            <asp:Button ID="btnFinalizarCadastro" runat="server" CssClass="btn btn-primary btn-cadastro text-white" Text="Finalizar" OnClick="btnFinalizarCadastro_Click"/>
        </div>
        <div class="col-1 mb-3">
            <asp:LinkButton ID="Pergunta" runat="server" Text="" OnClick="Pergunta_Click">
                <div class="aviso">
                    <i class="fa fa-question-circle fa-fw "></i>
                </div>
            </asp:LinkButton>
        </div>
    </div>
        </div>
        

    </div>




    <div class="modal fade" id="modalpergunta" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Por que pedimos estas informações ?</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <h4>Pedimos estas informações para evitar pegadinhas e brincadeiras com terceiros e para provar a vericidade da informação!</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>











</asp:Content>

