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
        public int status { get; set; }
        public DateTime data_modyfikacji { get; set; }

        public String keywords { get; set; }
        public String description { get; set; }
    }

    [Bind(Exclude = "id, status")]
    public class PostObiektValidate
    {
        [Required(ErrorMessage = "Pole wymagane")]
        public string tytuł { get; set; }


    }
}