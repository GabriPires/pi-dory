using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

public partial class Pages_CadastroInicialResponsavel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Pessoas p = new Pessoas();
        Responsaveis r = new Responsaveis();

        p.Pes_nome = txtNome.Text + " " + txtSobrenome.Text;
        p.Pes_dataNascimento = txtData.Text;

        r.Res_email = txtEmail.Text;
        r.Res_senha = txtSenha.Text;

        if (ddlSexo.SelectedValue == "1") {

            p.Pes_sexo = "Masculino"; 

        } else if (ddlSexo.SelectedValue == "2") {

            p.Pes_sexo = "Feminino";

        } else if (ddlSexo.SelectedValue == "3") {

            p.Pes_sexo = "Outro";

        }

        switch (ResponsavelBD.Insert(p, r))
        {
            case 0:
                Response.Redirect("Login.aspx");
                break;
            case -2:
                ltl.Text = "<div class='alert alert-danger'>";
                ltl.Text += ">>>>>>>>>> ERRO Insert Pessoa <<<<<<<<<<";
                ltl.Text += "</div>";
                break;
        }
        
    }
        
}