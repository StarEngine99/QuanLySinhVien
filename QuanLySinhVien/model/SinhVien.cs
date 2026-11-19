namespace QuanLySinhVien.model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SinhVien")]
    public partial class SinhVien
    {
        [Key]
        [StringLength(20)]
        public string MaSV { get; set; }

        [Required]
        [StringLength(100)]
        public string HoTen { get; set; }

        [Column(TypeName = "date")]
        public DateTime NgaySinh { get; set; }

        [Required]
        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(250)]
        public string DiaChi { get; set; }

        [Required]
        [StringLength(30)]
        public string MaLop { get; set; }

        public virtual Lop Lop { get; set; }
    }
}
