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
    
    public partial class Q_Sound
    {
        public Q_Sound()
        {
            this.Q_Alert = new HashSet<Q_Alert>();
        }
    
        public int Id { get; set; }
        public int LanguageId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public string Note { get; set; }
        public bool IsDeleted { get; set; }
    
        public virtual ICollection<Q_Alert> Q_Alert { get; set; }
        public virtual Q_Language Q_Language { get; set; }
    }
}
