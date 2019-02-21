using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjectMeowth.Startup))]
namespace ProjectMeowth
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
