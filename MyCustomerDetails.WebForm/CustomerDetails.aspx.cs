using System;
using CustomerManagementLibrary;

namespace MyCustomerDetails.WebForm
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(txtID.Text);
            string name = txtName.Text;
            int contactNumber = Convert.ToInt32(txtContactNumber.Text);
            string city = txtCity.Text;
            int zipCode = Convert.ToInt16(txtZip.Text);

            Customer customer = new Customer
            {
                ID = id,
                Name = name,
                ContactNumber = contactNumber,
                City = city,
                Zip = zipCode
            };

            int noOfRowsInserted = CustomerDatabaseOperations.Create(customer);
            lblOutput.Text = noOfRowsInserted.ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(TextBox1.Text);
            string name = TextBox2.Text;
            int contactNumber = Convert.ToInt32(TextBox3.Text);
            string city = TextBox4.Text;
            int zipCode = Convert.ToInt16(TextBox5.Text);

            Customer customer = new Customer
            {
                ID = id,
                Name = name,
                ContactNumber = contactNumber,
                City = city,
                Zip = zipCode
            };

            int noOfRowsUpdated = CustomerDatabaseOperations.Update(customer);
            Label6.Text = noOfRowsUpdated.ToString();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(txtDeleteID.Text);
            int rowsEffected = CustomerDatabaseOperations.Delete(id);
            lblDeleteOutput.Text = rowsEffected.ToString();
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedValue == "0")
            {
                pnlDelete.Visible = pnlUpdate.Visible = pnlRead.Visible = false;
                pnlCreate.Visible = true;
            }
            else if (RadioButtonList1.SelectedValue == "1")
            {
                pnlUpdate.Visible = true;
                pnlCreate.Visible = pnlDelete.Visible = pnlRead.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "2")
            {
                pnlDelete.Visible = true;
                pnlUpdate.Visible = pnlCreate.Visible = pnlRead.Visible = false;
            }
            else if (RadioButtonList1.SelectedValue == "3")
            {
                pnlRead.Visible = true;
                pnlDelete.Visible = pnlUpdate.Visible = pnlCreate.Visible = false;

                // grid view               
                gvCustomers.DataSource = CustomerDatabaseOperations.Read();
                gvCustomers.DataBind();
            }
            else
            {

            }
        }
    }
}