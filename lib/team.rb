class Team 
    attr_reader :name, :city, :roster
    def initialize(name, city)
        @name = name
        @city = city
        @roster = []
    end
    
    def player_count
        roster.length
    end

    def add_player(signed_player)
        @roster << signed_player
    end

    def long_term_players
        roster.find_all do |player|
            player.contract_length > 24
        end
    end

    def short_term_players
        roster.find_all do |player|
            player.contract_length <= 24
        end
    end

    def total_value
        team_value = 0
        roster.each do |player|
            team_value += player.total_cost
        end
        team_value
    end
    
    def details
        team_value = 0
        roster.each do |player|
            team_value += player.total_cost
        end
        {
            "total_value" => team_value,
            "player_count" => roster.length
        }
    end

    def average_cost_of_player
        team_value = 0
        roster.each do |player|
            team_value += player.total_cost
        end
        avop = team_value/roster.length
        avop
        #Doesn't add the commas, tried using sprintf but kept on getting malformed string
    end







end
