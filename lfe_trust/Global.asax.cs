using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.SessionState;

namespace lfe_trust
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
      new ScriptResourceDefinition
      {
          Path = "https://code.jquery.com/jquery-3.6.0.min.js",
          DebugPath = "https://code.jquery.com/jquery-3.6.0.js"
      });

        }
    }
}