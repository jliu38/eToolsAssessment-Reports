using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
#region Additional namespaces
using System.ComponentModel.DataAnnotations.Schema;
#endregion

namespace eToolsSystem.Entities
{
    public class Employee
    {
        public int EmployeeID {get;set;}
	    public string FirstName	{get;set;}
	    public string LastName {get;set;}
	    public DateTime DateHired {get;set;}
	    public DateTime? DateReleased {get;set;}
	    public int PositionID {get;set;}
        public string LoginID { get; set; }
        [NotMapped]
        public string FullName {get {return LastName + ", " + FirstName;} }
        

        //Navidation Properties
        public virtual Position Positions { get; set; }
    }
}
