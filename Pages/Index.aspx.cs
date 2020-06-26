using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CadastrarDesaparecido_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroDesaparecido.aspx");
    }

    protected void CadastrarVulneravel_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroVulneravel.aspx");
    }

    protected void PessoasEncontradas_Click(object sender, EventArgs e)
    {
        Response.Redirect("PessoasEncontradas.aspx");
    }
}