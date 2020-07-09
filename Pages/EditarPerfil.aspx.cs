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
                ddlSexo.SelectedValue = ds.Tables[0].Rows[0]["pes_sexo"].ToString() == "M" ? "1" : "2";

                // txtDataNascimento.Text = ds.Tables[0].Rows[0]["pes_dataNascimento"].ToString();

                // FAZER OS CONTATOS
            }
            else
            {
                // ERRO
            }
        }
    }

    protected void btnSalvarDados_Click(object sender, EventArgs e)
    {
        Pessoas p = new Pessoas();

        int pesId = Convert.ToInt32(Session["idPessoa"]);
        p.Pes_nome = txtNome.Text;
        p.Pes_cpf = txtCPF.Text;
        p.Pes_rg = txtRG.Text;

        if (ddlSexo.SelectedValue == "1")
        {
            p.Pes_sexo = "Masculino";
        }
        else if (ddlSexo.SelectedValue == "2")
        {
            p.Pes_sexo = "Feminino";
        }
        else if (ddlSexo.SelectedValue == "3")
        {
            p.Pes_sexo = "Outro";
        }

        switch (ResponsavelBD.UpdateDadosPessoais(p, pesId))
        {
            case 0:
                Response.Redirect("ExibirPerfil.aspx");
                break;
            case -2:
                Page.ClientScript.RegisterStartupScript(this.GetType(), "script", "<script>$('#modalErroInformações').modal('show');</script>", false);
                break;
        }
    }
}