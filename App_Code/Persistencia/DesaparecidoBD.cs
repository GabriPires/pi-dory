using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Security.Cryptography;

/// <summary>
/// Descrição resumida de DesaparecidoBD
/// </summary>
public class DesaparecidoBD
{
    public static int InsertDesaparecido(Pessoas pessoa, Desaparecidos desaparecido, Mais_Informacoes minfo)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "INSERT INTO pes_pessoas(pes_nome, pes_sexo, pes_cutis, pes_dataNascimento) VALUES(?pes_nome, ?pes_sexo, ?pes_cutis, ?pes_dataNascimento);";
            sql += "INSERT INTO des_desaparecidos(pes_id) VALUES(last_insert_id());";
            sql += "INSERT INTO min_mais_informacoes(min_cor_cabelo, min_cor_olhos, min_altura, min_peso, min_descricao, min_tipo_sanguineo, des_id)";
            sql += "VALUES(?min_cor_cabelo, ?min_cor_olhos, ?min_altura, ?min_peso, ?min_descricao, ?min_tipo_sanguineo, last_insert_id());";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Pessoa
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoa.Pes_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_sexo", pessoa.Pes_sexo));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cutis", pessoa.Pes_cutis));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_dataNascimento", pessoa.Pes_dataNascimento));
            // Desaparecido
            //objCommand.Parameters.Add(Mapped.Parameter("?vul_status", vulneravel.Vul_status));

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

    public static int UpdateDesaparecido(Mais_Informacoes minfo)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE min_mais_informacoes SET min_doencas = ?min_doencas, min_deficiencia_mental = ?min_deficiencia_mental, min_deficiencia_fisica = ?min_deficiencia_fisica, min_restricao_alimentar = ?min_restricao_alimentar, min_restricao_medicamento = ?min_restricao_medicamento WHERE des_id = ?des_id;";

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
            objCommand.Parameters.Add(Mapped.Parameter("?des_id", minfo.Des_id));

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

    public static int UpdateDocumentos(Pessoas p, int pesId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE pes_pessoas SET pes_cpf = ?pes_cpf, pes_rg = ?pes_rg WHERE pes_id = ?pes_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cpf", p.Pes_cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rg", p.Pes_rg));

            // Desaparecido
            objCommand.Parameters.Add(Mapped.Parameter("?pes_id", pesId));

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

    public static DataSet SelectPesIdDesaparecido()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from des_desaparecidos order by des_id desc limit 1;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static DataSet SelectDados(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from pes_pessoas pessoas inner join des_desaparecidos responsaveis using(pes_id) where pes_id = ?pes_id";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?pes_id", id));

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

        string sql = "select * from des_desaparecidos inner join  pes_pessoas using (pes_id) inner join min_mais_informacoes using (des_id) inner join tut_tutorias using (pes_id) where des_id = ?des_id; ";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?des_id", id));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static DataSet SelectNomeIdadeIdDesaparecidos()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;


        string sql = "select des_id, pes_nome as Nome, TIMESTAMPDIFF(YEAR,pes_dataNascimento,CURDATE())as Idade  from pes_pessoas inner join des_desaparecidos using (pes_id) where des_encontrado is null ;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);


        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }


    public static DataSet SelectDesaparecidoporPessoa(int res_id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select des_id from tut_tutorias inner join des_desaparecidos using (pes_id) where res_id = ?res_id and des_encontrado is null; ";

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

    public static DataSet SelectDesIdVulneravel(int vulId)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select des_id from des_desaparecidos where vul_id = ?vul_id order by des_id desc limit 1;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?vul_id", vulId));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static int UpdateVulneravelDesaparecidoEncontrado(Desaparecidos d, int desId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE des_desaparecidos SET des_encontrado = ?des_encontrado WHERE des_id = ?des_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?des_encontrado", d.Des_encontrado));

            // Desaparecido
            objCommand.Parameters.Add(Mapped.Parameter("?des_id", desId));

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

    public static int UpdateDesaparecidoEncontrado(Desaparecidos d, int desId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE des_desaparecidos SET des_encontrado = ?des_encontrado WHERE des_id = ?des_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?des_encontrado", d.Des_encontrado));

            // Desaparecido
            objCommand.Parameters.Add(Mapped.Parameter("?des_id", desId));

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

    public static int InsertCasoDeDesaparecimento(Caso_De_Desaparecimento c)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "INSERT INTO cde_caso_de_desaparecimento(cde_ultima_roupa, cde_ultima_localizacao, cde_ultimo_local_encontrado, cde_ultimo_horario_visto, des_id) VALUES(?cde_ultima_roupa, ?cde_ultima_localizacao, ?cde_ultimo_local_encontrado, ?cde_ultimo_horario_visto, ?des_id);";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Pessoa
            objCommand.Parameters.Add(Mapped.Parameter("?cde_ultima_roupa", c.Cde_ultima_roupa));
            objCommand.Parameters.Add(Mapped.Parameter("?cde_ultima_localizacao", c.Cde_ultima_localizacao));
            objCommand.Parameters.Add(Mapped.Parameter("?cde_ultimo_local_encontrado", c.Cde_ultimo_encontrado));
            objCommand.Parameters.Add(Mapped.Parameter("?cde_ultimo_horario_visto", c.Cde_ultimo_horario_visto));
            objCommand.Parameters.Add(Mapped.Parameter("?des_id", c.Des_id));

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

    public static DataSet SelectAtividadeRecente()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from des_desaparecidos inner join pes_pessoas using (pes_id) where des_encontrado is not null order by des_encontrado desc limit 5;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static DataSet Encontrados()
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from des_desaparecidos inner join  pes_pessoas using (pes_id) inner join min_mais_informacoes using (des_id) inner join tut_tutorias using (pes_id) where des_encontrado is not null;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        // objCommand.Parameters.Add(Mapped.Parameter("?des_id", desId));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static DataSet SelectHistoricoDesaparecido(int desId)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from cde_caso_de_desaparecimento where des_id = ?des_id order by cde_id desc limit 3;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?des_id", desId));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static int DeleteDesaparecido(int desId, int pesId, int vulId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "DELETE FROM min_mais_informacoes WHERE des_id = ?des_id;";
            sql += "DELETE FROM tut_tutorias WHERE pes_id = ?pes_id;";
            sql += "DELETE FROM des_desaparecidos WHERE des_id = ?des_id;";
            sql += "DELETE FROM vul_vulneraveis WHERE vul_id = ?vul_id;";
            sql += "DELETE FROM pes_pessoas WHERE pes_id = ?pes_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização
            objCommand.Parameters.Add(Mapped.Parameter("?des_id", desId));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_id", pesId));
            objCommand.Parameters.Add(Mapped.Parameter("?vul_id", vulId));

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

    public static int UpdateDados(Mais_Informacoes m, Pessoas p)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE pes_pessoas SET pes_nome = ?pes_nome, pes_dataNascimento = ?pes_dataNascimento, pes_sexo = ?pes_sexo, pes_cutis = ?pes_cutis WHERE pes_id = ?pes_id;";
            sql += "UPDATE min_mais_informacoes SET min_cor_olhos = ?min_cor_olhos, min_cor_cabelo = ?min_cor_cabelo, min_altura = ?min_altura, min_peso = ?min_peso, min_descricao = ?min_descricao, min_tipo_sanguineo = ?min_tipo_sanguineo WHERE des_id = ?des_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", p.Pes_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_dataNascimento", p.Pes_dataNascimento));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_sexo", p.Pes_sexo));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cutis", p.Pes_cutis));

            objCommand.Parameters.Add(Mapped.Parameter("?min_cor_olhos", m.Min_cor_olhos));
            objCommand.Parameters.Add(Mapped.Parameter("?min_cor_cabelo", m.Min_cor_cabelo));
            objCommand.Parameters.Add(Mapped.Parameter("?min_altura", m.Min_altura));
            objCommand.Parameters.Add(Mapped.Parameter("?min_peso", m.Min_peso));
            objCommand.Parameters.Add(Mapped.Parameter("?min_descricao", m.Min_descricao));
            objCommand.Parameters.Add(Mapped.Parameter("?min_tipo_sanguineo", m.Min_tipo_sanguineo));


            // Vulneravel
            objCommand.Parameters.Add(Mapped.Parameter("?pes_id", p.Pes_id));
            objCommand.Parameters.Add(Mapped.Parameter("?des_id", m.Des_id));

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
}