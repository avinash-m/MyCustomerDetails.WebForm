using System;
using System.Configuration;
using System.Web.UI;
using CustomerManagementLibrary;

namespace MyCustomerDetails.WebForm
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CustomerDatabaseOperations cdp = new CustomerDatabaseOperations(
                ConfigurationManager.ConnectionStrings["MyTestDatabase"].ConnectionString);
        }
    }
}