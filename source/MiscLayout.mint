component MiscLayout {

 property name : String = ""
 property children : Array(Html) = []

 style spacer {
   margin-top: 50px;
 }

 fun socialLink (name : String, url : String, image : String) : Html {
   <div class="pure-u-1-6">
     <a
       class="link"
       href={url}>

       <img src={"assets/images/social-" + image + ".svg"}/>
       <br/>
       <{ name }>

     </a>
   </div>
 }

 fun nav (name : String, url : String, current : Bool) : Html {
   <li class={"pure-menu-item " + klass}>
     <a
       href={url}
       class="pure-menu-link">

       <{ name }>

     </a>
   </li>
 } where {
   klass =
     if (current) {
       "pure-menu-selected"
     } else {
       ""
     }
 }


 fun render : Html {
   <div>
     <div class="header">
       <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
         <a
           class="pure-menu-heading"
           href="/">

           <img src="assets/images/logo.svg"/>

         </a>

         <ul class="pure-menu-list">
           <{ nav("Home", "/", false) }>
           <{ nav("About", "/#about", false) }>
           <{ nav("Team", "/#team", false) }>
           <{ nav("Contact", "/#contact", false) }>
           <{ nav("Blog", "https://blog.sushichain.io", false) }>
           <{ nav("Roadmap", "/roadmap", "roadmap" == name) }>
           <{ nav("Donations", "/donations", "donations" == name) }>
           <{ nav("News", "/news", "news" == name) }>
         </ul>
       </div>
     </div>

     <div::spacer class="content-wrapper">

      <{ children }>

       <div class="footer l-box is-center">
         <div class="pure-g">
           <div class="pure-u-1 pure-u-md-1-3">
             <p class="copyright">
               <{ "© SushiChain 2018. All Rights Reserved." }>
             </p>
           </div>

           <div class="pure-u-1 pure-u-md-1-3">
             <div class="pure-g">
               <{
                 socialLink(
                   "Github",
                   "https://github.com/sushichain",
                   "github")
               }>

               <{
                 socialLink(
                   "Telegram",
                   "https://t.me/sushichainhq",
                   "telegram")
               }>

               <{
                 socialLink(
                   "Twitter",
                   "https://www.twitter.com/sushichainhq",
                   "twitter")
               }>
             </div>
           </div>

           <div class="pure-u-1 pure-u-md-1-3">
             <p>
               <a
                 class="link"
                 href="mailto:info@sushichain.io"
                 target="_top">

                 <{ "info@sushichain.io" }>

               </a>
             </p>
           </div>
         </div>
       </div>
     </div>
   </div>
 }

}
