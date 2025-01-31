using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace workshop_mvc.Migrations
{
    /// <inheritdoc />
    public partial class student_Migration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "stu_register",
                columns: table => new
                {
                    student_id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    student_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    student_branch = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_stu_register", x => x.student_id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "stu_register");
        }
    }
}
