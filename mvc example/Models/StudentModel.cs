using Microsoft.Data.SqlClient;
using System.ComponentModel.DataAnnotations;

namespace mvc_example.Models
{
    public class StudentModel
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Please Enter Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Please enter address")]
        public string Address { get; set; }

        [Required(ErrorMessage = "Please enter Mobile No")]
        public int Mo_No { get; set; }

        [Required(ErrorMessage = "Please enter branch")]
        public string Branch { get; set; }

        [Required(ErrorMessage = "Please enter your semester")]
        public int Sem { get; set; }

        [Required(ErrorMessage = "Please select your semester")]
        public string Result { get; set; }

        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=mcv_example;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False");

        public List<StudentModel> getData(string Id) {
            List<StudentModel> lst = new List<StudentModel>();
            string query = "select*from Student";
            if (!string.IsNullOrWhiteSpace(Id)) {
                query = "select*fro Student where Id=" + Id;
            }


         }

        public bool insert(StudentModel stu)
        {
            if (stu.Name != String.Empty && stu.Address != String.Empty && stu.Mo_No > 0 && stu.Branch != String.Empty && stu.Sem > 0 && stu.Result != String.Empty)
            {
                SqlCommand cmd = new SqlCommand("insert into Student values(@Name, @Address, @Mo_No, @Branch, @Sem, @Result)", con);
                cmd.Parameters.AddWithValue("@Name", stu.Name);
                cmd.Parameters.AddWithValue("@Address", stu.Address);
                cmd.Parameters.AddWithValue("@Mo_No", Mo_No);
                cmd.Parameters.AddWithValue("Branch", Branch);
                cmd.Parameters.AddWithValue("Sem", Sem);
                cmd.Parameters.AddWithValue("Result", Result);

                int i = cmd.ExecuteNonQuery();

                if (i >= 1)
                {
                    return true;
                }
            }
            return false;

        }


        public bool update(StudentModel stu)
        {
            if (stu.Name != String.Empty && stu.Address != String.Empty && stu.Mo_No > 0 && stu.Branch != String.Empty && stu.Sem > 0 && stu.Result != String.Empty)
            {
                SqlCommand cmd = new SqlCommand("update into Student set Name = @Name, Address=@Address, Mo_No=@Mo_No, Branch=@Branch, Sem=@Sem, Result=@Result where Id=@Id)", con);
                cmd.Parameters.AddWithValue("@Id", stu.Id);
                cmd.Parameters.AddWithValue("@Name", stu.Name);
                cmd.Parameters.AddWithValue("@Address", stu.Address);
                cmd.Parameters.AddWithValue("@Mo_No", Mo_No);
                cmd.Parameters.AddWithValue("Branch", Branch);
                cmd.Parameters.AddWithValue("Sem", Sem);
                cmd.Parameters.AddWithValue("Result", Result);
                con.Open();
                int i = cmd.ExecuteNonQuery();

                if (i >= 1)
                {
                    return true;
                }
            }
            return false;

        }

    }
}
