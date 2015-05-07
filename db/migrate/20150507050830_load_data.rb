class LoadData < ActiveRecord::Migration
  def up
    # Create initial users.
    down
    rl = User.new(:name => "Rachel Lim")
    rl.save(:validate => false)
    jh = User.new(:name => "Jose Hernandez")
    jh.save(:validate => false)
    hh = User.new(:name => "Helen Hastings")
    hh.save(:validate => false)
    rg = User.new(:name => "Rachel Grau")
    rg.save(:validate => false)
    ml = User.new(:name => "My Lee")
    ml.save(:validate => false)
    nb = User.new(:name => "Natasha Berk")
    nb.save(:validate => false)
    
    # Create initial activities.
    a1 = Activity.new(:name => "Camp Galileo", :cost => "200")
    a1.save(:validate => false)
    a2 = Activity.new(:name => "Archery 101", :cost => "100")
    a2.save(:validate => false)
    a3 = Activity.new(:name => "Club Soccer", :cost => "800")
    a3.save(:validate => false)
    a4 = Activity.new(:name => "Swim team", :cost => "200")
    a4.save(:validate => false)
    a5 = Activity.new(:name => "World Wide Soccer Camp", :cost => "80")
    a5.save(:validate => false)

    # Create initial comments.
    c1 = Comment.new(:text => "Love this team! Great coaches, 
    	great players")
    c1.user = rg
    c1.activity = a3
    c1.save(:validate => false)

    c2 = Comment.new(:text => "My daughter hates swim team.")
    c2.user = ml
    c2.activity = a4
    c2.save(:validate => false)

    c3 = Comment.new(:text => "My son cried every day before swim practice.")
    c3.user = hh
    c3.activity = a4
    c3.save(:validate => false)

    c4 = Comment.new(:text => "YAYYYYY fuuuutbol.")
    c4.user = ml
    c4.activity = a5
    c4.save(:validate => false)

    c5 = Comment.new(:text => "woo woo wooooo.")
    c5.user = rl
    c5.activity = a2
    c5.save(:validate => false)

  end

  def down
      Comment.delete_all
      Activity.delete_all
      User.delete_all
  end
end