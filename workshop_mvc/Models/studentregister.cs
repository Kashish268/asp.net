using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;

namespace workshop_mvc.Models
{
    public class studentregister
    {
        
        [Key] //primary key
        public Guid student_id { get; set; }
        [Required]
        public string student_name { get; set; }
        [Required]
        public string student_branch { get; set; }

        //[Required, NotNull]

        //public int student_rollno { get; set; }


    }
}
