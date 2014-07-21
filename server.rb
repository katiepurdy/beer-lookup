require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader' # quick loading during development

get '/' do
	erb :index
end