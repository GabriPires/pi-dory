using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Pessoas
/// </summary>
public class Pessoas
{
    private int pes_cpf;
    private string pes_nome;
    private DateTime pes_dataNascimento;
    private char pes_sexo;
    private string pes_rg;
    private string pes_cutis;
    private Endereco end_id;

    public int Pes_cpf
    {
        get
        {
            return pes_cpf;
        }

        set
        {
            pes_cpf = value;
        }
    }

    public string Pes_nome
    {
        get
        {
            return pes_nome;
        }

        set
        {
            pes_nome = value;
        }
    }

    public DateTime Pes_dataNascimento
    {
        get
        {
            return pes_dataNascimento;
        }

        set
        {
            pes_dataNascimento = value;
        }
    }

    public char Pes_sexo
    {
        get
        {
            return pes_sexo;
        }

        set
        {
            pes_sexo = value;
        }
    }

    public string Pes_rg
    {
        get
        {
            return pes_rg;
        }

        set
        {
            pes_rg = value;
        }
    }

    public string Pes_cutis
    {
        get
        {
            return pes_cutis;
        }

        set
        {
            pes_cutis = value;
        }
    }

    public Endereco End_id
    {
        get
        {
            return end_id;
        }

        set
        {
            end_id = value;
        }
    }
}