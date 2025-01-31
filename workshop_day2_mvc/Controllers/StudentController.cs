using Microsoft.AspNetCore.Mvc;
using workshop_day2_mvc.Models;

namespace workshop_day2_mvc.Controllers
{
    public class StudentController : Controller
    {
        Student objStudent = new Student();
        public IActionResult Index()
        {
            objStudent = new Student();
            List<Student> lst = objStudent.getData("");
            return View(lst);
        }
        [HttpGet]
        public IActionResult AddStudent() { 
            return View();
        }

        [HttpPost]
        public IActionResult AddStudent(Student stu)
        {
            bool res;
            if (ModelState.IsValid)
            {
                res = objStudent.insert(stu);
                if (res)
                {
                    TempData["msg"] = "Added SuccessFully!!";
                }

                else
                {
                    TempData["msg"] = "Something went wrong!!";

                }
            }
            return View();
        
        }

        [HttpGet]

        public IActionResult EditStudent(string id) {
            List<Student> stu = objStudent.getData(id);
            return View(stu.FirstOrDefault());
        }

        [HttpGet]

        public IActionResult DeleteStudent(string id) {
            List<Student> stu = objStudent.getData(id);
            return View(stu.FirstOrDefault());
        }

        [HttpPost]
        public IActionResult EditStudent(Student stu)
        {
            bool res;
            if (ModelState.IsValid)
            {
                res = objStudent.update(stu);
                if (res)
                {
                    TempData["msg"] = "Update SuccessFully!!";
                }

                else
                {
                    TempData["msg"] = "Something went wrong!!";

                }
            }
            return View();

        }

        [HttpPost]
        public IActionResult DeleteStudent(Student stu)
        {
            bool res;
            if (ModelState.IsValid)
            {
                res = objStudent.delete(stu);
                if (res)
                {
                    TempData["msg"] = "Delete SuccessFully!!";
                }

                else
                {
                    TempData["msg"] = "Something went wrong!!";

                }
            }
            return View();

        }




    }


}
