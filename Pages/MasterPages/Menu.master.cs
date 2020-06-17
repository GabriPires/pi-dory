using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_MasterPages_Menu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["nomeResponsavel"] == null)
        {
            ltlTextoLogado.Text =  "<li class='list-inline-item text'>";
            ltlTextoLogado.Text += "<a href='Login.aspx' class='mb-0 btn-entrarCadastrar'>Entrar</a>";
            ltlTextoLogado.Text += "</li>";
            ltlTextoLogado.Text += "<li class='list-inline-item'>|</li>";
            ltlTextoLogado.Text += "<li class='list-inline-item'>";
            ltlTextoLogado.Text += "<a href='CadastroInicialResponsavel.aspx' class='mb-0 btn-entrarCadastrar'>Cadastrar</a>";
            ltlTextoLogado.Text += "</li>";
        }
        else
        {
            ltlTextoLogado.Text =  "<li class='list-inline-item text'>";
            ltlTextoLogado.Text += "<a href='#' class='list-inline-item btn-entrarCadastrar'>" + Session["nomeResponsavel"].ToString() + "</a>";
            ltlTextoLogado.Text += "</li>";
            ltlTextoLogado.Text += "<li class='list-inline-item mr-0'>|</li>";
            ltlTextoLogado.Text += "<li class='list-inline-item'>";
            ltlTextoLogado.Text += "<asp:Button ID='btnLogout' runat='server' CssClass='mb-0 btn-entrarCadastrar' Text='Logout' OnClick='btnLogout_Click' />";
            ltlTextoLogado.Text += "</li>";
        }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("nomeResponsavel");
        Session.Remove("emailResponsavel");
        Session.Remove("idResponsavel");
        Session.Remove("idPessoa");
        Response.Redirect("Index.aspx");
    }
}
