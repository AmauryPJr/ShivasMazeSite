using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class pesquisar : System.Web.UI.Page
{


    protected void btnOk_Click(object sender, EventArgs e)
    {
        DataView usuPesquisado;

        sqlPesquisar.SelectParameters["NOME"].DefaultValue = txtPesq.Text + "%";

        usuPesquisado = (DataView)sqlPesquisar.Select(DataSourceSelectArguments.Empty);
    }

    protected void btnExcluir_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow linha in gvExibir.Rows)
        {
            CheckBox chkOP;

            chkOP = (CheckBox)linha.FindControl("chkOP");

            if (chkOP.Checked == true)
            {
                string idAvaliacao;

                idAvaliacao = linha.Cells[1].Text;

                sqlExcluir.DeleteParameters["IDAVALIACAO"].DefaultValue = idAvaliacao;
                sqlExcluir.Delete();
            }

            gvExibir.DataBind();
        }
    }
}