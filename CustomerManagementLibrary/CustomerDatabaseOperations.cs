using System.Data;
using System.Data.SqlClient;

namespace CustomerManagementLibrary
{
    public class CustomerDatabaseOperations
    {
        private static SqlConnection sqlConnection = new SqlConnection();

        public CustomerDatabaseOperations(string connString)
        {
            sqlConnection.ConnectionString = connString;
        }

        public static int Create(Customer customer)
        {           
            sqlConnection.Open();
            string InsertCommand = $"Insert into Customer(Id, Name, ContactNumber, City, ZipCode)values" +
                $"({customer.ID},'{customer.Name}',{customer.ContactNumber}, '{customer.City}', {customer.Zip})";
            SqlCommand CustomerInsertCommand = new SqlCommand(InsertCommand, sqlConnection);

            int numberofRowsEffected = CustomerInsertCommand.ExecuteNonQuery();
            sqlConnection.Close();
            return numberofRowsEffected;

        }

        public static int Delete(int id)
        {
            sqlConnection.Open();
            string DeleteCommand = $"Delete from Customer where ID = {id}";
            SqlCommand CustomerDeleteCommand = new SqlCommand(DeleteCommand, sqlConnection);

            int numberofRowsEffected = CustomerDeleteCommand.ExecuteNonQuery();
            sqlConnection.Close();
            return numberofRowsEffected;

        }

        public static int Update(Customer customer)
        {
            sqlConnection.Open();

            string UpdateCommand = $"UPDATE Customer SET City = '{customer.City}', ZipCode = {customer.Zip}, Name = '{customer.Name}'," +
                $"ContactNumber= {customer.ContactNumber} WHERE ID = {customer.ID}" ;
            SqlCommand CustomerUpdateCommand = new SqlCommand(UpdateCommand, sqlConnection);
            int numberofRowsEffected = CustomerUpdateCommand.ExecuteNonQuery();
            sqlConnection.Close();
            return numberofRowsEffected;
        }

        public static DataTable Read()
        {
            DataTable dt = new DataTable();
            //sqlConnection.Open();
            string Selectcommand = $"SELECT * FROM Customer";
            SqlCommand CustomerSelectCommand = new SqlCommand(Selectcommand, sqlConnection);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = CustomerSelectCommand;
            da.Fill(dt);
            return dt;
        }
    }
}
