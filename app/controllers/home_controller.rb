class HomeController < ApplicationController
  def index
    if params[:set_locale]
      redirect_to root_path(:locale => params[:set_locale])
    else
      @currencies = ex_rates
    end
  end

  def ex_rates
    if session[:ex_rates].nil?
      client = Savon.client(wsdl: "http://www.nbrb.by/Services/ExRates.asmx?WSDL")
      response = client.call :ex_rates_daily, message: {"onDate" => Time.now}
      if response.success?
        data = response.to_hash[:ex_rates_daily_response][:ex_rates_daily_result][:diffgram][:new_data_set][:daily_ex_rates_on_date]
        session[:ex_rates] = data.values_at(4, 5, 15)
      end
    else
      session[:ex_rates]
    end
  end

end