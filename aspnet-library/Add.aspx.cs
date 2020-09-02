using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace aspnet_library
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addButton_Click(object sender, EventArgs e)
        {
            //Валидация на сервере
            if (Page.IsValid)
            {
                //getLibrary.InsertCommand = "INSERT INTO Library (name, author, datePublishing, publishing, pages, amount) " +
                //    "VALUES ("
                //    + "N'" + Request.Form["nameTextBox"].ToString() + "',"
                //    + " N'" + Request.Form["authorTextBox"].ToString() + "',"
                //    + " ' " + Request.Form["datePublishingTextBox"].ToString() + "',"
                //    + " N'" + Request.Form["publishingTextBox"].ToString() + "', "
                //    + Request.Form["pagesTextBox"].ToString() + ", "
                //    + Request.Form["amountTextBox"].ToString()
                //    + ")";

                getLibrary.InsertCommandType = SqlDataSourceCommandType.Text;
                getLibrary.InsertCommand = "INSERT INTO Library (name, author, datePublishing, publishing, pages, amount) VALUES (@Name, @Author, @DatePublishing, @Publishing, @Pages, @Amount)";

                getLibrary.InsertParameters.Add("Name", Request.Form["nameTextBox"].ToString());
                getLibrary.InsertParameters.Add("Author", Request.Form["authorTextBox"].ToString());
                getLibrary.InsertParameters.Add("DatePublishing", Request.Form["datePublishingTextBox"].ToString());
                getLibrary.InsertParameters.Add("Publishing", Request.Form["publishingTextBox"].ToString());
                getLibrary.InsertParameters.Add("Pages", Request.Form["pagesTextBox"].ToString());
                getLibrary.InsertParameters.Add("Amount", Request.Form["amountTextBox"].ToString());
                getLibrary.Insert();
                Response.Redirect($"Default.aspx");
            }
        }
    }
}