using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_VerificaDocumentosVulneravel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["isLoggedIn"].ToString() == "true")
            {
                int pesId = Convert.ToInt32(Session["idPessoa"]);
                DataSet ds = ResponsavelBD.SelectDados(pesId);

                string cpf = "";
                string rg = "";

                if (ds.Tables[0].Rows[0]["pes_cpf"] == null)
                {
                    cpf = ds.Tables[0].Rows[0]["pes_cpf"].ToString();
                }

                if (ds.Tables[0].Rows[0]["pes_rg"] != null)
                {
                    rg = ds.Tables[0].Rows[0]["pes_rg"].ToString();
                }

                txtAguarde.Text = "Redirecionando";

                if (rg == "" || cpf == "")
                {
                    Response.Redirect("CadastroFinalResponsavel.aspx");
                }
                else
                {
                    Response.Redirect("CadastroVulneravel.aspx");
                }
            }
            else
            {
                txtAguarde.Text = "Não logado";
                Response.Redirect("Login.aspx");
            }
        }
    }
}