using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using WebApplication2core.Models;

namespace WebApplication2core
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateWebHostBuilder(args).Build().Run();

            //using (ApplicationContext db = new ApplicationContext())
            //{
            //    User user1 = new User { Name = "Arsu", Age = 33 };
            //    User user2 = new User { Name = "Alice", Age = 26 };

            //    db.Users.Add(user1);
            //    db.Users.Add(user2);
            //    db.SaveChanges();
            //    Console.WriteLine("Объекты успешно сохранены");

            //    var users = db.Users.ToList();
            //    Console.WriteLine("Список объектов:");
            //    foreach (User u in users)
            //    {
            //        Console.WriteLine($"{u.Id}.{u.Name} - {u.Age}");
            //    }
            //}
            //Console.Read();

            //using (ApplicationContext db = new ApplicationContext())
            //{
            //    //db.Database.EnsureCreated();
            //    Product product = new Product { name = "birdene", category_id = 1, content = "Birdeneler", price = 10000 };
            //    db.Products.Add(product);
            //    db.SaveChanges();
            //    Console.WriteLine("Объекты успешно сохранены");
            //}
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>();
    }
}
