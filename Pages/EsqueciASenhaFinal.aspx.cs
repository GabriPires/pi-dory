using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_EsqueciASenhaFinal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnContinuar_Click(object sender, EventArgs e)
    {

        Responsaveis r = new Responsaveis();
        int resId = Convert.ToInt32(Session["idResponsavel"]);

        if (txtSenha.Text == txtRepeteSenha.Text)
        {
            r.Res_senha = txtSenha.Text;

            switch (ResponsavelBD.UpdateSenhaResponsavel(r, resId))
            {
                case 0:
                    Session.Remove("idResponsavel");
                    Response.Redirect("Login.aspx");
                    break;
                case -2:
                    break;
            }

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalSenhaErrada').modal('show');</script>", false);
        }
    }
}