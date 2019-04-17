namespace ProjectMeowth.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class GameExpNullable : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.AspNetUsers", "GameExperience", c => c.Int());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.AspNetUsers", "GameExperience", c => c.Int(nullable: false));
        }
    }
}
