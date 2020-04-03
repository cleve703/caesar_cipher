require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './caesar_cipher.rb'

get "/" do 
  erb :index, layout: :main
end

get "/action_page" do
  @input_string = params['input_string']
  @char_shift = params['char_shift']
  @output_string = encoder(@input_string, @char_shift)
  erb :show, layout: :main
end