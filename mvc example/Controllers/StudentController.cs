using Microsoft.AspNetCore.Mvc;

namespace mvc_example.Controllers
{
    public class StudentController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Student_view()
        {
            return View();
        }
    }
}
