﻿using System.ComponentModel.DataAnnotations;

namespace AgenciaCRUD.Models
{
    public class Destino
    {
        [Key]
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Cidade { get; set; }
        public string Estado { get; set; }
        public string Descricao { get; set; }
    }
}
