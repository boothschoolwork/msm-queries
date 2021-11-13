Rails.application.routes.draw do

  get("/directors/eldest",{ :controller => "directors", :action => "wisest" })

  get("/directors/youngest",{ :controller => "directors", :action => "yyy" })

  get("/directors/:an_id",{ :controller => "directors", :action => "director_details" })


  get("/", { :controller => "application", :action => "homepage" })


  get("/directors",{ :controller => "directors", :action => "index" })



  get("/actors",{ :controller => "directors", :action => "act" })
  get("/actors/:a_id",{ :controller => "directors", :action => "adetail" })

  get("/movies",{ :controller => "directors", :action => "mov" })
  get("/movies/:m_id",{ :controller => "directors", :action => "mdetail" })
end
