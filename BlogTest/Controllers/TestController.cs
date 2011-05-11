using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BlogTest.Models;
namespace BlogTest.Controllers
{
    [HandleError]
    public class TestController : Controller
    {
        HomeRepository db = new HomeRepository();


        public ActionResult Data(string tytuł, DateTime data)
        {
            ViewData["posty"] = db.PostFromData(data, tytuł);
            return View();
        }

    }
}
