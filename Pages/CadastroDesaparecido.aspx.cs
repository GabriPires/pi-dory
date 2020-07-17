using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Pages_CadastroDesaparecido : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    public Int64 GerarID()
    {
        try
        {
            DateTime data = new DateTime();
            data = DateTime.Now;
            string s = data.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
            return Convert.ToInt64(s);
        }
        catch (Exception erro)
        {

            throw;
        }
    }

    protected void btnContinuaCadastroDesaparecido_Click(object sender, EventArgs e)
    {
        Pessoas p = new Pessoas();
        Desaparecidos d = new Desaparecidos();
        Mais_Informacoes minfo = new Mais_Informacoes();
        Tutorias tut = new Tutorias();

        p.Pes_nome = txtNome.Text + " " + txtSobrenome.Text;
        p.Pes_dataNascimento = Convert.ToDateTime(txtData.Text);

        // Switch do sexo
        switch (ddlSexo.SelectedValue)
        {
            case "1":
                p.Pes_sexo = "Masculino";
                break;

            case "2":
                p.Pes_sexo = "Feminino";
                break;

            case "3":
                p.Pes_sexo = "Outro";
                break;

            default:
                p.Pes_sexo = "Outro";
                break;

        }

        // Switch da cutis
        switch (ddlCutis.SelectedValue)
        {
            case "1":
                p.Pes_cutis = "Amarela";
                break;

            case "2":
                p.Pes_cutis = "Branca";
                break;

            case "3":
                p.Pes_cutis = "Indígena";
                break;

            case "4":
                p.Pes_cutis = "Negra";
                break;

            case "5":
                p.Pes_cutis = "Parda";
                break;

            default:
                p.Pes_cutis = "";
                break;

        }

        minfo.Min_cor_olhos = txtCorDosOlhos.Text;
        minfo.Min_cor_cabelo = txtCorDoCabelo.Text;

        // Switch do sangue
        switch (ddlSangue.SelectedValue)
        {
            case "1":
                minfo.Min_tipo_sanguineo = "A+";
                break;

            case "2":
                minfo.Min_tipo_sanguineo = "A-";
                break;

            case "3":
                minfo.Min_tipo_sanguineo = "B+";
                break;

            case "4":
                minfo.Min_tipo_sanguineo = "B-";
                break;

            case "5":
                minfo.Min_tipo_sanguineo = "O+";
                break;

            case "6":
                minfo.Min_tipo_sanguineo = "0-";
                break;

            case "7":
                minfo.Min_tipo_sanguineo = "AB+";
                break;

            case "8":
                minfo.Min_tipo_sanguineo = "AB-";
                break;

            default:
                minfo.Min_tipo_sanguineo = "";
                break;

        }

        minfo.Min_altura = txtAltura.Text;
        minfo.Min_peso = txtPeso.Text;
        minfo.Min_descricao = txtDescricao.Text;

        //if (FileUploadControl.PostedFile.ContentLength < 8388608)
        //{
        //    try
        //    {
        //        if (FileUploadControl.HasFile)
        //        {
        //            try
        //            {
        //                //Aqui ele vai filtrar pelo tipo de arquivo
        //                if (FileUploadControl.PostedFile.ContentType == "image/jpeg" ||
        //                    FileUploadControl.PostedFile.ContentType == "image/png" ||
        //                    FileUploadControl.PostedFile.ContentType == "image/gif" ||
        //                    FileUploadControl.PostedFile.ContentType == "image/bmp")
        //                {
        //                    try
        //                    {
        //                        //Obtem o  HttpFileCollection
        //                        HttpFileCollection hfc = Request.Files;
        //                        for (int i = 0; i < hfc.Count; i++)
        //                        {
        //                            HttpPostedFile hpf = hfc[i];
        //                            if (hpf.ContentLength > 0)
        //                            {
        //                                //Pega o nome do arquivo
        //                                string nome = System.IO.Path.GetFileName(hpf.FileName);
        //                                //Pega a extensão do arquivo
        //                                string extensao = Path.GetExtension(hpf.FileName);
        //                                //Gera nome novo do Arquivo numericamente
        //                                string filename = string.Format("{0:00000000000000}", GerarID());
        //                                //Caminho a onde será salvo
        //                                hpf.SaveAs(Server.MapPath("~/uploads/fotos/") + filename + i
        //                                + extensao);

        //                                //Prefixo p/ img pequena
        //                                var prefixoP = "-p";
        //                                //Prefixo p/ img grande
        //                                var prefixoG = "-g";

        //                                //pega o arquivo já carregado
        //                                string pth = Server.MapPath("~/uploads/fotos/")
        //                                + filename + i + extensao;

        //                                //Redefine altura e largura da imagem e Salva o arquivo + prefixo
        //                                Redefinir.resizeImageAndSave(pth, 70, 53, prefixoP);
        //                                Redefinir.resizeImageAndSave(pth, 500, 331, prefixoG);
        //                            }

        //                        }
        //                    }
        //                    catch (Exception ex)
        //                    {

        //                    }
                            

        //                }
        //                else
        //                {
        //                    // Mensagem notifica que é permitido carregar apenas 
        //                    // as imagens definida la em cima.
                            
        //                }
        //            }
        //            catch (Exception ex)
        //            {
        //                // Mensagem notifica quando ocorre erros
                        
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        // Mensagem notifica quando ocorre erros
                
        //    }
        //}
        //else
        //{
        //    // Mensagem notifica quando imagem é superior a 8 MB
        //}

        switch (DesaparecidoBD.InsertDesaparecido(p, d, minfo))
        {
            case 0:
                DataSet ds = DesaparecidoBD.SelectPesIdDesaparecido();
                tut.Pes_id = Convert.ToInt32(ds.Tables[0].Rows[0]["pes_id"]);
                tut.Res_id = Convert.ToInt32(Session["idResponsavel"]);
                tut.Tut_cadastro = DateTime.Today;
                tut.Tut_ativo = true;

                switch (DesaparecidoBD.insertTutorias(tut))
                {
                    case 0:
                        Response.Redirect("MaisInfosDesaparecido.aspx");
                        break;
                    case -2:
                        Response.Redirect("Index.aspx");
                        break;
                }
                break;
            case -2:
                Response.Redirect("Index.aspx");
                break;
        }
    }
}