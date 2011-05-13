using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.ComponentModel.DataAnnotations;

namespace BlogTest.Models
{
    [MetadataType(typeof(PostObiektValidate))]
    public class Pomocnicza
    {
        public int id { get; set; }
        public DateTime data_dodania { get; set; }
        public String tytuł { get; set; }
        public String treść { get; set; }
        public bool status { get; set; }
        public DateTime? data_modyfikacji { get; set; }

        public String keywords { get; set; }
        public String description { get; set; }

        public static implicit operator Pomocnicza(Post post)
        {
            Pomocnicza p = new Pomocnicza
            {
                data_dodania = post.data_dodania,
                data_modyfikacji = post.data_modyfikacji,    
                id = post.id,
                status = Convert.ToBoolean(post.status),
                treść = post.treść,
                tytuł = post.tytuł                
            };
         
            return p;
        }
    }

    public partial class Post
    {
        public static implicit operator Post(Pomocnicza pomocnicza) 
        {
            Post p = new Post 
            {
                data_dodania = pomocnicza.data_dodania,
                data_modyfikacji = pomocnicza.data_modyfikacji,
                id = pomocnicza.id,
                status = Convert.ToInt16(pomocnicza.status),
                tytuł = pomocnicza.tytuł,
                treść = pomocnicza.treść
            };

            return p;
        }
    }

    [Bind(Exclude = "id, status, data_dodania")]
    public class PostObiektValidate
    {
        [Required(ErrorMessage = "Pole wymagane")]
        
        public string tytuł { get; set; }


    }
}