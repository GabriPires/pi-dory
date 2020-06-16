using System;

/// <summary>
/// Descrição resumida de Pessoas
/// </summary>
public class Pessoas
{
    private int pes_id;
    private int pes_cpf;
    private string pes_nome;
    private string pes_dataNascimento;
    private string pes_sexo;
    private string pes_rg;
    private string pes_cutis;
    private Endereco end_id;


    public int Pes_id
    {
        get
        {
            return pes_id;
        }

        set
        {
            pes_id = value;
        }
    }

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

    public string Pes_dataNascimento
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

    public string Pes_sexo
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