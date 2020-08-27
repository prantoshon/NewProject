using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebFormTest.Config
{
    public class Connection
    {
      public  SqlConnection con = new SqlConnection("Data Source=DESKTOP-932J4T4\\SQLEXPRESS;Initial Catalog=Test;Integrated Security=True");

       
    }
}