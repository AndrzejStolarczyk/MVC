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
            ViewData["ListaPostów"] = db_admin.ListaPostów();
            return View();
        }

        public ActionResult Dodaj()
        {
            return View();
        }

        public ActionResult Usuń(int ID) 
        {
            if (db_admin.Usuń(ID))
            {
                ViewData["AkcjaUsuwania"] = "Post usunięty pomyślnie";
            }
            else 
            {
                ViewData["AkcjaUsuwania"] = "Wystąpił błąd podczas usuwania posta";
            }
            return View();
        }
        
        [HttpPost]
        public ActionResult Dodaj(Pomocnicza p)
        {
            var checkBox = Request.Form["status"];

            if (checkBox == "false")
                p.status = false;
            else
                p.status = true;

            if (db_admin.Dodaj(p))
            {
                ViewData["AkcjaDodania"] = "Pomyślnie dodano posta.";
            }
            else
            {
                ViewData["AkcjaDodania"] = "Przy dodawaniu nowego posta wystąpił błąd!";
            }
            return View(p);
        }

        public ActionResult Edytuj(int ID)
        {
            ViewData["post"] = db_admin.Edytuj(ID);
            
            return View(); 
        }

        [HttpPost]
        public ActionResult Edytuj(Post post) 
        {
            var checkBox = Request.Form["status"];
            if (checkBox == "false")
                post.status = 0;
            else
                post.status = 1;

            ViewData["post"] = post;
            if (db_admin.Zapisz(post))
            {
                ViewData["AkcjaEdycji"] = "Zmiany zostały pomyślnie zapisane.";
            }

            else 
            {
                ViewData["AkcjaEdycji"] = "Wystąpił błąd przy zapisie zmian!";
            }
            return View();
        }
    }
}
