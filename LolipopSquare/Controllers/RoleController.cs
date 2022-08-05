using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;


namespace LolipopSquare.Controllers
{
    [Authorize(Roles = "Administrator")]
    public class RoleController : Controller
    {
        private readonly RoleManager<IdentityRole> _roleManager;

        public RoleController(RoleManager<IdentityRole> roleManager)
        {
            _roleManager = roleManager;
        }

        [HttpGet]
        public IActionResult Index()
        {
            var roles = _roleManager.Roles.ToList();
            return View(roles);
        }

        [HttpGet]
        public IActionResult Create()
        {
           
            return View();
        }  
        
        [HttpPost]
        public async Task <IActionResult> Create(ProjectRolesVM projectRoles)
        {
            var roleExist = await _roleManager.RoleExistsAsync(projectRoles.RoleName);
            if (!roleExist)
            {
                var result = await _roleManager.CreateAsync(new IdentityRole(projectRoles.RoleName));
            }
            return View();
        }



    }
}
