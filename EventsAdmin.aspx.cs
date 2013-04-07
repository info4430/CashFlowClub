using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class EventsAdmin2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void AddBTN_Click(object sender, EventArgs e)
    {

        SqlDataSource1.InsertParameters["E_Name"].DefaultValue = EventNameTXT.Text;
        SqlDataSource1.InsertParameters["E_Date"].DefaultValue = EventDateTXT.Text;
        SqlDataSource1.InsertParameters["E_Time"].DefaultValue = EventTimeTXT.Text;
        SqlDataSource1.InsertParameters["E_Descr"].DefaultValue = EventDescrTXT.Text;


        try
        {
            SqlDataSource1.Insert();
            EventNameTXT.Text = "";
            EventDateTXT.Text = "";
            EventTimeTXT.Text = "";
            EventDescrTXT.Text = "";

            ErrorLBL.Text = "Your new event was submitted successfully";
        }
        catch (Exception ex)
        {
            ErrorLBL.Text = "Something isn't right!! The event was not added. Please try again <br /><br />" +
                ex.Message;
        }
    }
}