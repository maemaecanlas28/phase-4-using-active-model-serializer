# create a movie summary that consisted of the movie's title and the 1st 50 CHARACTER OF ITS DESCRIPTION.

class MovieSummarySerializer < ActiveModel::Serializer
    attributes :summary

    # to use our summary, add a new route to routes.rb
    def summary
        "#{self.object.title} - #{self.object.description[0..49]}..."
    end
end