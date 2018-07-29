component NewsItem {

  property title : String = ""
  property description : String = ""
  property date : String = ""

 fun render : Html {
   <div>
   <div><{title}></div>
   <div><{description}></div>
   <div><{date}></div>
   </div>
 }

}
