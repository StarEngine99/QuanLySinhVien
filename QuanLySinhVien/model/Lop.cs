namespace QuanLySinhVien.model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Lop")]
    public partial class Lop
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Lop()
        {
            SinhVien = new HashSet<SinhVien>();
        }

        [Key]
        [StringLength(30)]
        public string MaLop { get; set; }

        [Required]
        [StringLength(50)]
        public string TenLop { get; set; }

        [Required]
        [StringLength(20)]
        public string MaKhoa { get; set; }

        public virtual Khoa Khoa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SinhVien> SinhVien { get; set; }
    }
}
