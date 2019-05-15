using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Choco.App_Code
{
    public class XLDL
    {
        public XLDL()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public string strCon = ConfigurationManager.ConnectionStrings["kn"].ConnectionString.ToString();
        public string strConn;

        public DataTable GetData(string lenhSQL)
        {
            SqlConnection sqlCon = new SqlConnection(strCon);
            try
            {
                SqlDataAdapter sqlDa = new SqlDataAdapter(lenhSQL, sqlCon);
                DataTable dt = new DataTable();
                sqlDa.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        public object GetData()
        {
            throw new NotImplementedException();
        }

        public void Execute(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }

        public DataTable GetData(object p)
        {
            throw new NotImplementedException();
        }

        public string GetValue(string lenhSQL)
        {
            using (SqlConnection sqlCon = new SqlConnection(strCon))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand(lenhSQL, sqlCon);
                string value = sqlCmd.ExecuteScalar().ToString();
                sqlCon.Close();
                return (value);
            }
        }
    }
}