using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_22sep218_Auth.Startup))]
namespace _22sep218_Auth
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
