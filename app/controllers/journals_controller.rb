class JournalsController < ApplicationController

    def create 
        new_journal = Journal.new(journal_create_params)
        
        if new_journal.valid?
            new_journal.save
            render json: new_journal, status: :ok
        else
            render json: { error: new_journal.errors.full_messages}
        end
    end

    private

    def journal_create_params
        params.permit(:date, :suggestions, :descriptions)
# if dont have wrap params
        # params.require(:user).permit(:username, :password, :email)
    end

end
