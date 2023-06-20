module Api

    class AreasController < ApplicationController
      skip_before_action :verify_authenticity_token
      before_action :set_area, only: %i[ show edit update destroy ]
    
      def index
        @areas = Area.all
      end
    
      def show; end
      
      def visible
        @visible = Area.where(visible: true)
        render json: @visible.to_json(), status: :ok
      end

      def new
        @area = Area.new
      end
    
      def edit; end
    
      def create
        @area = Area.new(area_params)
        @area.visible = true
          if @area.save
            render 'api/areas/show', status: :created
          else
            render json: @area.errors, status: :unprocessable_entity
          end
      end
    
      def update
        if @area.update(area_params)
          render 'api/areas/show', status: :ok
        else
          render json: @area.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @area.destroy
        render 'api/areas/show', status: :ok
      end
    
      private
        def set_area
          @area = Area.find(params[:id])
        end
    
        def area_params
          params.require(:area).permit(:area_type, :name, :visible)
        end
    end
    end