using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class avaliacao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        
        DateTime data = Convert.ToDateTime(txtDataNasc.Text);
        String dataFormatada = data.ToString("yyyy/MM/dd");

        sqlCadastroUsuario.InsertParameters["DATANASC"].DefaultValue = dataFormatada;

        sqlCadastroUsuario.Insert();

        DataView id;

        id = (DataView)sqlCadastroUsuario.Select(DataSourceSelectArguments.Empty);

        Session["idusuario"] = id.Table.Rows[0]["UltUsu"].ToString();

        Response.Redirect("nota.aspx");

        txtDataNasc.Text = "";
        txtNome.Text = "";
        txtSobrenome.Text = "";
        rblGenero.Text = "";
    }
}