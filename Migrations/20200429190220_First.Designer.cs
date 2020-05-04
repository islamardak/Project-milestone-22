﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using WebApplication2core.Models;

namespace WebApplication2core.Migrations
{
    [DbContext(typeof(ApplicationContext))]
    [Migration("20200429190220_First")]
    partial class First
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.14-servicing-32113")
                .HasAnnotation("Relational:MaxIdentifierLength", 64);

            modelBuilder.Entity("WebApplication2core.Models.Category", b =>
                {
                    b.Property<long>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("name");

                    b.HasKey("id");

                    b.ToTable("Categories");
                });

            modelBuilder.Entity("WebApplication2core.Models.Product", b =>
                {
                    b.Property<long>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<long>("category_id");

                    b.Property<long?>("categoryid");

                    b.Property<string>("content");

                    b.Property<string>("name");

                    b.Property<double>("price");

                    b.HasKey("id");

                    b.HasIndex("categoryid");

                    b.ToTable("Products");
                });

            modelBuilder.Entity("WebApplication2core.Models.Product", b =>
                {
                    b.HasOne("WebApplication2core.Models.Category", "category")
                        .WithMany("products")
                        .HasForeignKey("categoryid");
                });
#pragma warning restore 612, 618
        }
    }
}
