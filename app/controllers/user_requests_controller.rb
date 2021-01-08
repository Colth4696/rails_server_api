class UserRequestsController < ApplicationController
    def index
        @user_requests = UserRequest.all
        if @user_request
          render json: {
            user_requests: @user_request
          }
        else
          render json: {
            status: 500,
            errors: ['no user_requests found']
          }
        end
    end
    def show
        @user_request = UserRequest.find(params[:id])
       if @user_request
          render json: {
            user_request: @user_request
          }
        else
          render json: {
            status: 500,
            errors: ['user_request not found']
          }
        end
      end
      
      def create
        @user_request = UserRequest.new
        @user_request.user_id = session[:user_id]
        @user_request.request_id = current_request.id
        if @user_request.save
          render json: {
            status: :created,
            user_request: @user_request
          }
        else 
          render json: {
            status: 500,
            errors: @user_request.errors.full_messages
          }
        end
      end
    end