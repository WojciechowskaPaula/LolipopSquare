using LolipopSquare.Models;
using LolipopSquare.Models.ViewModels;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;

namespace LolipopSquare.Controllers
{
    [Authorize(Roles = "Administrator")]
    public class RoleController : Controller
    {
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly ILogger<RoleController> _logger;

        public RoleController(RoleManager<IdentityRole> roleManager, ILogger<RoleController> logger)
        {
            _roleManager = roleManager;
            _logger = logger;
        }

        [HttpGet]
        public IActionResult Index()
        {
            _logger.LogInformation("action=index0");
            try
            {
                var roles = _roleManager.Roles.ToList();
                return View(roles);
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=Index, {ex.Message}", ex);
                return View("Error", new ErrorViewModel());
            }
        }

        [HttpGet]
        public IActionResult Create()
        {
            _logger.LogInformation("action=create");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(ProjectRolesVM projectRoles)
        {
            _logger.LogInformation($"action=create, projectRoles={JsonSerializer.Serialize(projectRoles)}");
            try
            {
                if (ModelState.IsValid)
                {
                    var roleExist = await _roleManager.RoleExistsAsync(projectRoles.RoleName);
                    if (!roleExist)
                    {
                        await _roleManager.CreateAsync(new IdentityRole(projectRoles.RoleName));
                        return View();
                    }
                    else
                    {
                        return RedirectToAction("Index");
                    }
                }
                else
                {
                    return View("Create", projectRoles);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=create, msg='{ex.Message}'", ex);
                return View("Error", new ErrorViewModel());
            }
        }
    }

}
   
