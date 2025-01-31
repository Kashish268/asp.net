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

    }
}
