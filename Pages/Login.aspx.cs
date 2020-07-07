using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_LoginCadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        DataSet dsL = ResponsavelBD.SelectLogin(txtEmail.Text, txtSenha.Text);

        if (dsL.Tables[0].Rows.Count == 1)
        {
            int pesId = Convert.ToInt32(dsL.Tables[0].Rows[0]["pes_id"]);
            DataSet dsD = ResponsavelBD.SelectDados(pesId);

            Session["nomeResponsavel"] = dsD.Tables[0].Rows[0]["pes_nome"].ToString();
            Session["emailResponsavel"] = dsD.Tables[0].Rows[0]["res_email"].ToString();
            Session["idResponsavel"] = Convert.ToInt32(dsD.Tables[0].Rows[0]["res_id"]);
            Session["idPessoa"] = Convert.ToInt32(dsD.Tables[0].Rows[0]["pes_id"]);
            Session["isLoggedIn"] = true;

            Response.Redirect("Index.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalErroLogin').modal('show');</script>", false);
        }
    }
}