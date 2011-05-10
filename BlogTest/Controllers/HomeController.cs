﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BlogTest.Models;
namespace BlogTest.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        HomeRepository db = new HomeRepository();

        public ActionResult Index()
        {
            ViewData["Msg"] = "Welcome to ASP.NET MVC!";


            ViewData["ListaPostów"] = db.get_post();
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
