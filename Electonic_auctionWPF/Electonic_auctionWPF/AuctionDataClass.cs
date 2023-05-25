using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Electonic_auctionWPF
{
    
        public class User
        {
            public int id { get; set; }
            public string name { get; set; }
            public string email { get; set; }
            public string password { get; set; }
            public string login { get; set; }
            public string telephone { get; set; }
        }
        public class Product
        {
            public int id { get; set; }
            public int id_seller { get; set; }
            public int id_buyer { get; set; }
            public string photo { get; set; }
            public string name { get; set; }
            public string description { get; set; }
            public int price { get; set; }
            public bool amount = true;
            public void isSelled() { amount = false; }
            public string status;
            public void setStatusBroken() { status = "Перебито"; }
            public void setStatusSelling() { status = "Продається"; }
            public void setStatusWaitingConfFromBuyer() { status = "Очікується підтвердження покупця"; }
            public void setStatusWaitingForConf() { status = "Очікує підтвердження"; }
            public void setStatusBetSettled() { status = "Зроблено ставку"; }
        } 
}

