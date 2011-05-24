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
            ViewData["Msg"] = "Blog Testowy w MVC2";

            List<Post> p = (List<Post>) db.PobierzPosty();

            ViewData["ListaPostów"] = p;

            foreach (Post post in p)
            {
                int suma = db.LiczbaKomentarzyDoPostu(post.id);
                ViewData["Post" + post.id] = suma;
            }

            return View();
        }

        public ActionResult IndexjQuery()
        {
            ViewData["Msg"] = "Blog Testowy w MVC2";

            List<Post> p = (List<Post>)db.PobierzPosty();

            ViewData["ListaPostów"] = p;

            foreach (Post post in p)
            {
                int suma = db.LiczbaKomentarzyDoPostu(post.id);
                ViewData["Post" + post.id] = suma;
            }

            return View();
        }

        public ActionResult IndexTab()
        {
            ViewData["Msg"] = "Blog Testowy w MVC2";

            List<Post> p = (List<Post>)db.PobierzPosty();

            ViewData["ListaPostów"] = p;

            foreach (Post post in p)
            {
                int suma = db.LiczbaKomentarzyDoPostu(post.id);
                ViewData["Post" + post.id] = suma;
            }

            return View();
        }

        [HttpPost]
        public ActionResult Wpis(Post p)
        {
            ViewData["Post"] = db.PobierzPost(p.id);
            if (db.DodajKomentarz(new Komentarze()
            {
                autor = Request.Form["Autor"],
                treść = Request.Form["Komentarz"],
                data_dodania = DateTime.Now,
                id_postu = p.id,
                status = 1
            }))
            {
                ViewData["AkcjaDodaniaKomentarza"] = "Komentarz dodany poprawnie";
            }
            else ViewData["AkcjaDodaniaKomentarza"] = "Wystąpił błąd w trakcie dodawania komentarza";

            ViewData["Komentarze"] = db.PobierzKomentarzeDoPostu(p.id);

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
