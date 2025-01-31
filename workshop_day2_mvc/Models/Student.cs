using Microsoft.Data.SqlClient;
using System.Data;

namespace workshop_day2_mvc.Models
{
    public class Student
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string Email { get; set; }

        public int Age { get; set; }

        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=mcv_example;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False");

        public List<Student> getData(string id) {
            List<Student> lstStu = new List<Student>();

            string query = "select*from workshop2_stu";
            if (!string.IsNullOrWhiteSpace(id)) {
                query = "select * from workshop2_stu where Id=" + id;

            }
            SqlDataAdapter apt = new SqlDataAdapter(query,con);
            DataSet ds= new DataSet();
            apt.Fill(ds);
            foreach (DataRow dr in ds.Tables[0].Rows) {
                lstStu.Add(new Student
                {
                    Id = Convert.ToInt32(dr["Id"].ToString()),
                    Name = dr["Name"].ToString(),
                    Email = dr["Email"].ToString(),
                    Age = Convert.ToInt32(dr["Age"].ToString())
                });

            }
            return lstStu;
        }

        public bool insert(Student stu) {
            if (stu.Name != string.Empty && stu.Email != string.Empty && stu.Age > 0) {
                SqlCommand cmd = new SqlCommand("insert into workshop2_stu values(@Name,@Email,@Age)", con);
                cmd.Parameters.AddWithValue("@Name", stu.Name);
                cmd.Parameters.AddWithValue("@Email", stu.Email);
                cmd.Parameters.AddWithValue("@Age", stu.Age);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i >= 1) {
                    return true;
                }

            }
            return false;
        }

        public bool update(Student stu)
        {
            if (stu.Name != string.Empty && stu.Email != string.Empty && stu.Age > 0)
            {
                SqlCommand cmd = new SqlCommand("update workshop2_stu set Name=@Name, Email=@Email, Age=@Age where Id=@Id", con);
                cmd.Parameters.AddWithValue("@Name", stu.Name);
                cmd.Parameters.AddWithValue("@Email", stu.Email);
                cmd.Parameters.AddWithValue("@Age", stu.Age);
                cmd.Parameters.AddWithValue("@Id", stu.Id);
                con.Open();
                int i = cmd.ExecuteNonQuery();
                if (i >= 1)
                {
                    return true;
                }

            }
            return false;
        }

        public bool delete(Student stu)
        {

            SqlCommand cmd = new SqlCommand("delete workshop2_stu where Id=@Id", con);
            cmd.Parameters.AddWithValue("@Id", stu.Id);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i >= 1)
            {
                return true;
            }
            return false;


        }
    }
}

