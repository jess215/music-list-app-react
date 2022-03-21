class Api::PerformersController < ApplicationController

    before_action :set_song, except: [:performers_all]
    beffore_action :set_performer, only:[:show, :update, :destroy]
    
    def index
        render json: @song.performers
    end

    def performers_all
        render json: Performer.all
    end

    def show
        render json: @performers
    end

    def create
        performer = @song.performers.new(performer_params)
        if(performer.save)
            render json: performer
        else
            render json: {erros: performer.errors.full_message}, status: 422
        end
    end

    def update
        if(@performer.update(performer_params))
            render json: @performer
        else
            render json: {errors: @performer.errors.full_messages}, status: 422
        end
    end

    def destroy
        render json: @performer.destroy
    end


    private

    def set_song
        @song = Song.find(params[:song_id])
    end

    def set_performer
        @performer = @song.performers.find(params[:id])
    end

    def performer_params
        params.require(:performer).permit(:name, :song)
    end

end
