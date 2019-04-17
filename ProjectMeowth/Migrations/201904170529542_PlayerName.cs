namespace ProjectMeowth.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PlayerName : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "PlayerName", c => c.String());
            AddColumn("dbo.AspNetUsers", "Team", c => c.String());
            AddColumn("dbo.AspNetUsers", "GameExperience", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "GameExperience");
            DropColumn("dbo.AspNetUsers", "Team");
            DropColumn("dbo.AspNetUsers", "PlayerName");
        }
    }
}
