using Microsoft.AspNet.Identity;
using ProjectMeowth.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;

namespace ProjectMeowth.Helpers
{
    public static class AccountHelper
    {
        public static bool IsLoggedIn()
        {
            bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            return val1;
        }

        public static String GetUsername()
        {
            string userName = string.Empty;

            if (System.Web.HttpContext.Current != null &&
                System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var usr = HttpContext.Current.User.Identity;
                if (usr != null)
                {
                    userName = usr.Name;
                }
            }

            return userName;
        }

        public static string GetPlayerName(this IIdentity identity)
        {
            if(identity == null)
            {
                throw new ArgumentException("Identity is null!");
            }

            var ci = identity as ClaimsIdentity;
            if(ci != null)
            {
                return ci.FindFirstValue("PlayerName");
            }
            return "Anonymous PlayerName";
        }

        public static string GetTeamName(this IIdentity identity)
        {
            if (identity == null)
            {
                throw new ArgumentException("Identity is null!");
            }

            var ci = identity as ClaimsIdentity;
            if (ci != null)
            {
                return ci.FindFirstValue("TeamName");
            }
            return "Team Rocket?";
        }

        public static int GetGameExperience(this IIdentity identity)
        {
            int exp = -1;

            if (identity == null)
            {
                throw new ArgumentException("Identity is null!");
            }

            var ci = identity as ClaimsIdentity;
            if (ci != null)
            {
                string result = ci.FindFirstValue("Exp");
                int.TryParse(result, out exp);
                return exp;
            }
            return -2;
        }
    }
}