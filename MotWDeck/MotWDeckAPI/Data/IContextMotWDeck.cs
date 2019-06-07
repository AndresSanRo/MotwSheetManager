using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MotWDeckAPI.Data
{
    public interface IContextMotWDeck
    {
        int SaveChanges();
    }
}
