using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MotWDeckAPI.Models;
using MotWDeckAPI.Repositories;

namespace MotWDeckAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PlaybookController : ControllerBase
    {
        RepositoryMotWDeck Repo;
        public PlaybookController(RepositoryMotWDeck Repo)
        {
            this.Repo = Repo;
        }
        [HttpGet]
        public List<Playbook> Get()
        {
            return Repo.GetPlaybooks();
        }
        [HttpGet]
        [Route("{id}")]
        public Playbook Get(String id)
        {
            return Repo.GetPlaybook(int.Parse(id));
        }
    }
}