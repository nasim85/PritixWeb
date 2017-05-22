using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.ApplicationBlocks.Data;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace PritiXWeb.Controller
{
    public class DataAccess
    {


        public DataSet Directories(int userid)
        {
            string pritixDB = ConfigurationManager.ConnectionStrings["pritixDB"].ConnectionString;
            string query = "usp_GetDictionaries";
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@UserID", userid));
            DataSet ds = SqlHelper.ExecuteDataset(pritixDB, CommandType.StoredProcedure, query, parameters.ToArray());
            return ds;
        }

        public int LoginUser(string username, string password)
        {
            string pritixDB = ConfigurationManager.ConnectionStrings["pritixDB"].ConnectionString;
            string query = "usp_LoginUser";
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@Username", username));
            parameters.Add(new SqlParameter("@password", password));
            int userId = Convert.ToInt32(SqlHelper.ExecuteScalar(pritixDB, CommandType.StoredProcedure, query, parameters.ToArray()));
            return userId;
        }

        public string getUserDisplayName(int userid)
        {
            string pritixDB = ConfigurationManager.ConnectionStrings["pritixDB"].ConnectionString;
            string query = "usp_getUserDisplayName";
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@userID", userid));
            return SqlHelper.ExecuteScalar(pritixDB, CommandType.StoredProcedure, query, parameters.ToArray()).ToString();
            
        }

        public void ExecuteNonQuery(object sender, EventArgs e)
        {
            //string name = txtName1.Text;
            //string country = txtCountry1.Text;
            //string pritixDB = ConfigurationManager.ConnectionStrings["pritixDB"].ConnectionString;
            //string query = "INSERT INTO Customers (Name, Country) VALUES (@Name, @Country)";
            //List<SqlParameter> parameters = new List<SqlParameter>();
            //parameters.Add(new SqlParameter("@Name", name));
            //parameters.Add(new SqlParameter("@Country", country));
            //int rowsAffected = SqlHelper.ExecuteNonQuery(pritixDB, CommandType.Text, query, parameters.ToArray());
            //this.BindDataSet();
            //this.BindReader();
        }

        public void ExecuteScalar(object sender, EventArgs e)
        {
            //string name = txtName2.Text;
            //string country = txtCountry2.Text;
            //string pritixDB = ConfigurationManager.ConnectionStrings["pritixDB"].ConnectionString;
            //string query = "INSERT INTO Customers (Name, Country) VALUES (@Name, @Country);SELECT SCOPE_IDENTITY();";
            //List<SqlParameter> parameters = new List<SqlParameter>();
            //parameters.Add(new SqlParameter("@Name", name));
            //parameters.Add(new SqlParameter("@Country", country));
            //int customerId = Convert.ToInt32(SqlHelper.ExecuteScalar(pritixDB, CommandType.Text, query, parameters.ToArray()));
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Inserted CustomerId: " + customerId + "');", true);
            //this.BindDataSet();
            //this.BindReader();
        }


    }
}