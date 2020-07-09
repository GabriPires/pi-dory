using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_EsqueciASenhaInicial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        if (ResponsavelBD.ValidaEmail(txtEmail.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalEmailInvalido').modal('show');</script>", false);
        }
        else
        {
            Responsaveis r = new Responsaveis();
            r.Res_email = txtEmail.Text;

            DataSet ds = ResponsavelBD.SelectIdPorEmail(r);

            Session["idResponsavel"] = Convert.ToInt32(ds.Tables[0].Rows[0]["res_id"]);


            Response.Redirect("EsqueciASenhaMeio.aspx");
        }
    }
}