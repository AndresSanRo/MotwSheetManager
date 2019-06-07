using Microsoft.EntityFrameworkCore;
using MotWDeckAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MotWDeckAPI.Data
{
    public interface IContextMotWDeck
    {
        DbSet<Playbook> Playbooks { get; set; }
        int SaveChanges();
    }
}
