class Admin::PreferencesController < ApplicationController

    def index
        if Preference.first
            @preference = Preferences.first
        end
    end

    def new
        @preference = Preference.new
    end

    def create
        p = Preference.first.update(pref_params)
        p.save
    end

    private

    def pref_params
        params.require(:preferences).permit(:allow_create_artists, :allow_create_songs)
    end

end