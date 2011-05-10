using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogTest.Models
{
    public class AdminRepository
    {
        BazaDanychDataContext db = new BazaDanychDataContext();

        public bool zapisz_zmiany(Post new_post) 
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

        public Post edytuj(int id) 
        {
            return db.Posts.Single(a => a.id == id);
        }

        public bool insert_post(Pomocnicza p)
        {
            try
            {
                Post post = new Post();
                post.data_dodania = p.data_dodania;
                
                //post.data_modyfikacji = p.data_modyfikacji;
                post.status = 0;
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