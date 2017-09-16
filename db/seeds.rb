puts 'delete DB'
Product.destroy_all
Brand.destroy_all
User.destroy_all


puts 'Seeding DB'
a = Brand.create!(name:'F-one')
Product.create(brand:a, gear_type:'kite' ,model:'Bandit', year: 2018, description: "La Bandit repose cette année sur le cumul d’expérience de plus de 600 prototypes que nous avons ridé et testé au cours des 11 dernières années.
Il s’agit sans aucun doute du produit le plus intensément développé actuellement sur le marché.")
Product.create(brand:a, gear_type:'twin tip' ,model:'Trax_HDR', year: 2018, description: "Le shape et la construction de la F-One Trax HRD 2018 en font une des boards les plus performantes et confortables du marché! Petit Bonus, sa technologie Lite Tech (transparence du noyau) lui offre un look d'enfer!")
Product.create(brand:a, gear_type:'surf' ,model:'Slice', year: 2018, description: "Le Surf F-One Slice est le premier surf noseless de la marque! Ce genre de shape existe depuis quelques années maintenant mais la marque a préféré prendre son temps et collaborer avec son team international composé de riders parmis les meilleurs de la planète pour sortir un shape vraiment abouti!")


a = Brand.create!(name:'North')
Product.create(brand:a, gear_type:'kite', model:'Vegas', year: 2018, description: "La Vegas est la reine incontestable du marché des C-shape, elle est l'aile la plus populaire pour le freestyle et le wakestyle choisie par de nombreux riders pro. La Vegas est notamment utilisée par Aaron Hadlow, double champion du King of the Air, ainsi que des riders tels que Lewis Crathern et Lasse Walker lorsque le vent forci et que les loops deviennent énormes. L'aile possède un shape extrêmement rigide et stable qui génère énormément de portance et encore plus de pop. Le véritable secret de la Vegas est le relâchement des lignes qu'elle vous donne après un pop, ce qui permet d'envoyer plus facilement des moves new school et de poser des handle-pass. La maniabilité dynamique et précise de ce C-shape très populaire attire toute une multitude riders. Avec 3 possibilités de montages et de nombreuses options de réglages cette aile peut être personnalisée exactement selon vos préférences. Si vous recherchez le meilleur C-kite du marché, le choix des champions qui n'a pas d'équivalent, choisissez la Vegas!")
Product.create(brand:a, gear_type:'twin tip', model:'Jaime', year: 2018, description: "La North Jaime 2018 est la board emblématique de North en terme de polyvalence freeride/freestyle. Un flex moyen offre du confort et sa carène Quattro V assure une accroche solide. Légéreté accrue en 2018, grâce à un nouveau procédé de fabrication!")

a = Brand.create!(name:'Naish')
Product.create(brand:a, gear_type:'kite', model:'Pivot', year: 2018, description: "Puissance prévisible, sensation de barre directe, la direction intuitive, gros power/depower ne sont que quelques caractéristiques qui font que la Naish Pivot 2018 est l'une des ailes les plus recherchées sur le marché. 

La Naish Pivot 2018 s'adapte parfaitement à un maximum de conditions! Avec son aspect ratio moyen, elle offre une très bonne plage basse, de sauts faciles et d'excellentes performances au près. Dynamique et réactive, elle pivote rapidement et facilement sur un petit axe de rotation avec une augmentation de puissance minimale dans les virages, ce qui offre confort et fluidité dans les vagues et un contrôle accru dans les kiteloops. 
Maintenant construite avec le nouveau spi Quad-Tex de chez Teijin, le spi le plus haut de gamme du marché, la Naish Pivot 2018 est plus vive et plus réactive que jamais. En effet ce tissu plus rigide transfère l'énergie plus vite et plus directement au rider ce qui offre un meilleur contrôle. 

Facile, bien équilibrée et incroyablement polyvalente, il est clair que la Naish Pivot 2018 sera encore une fois un best-seller partout dans le monde.")

a = Brand.create!(name:'Slingshot')
Product.create(brand:a, gear_type:'kite', model:'SST', year: 2018, description: "L'aile Slingshot SST 2018 est l'aile idéale pour le surf grâce à un positionnement plus central dans la fenêtre, un bridage court IRS qui offrent un drift exceptionnel, une réactivité excellente même avec une tension minimale dans les lignes et des transitions rapides dans les vagues.")

User.new(email:'carl.quivron@gmail.com', password:'bestxx', password_confirmation:'bestxx')

puts 'SEED complete'