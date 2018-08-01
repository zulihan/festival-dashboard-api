﻿// <auto-generated />
using System;
using FestivalDashboardWebAPI.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace FestivalDashboardWebAPI.Migrations
{
    [DbContext(typeof(DataContext))]
    [Migration("20180731144314_ChangedArtistModel")]
    partial class ChangedArtistModel
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.1-rtm-30846");

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.Artist", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ContactEmail");

                    b.Property<string>("ContactName");

                    b.Property<string>("ContactPhone");

                    b.Property<string>("Name");

                    b.Property<int>("OnRoad");

                    b.Property<int>("OnStage");

                    b.Property<string>("PhotoUrl");

                    b.HasKey("Id");

                    b.ToTable("Artists");
                });

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.Day", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ArtistId");

                    b.Property<int>("DayNum");

                    b.HasKey("Id");

                    b.ToTable("Days");
                });

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.GetIn", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ArtistId");

                    b.Property<int>("DayId");

                    b.Property<DateTime?>("End");

                    b.Property<DateTime?>("Start");

                    b.Property<int>("VenueId");

                    b.HasKey("Id");

                    b.ToTable("GetIns");
                });

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.SetUpWings", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ArtistId");

                    b.Property<int>("DayId");

                    b.Property<DateTime?>("End");

                    b.Property<DateTime?>("Start");

                    b.Property<int>("VenueId");

                    b.HasKey("Id");

                    b.ToTable("SetUpWings");
                });

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.Show", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ArtistId");

                    b.Property<int>("DayId");

                    b.Property<DateTime?>("End");

                    b.Property<DateTime?>("Start");

                    b.Property<int>("VenueId");

                    b.HasKey("Id");

                    b.ToTable("Shows");
                });

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.SoundCheck", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ArtistId");

                    b.Property<int>("DayId");

                    b.Property<DateTime?>("End");

                    b.Property<DateTime?>("Start");

                    b.Property<int>("VenueId");

                    b.HasKey("Id");

                    b.ToTable("SoundChecks");
                });

            modelBuilder.Entity("FestivalDashboardWebAPI.Models.Venue", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ArtistId");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Venues");
                });
#pragma warning restore 612, 618
        }
    }
}
