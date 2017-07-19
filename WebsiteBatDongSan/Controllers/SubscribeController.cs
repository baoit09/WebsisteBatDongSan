using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web;
using Umbraco.Web.Mvc;

namespace WebsiteBatDongSan.Controllers
{
    public class SubscribeController : SurfaceController
    {
        // GET: Subscribe
        [HttpPost]
        public ActionResult DoSubscribe()
        {
            var rootNode = Umbraco.TypedContentAtRoot().First();
            var subscribe = rootNode.DescendantsOrSelf("subscribe").First();
            var contentService = Services.ContentService;

            var email = Request["email"];
            var person = contentService.CreateContent(email, subscribe.Id, "subscriber");
            contentService.SaveAndPublishWithStatus(person);

            return RedirectToUmbracoPage(rootNode.Id);
        }
    }
}