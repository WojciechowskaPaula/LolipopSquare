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
                        return RedirectToAction("Index");
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

        [HttpGet]
        public async Task <IActionResult> DeleteRole(string roleId)
        {
            _logger.LogInformation($"action=deleteRole, roleId={roleId}");
            var role = await _roleManager.FindByIdAsync(roleId);
            return View(role);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Delete(string Id)
        {
            _logger.LogInformation($"action=deleteRole, roleId={Id}");
            try
            {
                var role = await _roleManager.FindByIdAsync(Id);
                if(role.Id != null)
                {
                    await _roleManager.DeleteAsync(role);
                    return RedirectToAction("Index");
                }
                else
                {
                    return View("Index");
                }
            }
            catch (Exception ex)
            {
                _logger.LogError($"action=deleteRole, msg='{ex.Message}'", ex);
                return View("Error");
            }
        }
    }

}
   
