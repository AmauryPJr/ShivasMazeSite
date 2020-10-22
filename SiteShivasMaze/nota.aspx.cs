using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nota : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAvaliar_Click(object sender, EventArgs e)
    {
        sqlAvaliar.Insert();
        lblSucesso.Text = "Avaliação enviada! Obrigado :)";

    }

    protected void btnLimpar_Click(object sender, EventArgs e)
    {
        rblControles.ClearSelection();
        rblGrafico.ClearSelection();
        rblJogabilidade.ClearSelection();
        rblMapa.ClearSelection();
        rblPersonagens.ClearSelection();
        rblRecomendacoes.ClearSelection();
    }

    protected void btnHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}