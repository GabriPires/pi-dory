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
        int id = Convert.ToInt32(Session["idPessoa"]);
        DataSet ds = ResponsavelBD.SelectDados(id);

        if (ds.Tables[0].Rows.Count >= 1)
        {
            txtNome.Text = ds.Tables[0].Rows[0]["pes_nome"].ToString();
            //ltlCPF.Text = ds.Tables[0].Rows[0]["pes_cpf"].ToString();
            //ltlRG.Text = ds.Tables[0].Rows[0]["pes_rg"].ToString();
            //ltlSexo.Text = ds.Tables[0].Rows[0]["pes_sexo"].ToString() == "M" ? "Masculino" : "Feminino";
            //ltlDataNascimento.Text = ds.Tables[0].Rows[0]["pes_dataNascimento"].ToString();

            // FAZER OS CONTATOS
        }
        else
        {
            // ERRO
        }
    }
}