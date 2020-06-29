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
}