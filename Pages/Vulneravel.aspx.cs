using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Vulneravel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        customSwitch1.Checked = true; // Para deixar selecionado o botão
    }



    protected void CadastrarVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroVulneravel.aspx");
    }

    protected void CadastrarDesaparecido_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroDesaparecido.aspx");
    }



    protected void btnSim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Index.aspx");
    }

    protected void temporario_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalTornarDesaparecido').modal('show');</script>", false);
    }

    protected void Facebook_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.facebook.com/asp.net");
    }

    protected void instagram_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.instagram.com/asp.net_learning/");
    }

    protected void twitter_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://twitter.com/aspnet");
    }

    protected void youtube_Click(object sender, EventArgs e)
    {
        Response.Redirect("https://www.youtube.com/channel/UC-NZkLwbVeVi9BzAAaRdWSw");
    }
}