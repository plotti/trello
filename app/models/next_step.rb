class NextStep < ActiveRecord::Base

    def self.get_next_steps
        Rails.cache.fetch(["trello", "next_steps"], expires_in: 5.minutes) do
            next_steps = []
            Trello::Member.find("thomasplotkowiak").boards.each do |board|
                board.lists.each do |list|
                    next if list.name != "Next Step"
                    list.cards.each do |card|
                        next_steps << {:board => board, :list => list, :card => card, :members => card.members}
                    end
                end
            end
            next_steps
        end
    end


end
