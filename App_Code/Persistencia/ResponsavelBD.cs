using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Data;

/// <summary>
/// Descrição resumida de Responsavel
/// </summary>
public class ResponsavelBD
{
    public static string CriptoSenha(string senha)
    {
        UnicodeEncoding UE = new UnicodeEncoding();
        byte[] HashValue, MessageBytes = UE.GetBytes(senha);
        SHA512Managed SHhash = new SHA512Managed();
        string strHex = "";

        HashValue = SHhash.ComputeHash(MessageBytes);
        foreach (byte b in HashValue)
        {
            strHex += String.Format("{0:x2}", b);
        }
        return strHex;
    }

    public static int Insert(Pessoas pessoa, Responsaveis responsavel)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "INSERT INTO pes_pessoas(pes_nome, pes_dataNascimento, pes_sexo) VALUES(?pes_nome,?pes_dataNascimento,?pes_sexo);";
            sql += "INSERT INTO res_responsaveis(res_email, res_senha,pes_id) VALUES(?res_email,?res_senha, last_insert_id()); ";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            //parametrização

            //Pessoa
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoa.Pes_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_dataNascimento", pessoa.Pes_dataNascimento));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_sexo", pessoa.Pes_sexo));
            //fim Pessoa
            //Responsavel
            objCommand.Parameters.Add(Mapped.Parameter("?res_email", responsavel.Res_email));
            objCommand.Parameters.Add(Mapped.Parameter("?res_senha", responsavel.Res_senha));
            //Fim Responsavel


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

    public static int InsertInicialEndereco(int id)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "INSERT INTO end_endereco (end_pais) VALUES ('Brasil');";
            sql += "UPDATE pes_pessoas SET end_id = last_insert_id() WHERE pes_id = ?pes_id; ";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            //parametrização

            //Pessoa
            objCommand.Parameters.Add(Mapped.Parameter("?pes_id", id));

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

    public static DataSet SelectLogin(string email, string senha)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from res_responsaveis where res_email = ?res_email and res_senha = ?res_senha";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?res_email", email));
        objCommand.Parameters.Add(Mapped.Parameter("?res_senha", senha));

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

        string sql = "select * from pes_pessoas pessoas inner join res_responsaveis responsaveis using(pes_id) where pes_id = ?pes_id";

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

    public static DataSet SelectIdPorEmail(Responsaveis r)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select res_id from res_responsaveis where res_email = ?res_email";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?res_email", r.Res_email));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        return ds;
    }

    public static DataSet SelectEndereco(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select * from pes_pessoas pessoas inner join end_endereco enderecos using(end_id) where pes_id = ?pes_id";

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

    public static DataSet SelectContatos(int id)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select con_contato, con_tipo from pes_pessoas pessoas inner join res_responsaveis responsaveis using(pes_id) inner join con_contato using(pes_id) where pes_id = ?pes_id";

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

    public static Boolean ValidaEmail(string email)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataAdapter;

        string sql = "select res_email from res_responsaveis where res_email = ?res_email;";

        objConnection = Mapped.Connection();
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?res_email", email));

        objDataAdapter = Mapped.Adapter(objCommand);
        objDataAdapter.Fill(ds);

        objConnection.Close();
        objConnection.Dispose();
        objCommand.Dispose();

        Boolean controlador;
        if (ds.Tables[0].Rows.Count != 0)
        {
            controlador = false;
        }
        else
        {
            controlador = true;
        }

        return controlador;
        
    }

    public static int UpdateResponsavel(Pessoas p, int pesId)
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

            // Documentos
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cpf", p.Pes_cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rg", p.Pes_rg));

            // Pessoa
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

    public static int UpdateEnderecoResponsavel(Endereco e, int endId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE end_endereco SET end_logradouro = ?end_logradouro, end_numero = ?end_numero, end_bairro = ?end_bairro, end_cidade = ?end_cidade, end_estado = ?end_estado, end_pais = ?end_pais WHERE end_id = ?end_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?end_logradouro", e.End_logradouro));
            objCommand.Parameters.Add(Mapped.Parameter("?end_numero", e.End_numero));
            objCommand.Parameters.Add(Mapped.Parameter("?end_bairro", e.End_bairro));
            objCommand.Parameters.Add(Mapped.Parameter("?end_cidade", e.End_cidade));
            objCommand.Parameters.Add(Mapped.Parameter("?end_estado", e.End_estado));
            objCommand.Parameters.Add(Mapped.Parameter("?end_pais", e.End_pais));

            // Endereco
            objCommand.Parameters.Add(Mapped.Parameter("?end_id", endId));

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

    public static int UpdateDadosPessoais(Pessoas p, int pesId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE pes_pessoas SET pes_nome = ?pes_nome, pes_cpf = ?pes_cpf, pes_rg = ?pes_rg, pes_sexo = ?pes_sexo WHERE pes_id = ?pes_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", p.Pes_nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_cpf", p.Pes_cpf));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_rg", p.Pes_rg));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_sexo", p.Pes_sexo));

            // Endereco
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

    public static int UpdateEmailResponsavel(Responsaveis r, int resId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE res_responsaveis SET res_email = ?res_email WHERE res_id = ?res_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?res_email", r.Res_email));

            // Endereco
            objCommand.Parameters.Add(Mapped.Parameter("?res_id", resId));

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

    public static int UpdateSenhaResponsavel(Responsaveis r, int resId)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql = "UPDATE res_responsaveis SET res_senha = ?res_senha WHERE res_id = ?res_id;";

            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            // Parametrização

            // Dados
            objCommand.Parameters.Add(Mapped.Parameter("?res_senha", r.Res_senha));

            // Endereco
            objCommand.Parameters.Add(Mapped.Parameter("?res_id", resId));

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