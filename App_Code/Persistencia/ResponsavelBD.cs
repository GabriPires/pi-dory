using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
/// <summary>
/// Descrição resumida de Responsavel
/// </summary>
public class ResponsavelBD
{
    
    public static int Insert(Pessoas pessoa, Responsaveis responsavel)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            string sql  =  "INSERT INTO pes_pessoas(pes_nome, pes_dataNascimento, pes_sexo) VALUES(?pes_nome,?pes_dataNascimento,?pes_sexo);";
                   sql  += "INSERT INTO res_responsaveis(res_email, res_senha,pes_id) VALUES(?res_email,?res_senha, last_insert_id()); ";

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

    public static int InsertResponsavel(Responsaveis responsavel)
    {
        int retorno = 0;

        try
        {
            IDbConnection objConnection;
            IDbCommand objCommand;

            
            string sql = "INSERT INTO res_responsaveis(res_email, res_senha,pes_id) VALUES(?res_email,?res_senha, ?pes_id); ";


            objConnection = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConnection);

            //parametrização
            objCommand.Parameters.Add(Mapped.Parameter("?res_email", responsavel.Res_email));
            objCommand.Parameters.Add(Mapped.Parameter("?res_senha", responsavel.Res_senha));

            objCommand.Parameters.Add(Mapped.Parameter("?pes_id", responsavel.Pes_id.Pes_id));

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

    public static DataSet SelectID(Pessoas pessoa)
    {
        DataSet ds = new DataSet();
        IDbConnection objConnection;
        IDbCommand objCommand;
        IDataAdapter objDataDadapter;

        objConnection = Mapped.Connection();

        
        string sql = "SELECT pes_id FROM pes_pessoas WHERE pes_nome = ?pes_nome";
        //objCommand    = Mapped.Command("select * from perfil", objConnection);
        objCommand = Mapped.Command(sql, objConnection);

        objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", pessoa.Pes_nome));

        objDataDadapter = Mapped.Adapter(objCommand);
        objDataDadapter.Fill(ds);

        objConnection.Close();
        objCommand.Dispose();
        objConnection.Dispose();
        return ds;
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

        string sql = "select * from pes_pessoas pessoas inner join res_responsaveis responsaveis using(pes_id) inner join con_contato using(pes_id) where pes_id = ?pes_id";

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
}