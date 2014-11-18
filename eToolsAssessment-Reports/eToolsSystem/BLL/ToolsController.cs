using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel;
using eToolsSystem.Entities;
using eToolsSystem.Entities.POCOs;
using eToolsSystem.DAL;
#endregion

namespace eToolsSystem.BLL
{
    [DataObject]
    public class ToolsController
    {
        #region Position List
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Position> Positions_List()
        {
            using (ToolsContext context = new ToolsContext())
            {
                return context.Positions.ToList();
            }
        }


        #endregion

        #region Assessment Report Linq

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<ReportEmployee>Employee_byPositionReport(int positionid)
        {
            if (positionid == 0)
            {
                using (var context = new ToolsContext())
                {
                    var results = from cat in context.Employees
                                  orderby cat.Positions.Description
                                  select new ReportEmployee()
                                  {
                                      Position = cat.Positions.Description,
                                      Name = cat.LastName + " " + cat.FirstName,
                                      Hired = cat.DateHired,
                                      Release = cat.DateReleased,
                                  };

                    return results.ToList();
                }
            }
            else
            {
                using (var context = new ToolsContext())
                {
                    var results = from cat in context.Employees
                                  orderby cat.Positions.Description
                                  where cat.Positions.PositionID == positionid
                                  select new ReportEmployee()
                                  {
                                      Position = cat.Positions.Description,
                                      Name = cat.LastName + " " + cat.FirstName,
                                      Hired = cat.DateHired,
                                      Release = cat.DateReleased,
                                  };

                    return results.ToList();
                }
            }
            
        }
        #endregion


    }
}
