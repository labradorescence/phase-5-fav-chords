class FavChordsController < ApplicationController

    #/fav_chords/
    def index
        render json: FavChord.all, status: :ok
    end

    #/fav_chords/
    def create
        favchord = FavChord.create!(fav_chord_params)
        render json: user, status: :created
    end

    #/fav_chords/id
    def show
        favchord = FavChord.find(params[:id])
        render json: favchord, status: 200
    end

    #/fav_chords/id
    def update
        favchord = FavChord.find(params[:id])
        favchord.update(fav_chord_params)
        render json:favchord, status: 200
    end

    #/favchords/
    def destroy
        favchord = FavChord.find(params[:id])
        favchord.destroy
        render json: {"message": "deleted"}, status: 200
    end

    private
    def fav_chord_params
        params.permit(:user_id, :chord_id)
    end
end