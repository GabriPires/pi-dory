using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_CadastroFinalResponsavel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int pesId = Convert.ToInt32(Session["idPessoa"]);
        DataSet ds = ResponsavelBD.SelectDados(pesId);

        if (ds.Tables[0].Rows[0]["pes_cpf"] != null)
        {
            txtCPF.Text = ds.Tables[0].Rows[0]["pes_cpf"].ToString();
        }

        if (ds.Tables[0].Rows[0]["pes_rg"] != null)
        {
            txtRG.Text = ds.Tables[0].Rows[0]["pes_rg"].ToString();
        }
    }
}