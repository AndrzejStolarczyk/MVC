using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlogTest.Models
{
    public class HomeRepository
    {
        BazaDanychDataContext db = new BazaDanychDataContext();

        public IEnumerable<Post> get_post()
        {            
            return (from p in db.Posts
                    where p.status == 1
                    orderby p.data_dodania descending
                    select p).ToList<Post>();
        }

        public Post PostFromData(DateTime data, string tytuł) 
        {
            return (from a in db.Posts
                   where a.tytuł == tytuł && a.data_dodania == data
                   select a).ToList()[0];
        }
    }
}