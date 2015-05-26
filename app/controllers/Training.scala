package controllers

import play.api.mvc._

object Training extends Controller {

  def list = Action {
    Ok(views.html.index("Your new application is ready."))
  }

}