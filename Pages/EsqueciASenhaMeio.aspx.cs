using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_EsqueciASenhaMeio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        if (txtCodigo.Text == "1234")
        {
            Response.Redirect("EsqueciASenhaFinal.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalCodigoInvalido').modal('show');</script>", false);
        }
    }
}