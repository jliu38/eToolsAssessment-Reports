using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eToolsSystem.Entities.POCOs
{
    //setup POCO class fields
    public class ReportEmployee
    {


        public string Position { get; set; }

        public string Name { get; set; }

        public DateTime Hired { get; set; }

        public DateTime? Release { get; set; }
    }
}
