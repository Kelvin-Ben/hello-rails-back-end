# frozen_string_literal: true

module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        greeting = Message.order('RANDOM()').first
        render json: { message: greeting.content }
      end
    end
  end
end
