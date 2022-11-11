class ChordsController < ApplicationController
    #/chords/
    def index
        render json: Chord.all, status: :ok
    end

    #/chords/id
    def show
        chord = Chord.find(params[:id])
        render json: chord, status: 200
    end

    #/chords/
    def create
        chord = Chord.create!(chord_params)
        render json: chord, status: :created
    end

    #/chords/id
    def update
        chord = Chord.find(params[:id])
        chord.update(chord_params)
        render json:chord, status: 200
    end

    #/chords/
    def destroy
        chord = Chord.find(params[:id])
        chord.destroy
        render json: {"message": "deleted"}, status: 200
    end

    private
    def chord_params
        params.permit(:root, :note, :qualitytype, :sound, :image)
    end

end