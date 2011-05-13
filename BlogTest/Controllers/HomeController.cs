using System;
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

            List<Post> p = (List<Post>) db.PobierzPosty();

            ViewData["ListaPostów"] = p;

            foreach (Post post in p)
            {
                int suma = db.LiczbaKomentarzyDoPostu(post.id);
                ViewData["Post" + post.id] = suma;
            }

            return View();
        }

        public ActionResult Wpis(int ID) 
        {
            ViewData["Post"] = db.PobierzPost(ID);
            ViewData["Komentarze"] = db.PobierzKomentarzeDoPostu(ID);
            return View();
        }

        

        public ActionResult About()
        {
            return View();
        }
    }
}
