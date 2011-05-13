using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogTest.Models
{
    public class AdminRepository
    {
        BazaDanychDataContext db = new BazaDanychDataContext();

        public List<Post> ListaPostów()
        {
            return db.Posts.Select(a => a).ToList();
        }

        public bool Usuń(int ID)
        {
            try
            {
                db.Tagis.DeleteOnSubmit(db.Tagis.Single(a => a.id_postu == ID));
                db.Posts.DeleteOnSubmit(db.Posts.Single(a => a.id == ID));
                
                db.SubmitChanges();
                return true;
            }
            catch { return false; }
        }

        public bool Zapisz(Post new_post) 
        {
            try
            {
                Post post = db.Posts.Single(p => p.id == new_post.id);
                post.tytuł = new_post.tytuł;
                post.treść = new_post.treść;
                post.status = new_post.status;
                post.data_modyfikacji = DateTime.Now;

                db.SubmitChanges();
                return true;
            }

            catch { return false; }
        }

        public Post Edytuj(int id) 
        {
            return db.Posts.Single(a => a.id == id);
        }

        public bool Dodaj(Pomocnicza p)
        {
            try
            {
                Post post = new Post();
                if (p.data_dodania == Convert.ToDateTime("0001-01-01 00:00:00"))
                {
                    post.data_dodania = DateTime.Now;
                    p.data_dodania = post.data_dodania;
                }

                else
                    post.data_dodania = p.data_dodania;
                
                //post.data_modyfikacji = p.data_modyfikacji;

                post.status = Convert.ToInt16(p.status);
                post.treść = p.treść;
                post.tytuł = p.tytuł;

                db.Posts.InsertOnSubmit(post);
                db.SubmitChanges();

                Tagi tagi = new Tagi();
                tagi.id_postu = post.id;
                tagi.keywords = p.keywords;
                tagi.desc = p.description;

                db.Tagis.InsertOnSubmit(tagi);
                db.SubmitChanges();

                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}