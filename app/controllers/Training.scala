package controllers

import play.api.mvc._

object Training extends Controller {

  def list = Action {
    Ok(views.html.index("Test CD pipeline"))
  }

}
