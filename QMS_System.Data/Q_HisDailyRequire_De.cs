//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QMS_System.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Q_HisDailyRequire_De
    {
        public Q_HisDailyRequire_De()
        {
            this.Q_HisUserEvaluate = new HashSet<Q_HisUserEvaluate>();
        }
    
        public int Id { get; set; }
        public int HisDailyRequireId { get; set; }
        public int MajorId { get; set; }
        public Nullable<int> UserId { get; set; }
        public Nullable<int> EquipCode { get; set; }
        public Nullable<System.DateTime> ProcessTime { get; set; }
        public Nullable<System.DateTime> EndProcessTime { get; set; }
        public int StatusId { get; set; }
        public bool IsSendSMS { get; set; }
        public string SmsContent { get; set; }
    
        public virtual Q_HisDailyRequire Q_HisDailyRequire { get; set; }
        public virtual Q_Major Q_Major { get; set; }
        public virtual Q_Status Q_Status { get; set; }
        public virtual Q_User Q_User { get; set; }
        public virtual ICollection<Q_HisUserEvaluate> Q_HisUserEvaluate { get; set; }
    }
}
