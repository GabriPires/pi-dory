<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPages/LoginCadastro.master" AutoEventWireup="true" CodeFile="EditarMaisInfosDesaparecido.aspx.cs" Inherits="Pages_EditarMaisInfosDesaparecido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <div class="col-12 text-center">
                <a href="Index.aspx">
                    <img src="../Images/Logo_3.0.png" class="img-fluid mb-5" style="width: 28%;" />
                </a>
            </div>
            <p class="font-weight-bold">Mantenha os dados sempre atualizados!</p>
            Com informações mais consistentes, caso seu ente seja encontrado, ele poderá ser cuidado da melhor maneira possível até que possamos <strong>reconectá-los</strong>!
            <p class="mt-3">
                <strong>Atenção!</strong> você está editando os dados do(a) desaparecido <strong>
                    <asp:Literal ID="ltlNome" runat="server"></asp:Literal></strong>
            </p>
            <div class="form-group">
                <p class="font-weight-bold mt-3 mb-0">Restrições alimentares</p>
                <asp:TextBox ID="txtRestricoesAlimentares" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <p class="font-weight-bold mt-3 mb-0">Restrições a medicamentos</p>
                <asp:TextBox ID="txtRestricoesMedicamentos" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <p class="font-weight-bold mt-3 mb-0">Deficiência mental</p>
                <asp:TextBox ID="txtDefMental" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <p class="font-weight-bold mt-3 mb-0">Deficiência física</p>
                <asp:TextBox ID="txtDefFisica" runat="server" CssClass="form-control" />
            </div>
            <div class="form-group">
                <p class="font-weight-bold mt-3 mb-0">Outras doenças ou alergias</p>
                <asp:TextBox ID="txtOutros" runat="server" CssClass="form-control" />
            </div>
            <p class="font-weight-bold mt-3 mb-0">As informações estão corretas?</p>
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary btn-block" Text="Atualizar informações" OnClick="btnUpdate_Click"></asp:Button>
        </div>
        <div class="col-2"></div>
    </div>
</asp:Content>

