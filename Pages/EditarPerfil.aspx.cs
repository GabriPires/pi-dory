using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Pages_EditarPerfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Session["idPessoa"]);
            DataSet ds = ResponsavelBD.SelectDados(id);

            if (ds.Tables[0].Rows.Count >= 1)
            {
                ltlTitulo.Text = "<h1>" + ds.Tables[0].Rows[0]["pes_nome"].ToString() + "</h1>";
                txtNome.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();
                txtCPF.Text = ds.Tables[0].Rows[0]["pes_cpf"].ToString();
                txtRG.Text = ds.Tables[0].Rows[0]["pes_rg"].ToString();

                //ddlSexo.SelectedItem = ds.Tables[0].Rows[0]["pes_sexo"].ToString() == "M" ? 1 : 2;

                //txtDataNascimento = Convert.ToDateTime(ds.Tables[0].Rows[0]["pes_dataNascimento"]);

                // FAZER OS CONTATOS
            }
            else
            {
                // ERRO
            }
        }
    }
}