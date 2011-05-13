using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogTest.Models
{
    public class HomeRepository
    {
        BazaDanychDataContext db = new BazaDanychDataContext();

        public IEnumerable<Post> PobierzPosty()
        {            
            return (from p in db.Posts
                    where p.status == 1
                    orderby p.data_dodania descending
                    select p).ToList<Post>();
        }

        public Post PobierzPost(int ID) 
        {
            return db.Posts.Single(a => a.id == ID);
        }

        public List<Komentarze> PobierzKomentarzeDoPostu(int ID) 
        {
            return (from k in db.Komentarzes
                    where k.id_postu == ID
                    orderby k.data_dodania descending
                    select k).ToList<Komentarze>();
        }

        public int LiczbaKomentarzyDoPostu(int ID)
        {
            return db.Komentarzes.Where(a => a.id_postu == ID).Count();
        }

        public bool DodajKomentarz(Komentarze k) 
        {
            try
            {
                db.Komentarzes.InsertOnSubmit(k);
                db.SubmitChanges();
                return true;
            }
            catch { return false; }
        }



        public Post PostFromData(DateTime data, string tytuł) 
        {
            return (from a in db.Posts
                   where a.tytuł == tytuł && a.data_dodania == data
                   select a).ToList()[0];
        }
    }
}