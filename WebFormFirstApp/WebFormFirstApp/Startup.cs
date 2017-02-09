using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebFormFirstApp.Startup))]
namespace WebFormFirstApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
