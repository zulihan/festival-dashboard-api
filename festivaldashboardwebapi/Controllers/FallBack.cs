﻿using Microsoft.AspNetCore.Mvc;
using System.IO;

namespace FestivalDashboardWebAPI.Controllers
{
    public class FallBack : Controller
    {
        public IActionResult Index()
        {
            return PhysicalFile(Path.Combine(Directory.GetCurrentDirectory(),
                "wwwroot", "index.html"), "text/HTML");
        }
    }
}
