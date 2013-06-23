# encoding: UTF-8
require 'json'

social_hash = {
  "Andrew Hyder" =>         { github: "ondrae", twitter: "hackyourcity" },
  "Ariel Kennan" =>         { github: "arielkennan", twitter: "arielmai" },
  "Lou Huang" =>            { github: "louh", twitter: "saikofish" },
  "Ryan Closner" =>         { github: "rclosner", twitter: "rclosner" },
  "Lindsay Ballant" =>      { github: "lballant", twitter: "lindsayballant" },
  "Marcin Wichary" =>       { github: "michary", twitter: "mwichary" },
  "Laura Meixell" =>        { github: "laurameixell", twitter: "lauratypes" },
  "Shaunak Kashyap" =>      { github: "ycombinator", twitter: "shaunak" },
  "Ezra Spier" =>           { github: "ahhrrr", twitter: "ahhrrr" },
  "CJ Bryan" =>             { github: "waltz", twitter: "waltz" },
  "Doneliza Joaquin" =>     { github: "djoaquin", twitter: "donelizasays" },
  "Sheila Dugan" =>         { github: "SheilaLDugan", twitter: "SheilaLD" },
  "Richa Agarwal" =>        { github: "richaagarwal", twitter: "richaaaa" },
  "Jacob Solomon" =>        { github: "lippytak", twitter: "lippytak" },
  "Cris Cristina" =>        { github: "criscristina", twitter: "criscristina" },
  "Marc K. Hébert" =>       { github: "MarcCfA", twitter: "anthromarc" },
  "Andy Hull" =>            { github: "andyhull", twitter: "andyhull3" },
  "Rebecca Ackerman" =>     { github: "rcackerman", twitter: "aka_rca" },
  "Moncef Belyamani" =>     { github: "monfresh", twitter: "monfresh" },
  "Sophia Parafina" =>      { github: "spara", twitter: "spara" },
  "Anselm Bradford" =>      { github: "anselmbradford", twitter: "anselmbradford" },
  "Tamara Manik-Perlman" => { github: "ttmp", twitter: "TamaraMP" },
  "Dave Guarino" =>         { github: "daguar", twitter: "allafarce" },
  "Reed Duecy Gibbs" =>     { github: "rduecyg", twitter: "Open_Urban" },
  "Alan Williams" =>        { github: "alanjosephwilliams", twitter: "alanjosephwilli" },
  "Dan Avery" =>            { github: "danavery", twitter: "danavery" },
  "Katie Lewis" =>          { github: "katielewis", twitter: "klizlewis" }
}

File.open("fellows_social_data.json","w") do |f|
  f.write(social_hash.to_json)
end