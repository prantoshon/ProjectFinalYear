﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FinalYearProjectDYC.Models.LoginModel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DatabaseDropYourComplainEntities2 : DbContext
    {
        public DatabaseDropYourComplainEntities2()
            : base("name=DatabaseDropYourComplainEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Login> Logins { get; set; }

        public System.Data.Entity.DbSet<FinalYearProjectDYC.Models.ComplainModel.AddComplainInDatabaseTable> AddComplainInDatabaseTables { get; set; }
    }
}
