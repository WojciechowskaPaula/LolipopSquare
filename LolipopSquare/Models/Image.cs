﻿namespace LolipopSquare.Models
{
    public class Image
    {
        public int Id { get; set; }
        public string ImageTitle { get; set; }
        public byte[] ImageData { get; set; }
        public Product Product { get; set; }
        public int? ProductId { get; set; }

    }
}
