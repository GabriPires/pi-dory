using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_CadastroDesaparecido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuaCadastroDesaparecido_Click(object sender, EventArgs e)
    {
        Response.Redirect("MaisInfosDesaparecido.aspx");
    }
}