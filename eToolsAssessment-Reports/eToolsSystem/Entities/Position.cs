using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
#region Additional namespaces
//using System.ComponentModel.DataAnnotation.Schema;
#endregion

namespace eToolsSystem.Entities
{
    public class Position
    {
        public int PositionID { get; set; }
        public string Description { get; set; }

        public virtual ICollection<Employee> Employees { get; set; }
    }
}
