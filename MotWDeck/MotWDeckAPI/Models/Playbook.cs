using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MotWDeckAPI.Models
{
    [Table("PLAYBOOKS")]
    public class Playbook
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        [Column("ID")]
        public int ID { get; set; }
        [Column("TITLE")]
        public String Title { get; set; }
        [Column("LEGEND")]
        public String Legend { get; set; }
    }
}
