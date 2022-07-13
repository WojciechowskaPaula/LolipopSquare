using Microsoft.AspNetCore.Mvc;

namespace LolipopSquare.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
