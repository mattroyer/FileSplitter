hash = [ {name: "Matt", description: "Awesome"}, {name: 'Matt', description: 'Still awesome'}, {name: "Bobby", description: "Meh"} ]

hash.select { |k, v| k[:name] == 'Matt' }.each { |el| puts el[:description] }
