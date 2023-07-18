require 'mercadopago'

class CheckoutController < ApplicationController
  def create
    # Crear una preferencia de pago
    sdk = Mercadopago::SDK.new(ENV['MERCADOPAGO_ACCESS_TOKEN'])
    
    preference_data = {
      items: [
        {
          title: 'Mi producto',
          quantity: 1,
          currency_id: 'ARS', # o la moneda que corresponda
          unit_price: 75
        }
      ],
      back_urls: {
        success: 'http://www.tu-sitio/success',
        failure: 'http://www.tu-sitio/failure',
        pending: 'http://www.tu-sitio/pending'
      }
    }

    preference_response = sdk.preference.create(preference_data)
    preference = preference_response[:response]

    @preference_id = preference['id']

    render 'checkout/checkout_page' # reemplaza 'checkout/checkout_page' por la vista que corresponda
  end
end
