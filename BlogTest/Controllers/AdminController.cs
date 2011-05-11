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

        public ActionResult Edytuj(int id)
        {
            ViewData["post"] = db_admin.Edytuj(id);
            
            return View(); 
        }

        [HttpPost]
        public ActionResult Edytuj(Post post) 
        {
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
