class Article < ApplicationRecord
  def find_for_user
    user = current_user
    article_ids = [user.last_article, user.second_last_article, user.third_last_article]

    matches = [[], [], []]

    best_matches = []
    matches.each do |match|
      match = match.map.with_index { |value, i| [value.abs, i] }
      closest = match.sort_by { |distance, _| distance}.first(5)
      indices = closest.map { |_, i| i}
      best_matches += indices
    end
    Article.where(best_matches.uniq)
  end
end
