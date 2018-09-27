using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(A24sep2018.Startup))]
namespace A24sep2018
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
