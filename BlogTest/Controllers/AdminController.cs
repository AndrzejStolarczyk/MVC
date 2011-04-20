using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BlogTest.Models;

namespace BlogTest.Controllers
{
    public class AdminController : Controller
    {
        AdminRepository db_admin = new AdminRepository();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Dodaj()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Dodaj(Pomocnicza p)
        {
            if (db_admin.insert_post(p))
            {
                ViewData["action"] = "dodano posta";
            }
            else
            {
                ViewData["action"] = "nie dodane posta";
            }
            return View(p);
        }

        public ActionResult Edytuj(int id)
        {
            ViewData["post"] = db_admin.edytuj(id);
            return View(); 
        }

        [HttpPost]
        public ActionResult Edytuj(Post post) 
        {
            ViewData["post"] = post;
            if (db_admin.zapisz_zmiany(post))
            {
                ViewData["alert"] = "zmiany ok";
            }

            else 
            {
                ViewData["alert"] = "zjebało się coś";
            }
            return View();
        }

       


    }
}
