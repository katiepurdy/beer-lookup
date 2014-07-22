require 'rubygems'
require 'bundler/setup'
Bundler.require
require 'sinatra'
require "sinatra/reloader"

set :public_folder, File.join(File.dirname(__FILE__), 'public')

get '/' do
	@query = params[:q]
	erb :index
end