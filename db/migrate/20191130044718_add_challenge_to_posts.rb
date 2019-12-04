class AddChallengeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :challenge, foreign_key: true
  end
end


