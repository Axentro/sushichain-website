component TeamMember {

  property name : String = ""
  property role : String = ""
  property image : String = ""
  property description : String = ""


  fun render : Html {
    <div class="siimple-grid-col siimple-grid-col--6 siimple-grid-col--sm-12">
    <div class="fg">
      <div class="siimple-box-title"><{name}></div>
      <img width="240" height="240" src={image}/>
      <div class="siimple-box-subtitle"><{role}></div>
      <div class="siimple-box-detail"><{description}></div>
    </div>
    </div>
  }

}
