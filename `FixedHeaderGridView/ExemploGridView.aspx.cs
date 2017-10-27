using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;

namespace _FixedHeaderGridView
{
    [DataObject]
    public partial class ExemploGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<Cliente> CarregarGrid()
        {
            List<Cliente> clientes = new List<Cliente>();
            int t = 250;
            for (int i = 0; i < t; i++)
            {
                Cliente cli = new Cliente();
                cli.Nome = "Cliente" + i;
                cli.SobreNome = "Sobrenome" + i;
                cli.Endereco = "Endereco" + 1;
                cli.Cidade = "Cidade" + i;
                cli.UF = "UF" + i;
                clientes.Add(cli);
            }
            return clientes;
        }

        
    }

    public class Cliente
    {
        public string Nome { get; set; }
        public string SobreNome { get; set; }
        public string Endereco { get; set; }
        public string Cidade { get; set; }
        public string UF { get; set; }
    }
}