using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_TelaBO : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnFinalizarCadastro_Click(object sender, EventArgs e)
    {
        Response.Redirect("Desaparecido.aspx");
    }

   

    protected void Pergunta_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalpergunta').modal('show');</script>", false);
    }
}