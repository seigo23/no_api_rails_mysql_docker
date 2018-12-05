class SampleController < ApplicationController

  def index
    #render plain: "seigo"
    @msg = "seigo_instance_variable"
    render 'sample/special'
  end

  def list
    @books = Book.all
  end

  def app_var
     render plain: "現在の環境は#{MY_APP['hoge']}で、ロゴのソースは#{MY_APP['logo']['source']}にある"
    # render plain: MY_APP['logo']['source']
    # render plain: "aaa"
  end

end
