class Player
    attr_reader :player, :monthly_cost, :contract_length, :nickname
    def initialize(player, monthly_cost, contract_length)
        @player = player
        @monthly_cost = monthly_cost
        @contract_length = contract_length
        @nickname = nil
    end

    def first_name
        player.split(" ").first
    end

    def last_name
        player.split(" ").last
    end

    def total_cost
        monthly_cost * contract_length
    end

    def nickname!(new_name)
        @nickname = new_name
    end




end