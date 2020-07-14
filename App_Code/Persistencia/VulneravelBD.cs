using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Data;

/// <summary>
/// Descrição resumida de VulneravelBD
/// </summary>
public class VulneravelBD
{
    public static int InsertVulneravel(Pessoas pessoa, Vulneraveis vulneravel, Mais_Informacoes minfo)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "INSERT INTO pes_pessoas(pes_nome, pes_sexo, pes_cutis) VALUES(?pes_nome,?pes_sexo,?pes_cutis);";
            sql += "INSERT INTO vul_vulneraveis(vul_status, vul_observacoes, pes_id) VALUES(?vul_status,?vul_observacoes, last_insert_id());";
            sql += "INSERT INTO min_mais_informacoes(min_cor_cabelo, min_cor_olhos, min_altura, min_peso, min_descricao, min_tipo_sanguineo, vul_id)";
            sql += "VALUES(?min_cor_cabelo, ?min_cor_olhos, ?min_altura, ?min_peso, ?min_descricao, ?min_tipo_sanguineo, last_insert_id());";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Pessoa
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoa.Pes_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_sexo", pessoa.Pes_sexo));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cutis", pessoa.Pes_cutis));

            // Vulneravel
            objCommand.Parameters.Add(Mapped.Parameter("?vul_status", vulneravel.Vul_status));
            objCommand.Parameters.Add(Mapped.Parameter("?vul_observacoes", vulneravel.Vul_observacoes));

            // Mais informações
            objCommand.Parameters.Add(Mapped.Parameter("?min_cor_cabelo", minfo.Min_cor_cabelo));
            objCommand.Parameters.Add(Mapped.Parameter("?min_cor_olhos", minfo.Min_cor_olhos));
            objCommand.Parameters.Add(Mapped.Parameter("?min_altura", minfo.Min_altura));
            objCommand.Parameters.Add(Mapped.Parameter("?min_peso", minfo.Min_peso));
            objCommand.Parameters.Add(Mapped.Parameter("?min_descricao", minfo.Min_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?min_tipo_sanguineo", minfo.Min_tipo_sanguineo));

            objCommand.ExecuteNonQuery();

            objConnection.Close();
            objConnection.Dispose();
            objCommand.Dispose();
        }
        catch (Exception ex)
        {
            retorno = -2;
        }
        return retorno;
    }

    public static int UpdateVulneravel(Mais_Informacoes minfo)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE min_mais_informacoes SET min_doencas = ?min_doencas, min_deficiencia_mental = ?min_deficiencia_mental, min_deficiencia_fisica = ?min_deficiencia_fisica, min_restricao_alimentar = ?min_restricao_alimentar, min_restricao_medicamento = ?min_restricao_medicamento WHERE vul_id = ?vul_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Mais informações
            objCommand.Parameters.Add(Mapped.Parameter("?min_doencas", minfo.Min_doencas));
            objCommand.Parameters.Add(Mapped.Parameter("?min_deficiencia_mental", minfo.Min_deficiencia_mental));
            objCommand.Parameters.Add(Mapped.Parameter("?min_deficiencia_fisica", minfo.Min_deficiencia_fisica));
            objCommand.Parameters.Add(Mapped.Parameter("?min_restricao_alimentar", minfo.Min_restricao_alimentar));
            objCommand.Parameters.Add(Mapped.Parameter("?min_restricao_medicamento", minfo.Min_restricao_medicamento));

            // Vulneravel
            objCommand.Parameters.Add(Mapped.Parameter("?vul_id", minfo.Vul_id));

            objCommand.ExecuteNonQuery();

            objConnection.Close();
            objConnection.Dispose();
            objCommand.Dispose();
        }
        catch (Exception ex)
        {
            retorno = -2;
        }
        return retorno;
    }

    public static DataSet SelectPesIdVulneravel()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from vul_vulneraveis order by pes_id desc limit 1;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    } 

    public static int insertTutorias(Tutorias tutorias)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "INSERT INTO tut_tutorias(res_id, pes_id, tut_cadastro, tut_ativo) VALUES(?res_id,?pes_id,?tut_cadastro,?tut_ativo);";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            objCommand.Parameters.Add(Mapped.Parameter("?res_id", tutorias.Res_id));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_id", tutorias.Pes_id));
            objCommand.Parameters.Add(Mapped.Parameter("?tut_cadastro", tutorias.Tut_cadastro));
            objCommand.Parameters.Add(Mapped.Parameter("?tut_ativo", tutorias.Tut_ativo));

            objCommand.ExecuteNonQuery();

            objConnection.Close();
            objConnection.Dispose();
            objCommand.Dispose();
        }
        catch (Exception ex)
        {
            retorno = -2;
        }
        return retorno;
    }

    public static DataSet SelectVulneravelporPessoa(int res_id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select vul_id from tut_tutorias inner join vul_vulneraveis using (pes_id) where res_id = ?res_id; ";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?res_id", res_id));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static DataSet SelectDadosDesaparecido(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from vul_vulneraveis inner join  pes_pessoas using (pes_id) inner join min_mais_informacoes using (vul_id) inner join tut_tutorias using (pes_id) where vul_id = ?vul_id; ";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?vul_id", id));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }
}