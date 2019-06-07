using MotWDeckAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MotWDeckAPI.Repositories
{
    public interface IRepositoryMotWDeck
    {
        List<Playbook> GetPlaybooks();
        Playbook GetPlaybook(int id);
    }
}
