using System.ComponentModel.DataAnnotations;

namespace AgenciaCRUD.Models
{
    public class Promocao
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string DestinoID { get; set; }
        public int Duracao { get; set; }
        public bool Promo { get; set; }
        public float Preco { get; set; }
    }
}
