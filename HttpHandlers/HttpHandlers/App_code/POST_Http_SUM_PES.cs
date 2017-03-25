using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HttpHandlers.App_code
{
    public class POST_Http_SUM_PES : IHttpHandler
    {
        public bool IsReusable { get { return false; } }

        public void ProcessRequest(HttpContext context)
        {
            HttpRequest request = context.Request;
            HttpResponse response = context.Response;

            response.AppendHeader("Access-Control-Allow-Origin", "*");

            response.Write(
                string.Format("Sum {0} + {1} = {2}",
                request.Params.Get("A"),
                request.Params.Get("B"),
                int.Parse(request.Params.Get("A")) + int.Parse(request.Params.Get("B"))));
        }
    }
}