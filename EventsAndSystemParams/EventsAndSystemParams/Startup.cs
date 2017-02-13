using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EventsAndSystemParams.Startup))]
namespace EventsAndSystemParams
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
