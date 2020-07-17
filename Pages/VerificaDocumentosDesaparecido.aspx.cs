using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_VerificaDocumentos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["isLoggedIn"].ToString() == "True")
            {
                int pesId = Convert.ToInt32(Session["idPessoa"]);
                DataSet ds = ResponsavelBD.SelectDados(pesId);

                string cpf = "";
                string rg = "";
                Boolean end = false;

                if (ds.Tables[0].Rows[0]["pes_cpf"] != null)
                {
                    cpf = ds.Tables[0].Rows[0]["pes_cpf"].ToString();
                }

                if (ds.Tables[0].Rows[0]["pes_rg"] != null)
                {
                    rg = ds.Tables[0].Rows[0]["pes_rg"].ToString();
                }

                if (ds.Tables[0].Rows[0]["end_id"] != null)
                {
                    end = true;
                }

                txtAguarde.Text = "Redirecionando";

                if (rg == "" || cpf == "" || end == false)
                {
                    Response.Redirect("CadastroFinalResponsavel.aspx?valid=2");
                    txtAguarde.Text = rg +" e "+ cpf;
                }
                else
                {
                    Response.Redirect("CadastroDesaparecido.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

    }
}