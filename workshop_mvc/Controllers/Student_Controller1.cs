using Microsoft.AspNetCore.Mvc;
using workshop_mvc.Data;
using workshop_mvc.Models;

namespace workshop_mvc.Controllers
{
    public class Student_Controller1 : Controller
    {
        //creating object studentregisterdbcontext

        private studentregisterdbcontext s1;

        public Student_Controller1(studentregisterdbcontext s1)
        {
            this.s1 = s1;
        }

        [HttpGet]

        public IActionResult Index() {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(Models.studentregister register)
        {
            IEnumerable<Models.studentregister> reg = s1.stu_register;
            s1.stu_register.Add(register);
            s1.SaveChanges();
            return RedirectToAction("Index");

        }


    }
}

