puts 'delete DB'
Gallery.delete_all
Size.delete_all
Product.destroy_all
Brand.destroy_all
User.destroy_all


puts 'Seeding DB'
carl = User.create!(email:'carl.quivron@gmail.com', password:'bestxx', password_confirmation:'bestxx')

puts 'F-one'
# BRAND
a = Brand.create!(name:'F-one', remote_logo_url: 'http://www.kite-rhuys.fr/upload/site/f-one_logo.jpg', website: 'http://www.f-onekites.com/',description: "F-ONE est une société française spécialisée dans la production et distribution de matériel de kitesurf et de stand-up paddle.
Fondée par Raphaël SALLES en 1989, l’entreprise a continuellement évolué au fil des années et ne cesse de s’agrandir. Depuis plus de 20 ans, cet ancien professionnel de windsurf développe et conçoit des équipements de kitesurf.  Il est un des précurseurs de ce sport en France et dans le monde. Fort de son expertise de la glisse, il développe depuis 2011 la production du stand-up paddle, qui est un sport complémentaire du kitesurf.
Notre mission est de répondre aux attentes de tous les passionnés de la glisse en développant un matériel toujours plus innovant, qui se distingue à la fois par sa sécurité, son confort, sa puissance et maniabilité. ")

# BANDIT
b = Product.create!(brand:a, min_level: 2, programme: 'tout-terrain',video:"<iframe class='embed-responsive-item' src='https://player.vimeo.com/video/230755847?color=00cc99'></iframe>",gear_type:'kite', remote_photo_url: "http://www.kiteboarder-mag.com/media/Guide_Matos/aile_kite/img_17/f_one_2017_bandit_blue_yellow_green_3_4_left.jpg", model:'Bandit', year: 2018, description: "La Bandit repose cette année sur le cumul d’expérience de plus de 600 prototypes que nous avons ridé et testé au cours des 11 dernières années.
Il s’agit sans aucun doute du produit le plus intensément développé actuellement sur le marché.")
b.galleries.create!(remote_photo_url:"https://bayareakitesurf.com/wp/wp-content/uploads/2016/09/BANDIT-orange-green-yellow-3-4-left.png")
b.galleries.create!(remote_photo_url:"https://www.kitesurf.fr/shop/modules/jscomposer/uploads/700822-1473749110.jpg")
b.galleries.create!(remote_photo_url:"https://www.youride.fr/4853-thickbox_default/aile-f-one-bandit-2018.jpg")
b.sizes.create!(size: 4)
b.sizes.create!(size: 5)
b.sizes.create!(size: 6)
b.sizes.create!(size: 7)
b.sizes.create!(size: 8)
b.sizes.create!(size: 9)
b.sizes.create!(size: 10)
b.sizes.create!(size: 11)
b.sizes.create!(size: 12)
b.sizes.create!(size: 14)
b.sizes.create!(size: 17)
b.reviews.create!(user:carl, content:'Super Aile', rating:4)
b.reviews.create!(user:carl, content:"Super session avec ce kite! Je conseil vraiment l'achat", rating:3)

# WTF
b = Product.create!(brand:a, min_level: 3, programme: 'wakestyle',video:"<iframe src='https://player.vimeo.com/video/230755012?color=00cc99' webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>",gear_type:'kite', remote_photo_url: "http://www.side-shore.com/images/produits/thickbox_default/p/66518/wtf-2018-nue-fone.jpg", model:'WTF?!', year: 2018, description: " La WTF!? est un tout nouveau kite F-ONE pour 2018 ; c’est une machine à tricks conçue pour gagner. Même son nom l’indique : Win The Freestyle !")
b.sizes.create!(size: 5)
b.sizes.create!(size: 6)
b.sizes.create!(size: 7)
b.sizes.create!(size: 8)
b.sizes.create!(size: 9)
b.sizes.create!(size: 11)
b.sizes.create!(size: 13)
b.sizes.create!(size: 15)
b.reviews.create!(user:carl, content:'Grosse Session Kiteloop', rating:4)
b.reviews.create!(user:carl, content:'Top Slack !', rating:5)


Product.create!(brand:a, gear_type:'twin tip' ,model:'Trax HDR', year: 2018, description: "Le shape et la construction de la F-One Trax HRD 2018 en font une des boards les plus performantes et confortables du marché! Petit Bonus, sa technologie Lite Tech (transparence du noyau) lui offre un look d'enfer!")
Product.create!(brand:a, gear_type:'surf' ,model:'Slice', year: 2018, description: "Le Surf F-One Slice est le premier surf noseless de la marque! Ce genre de shape existe depuis quelques années maintenant mais la marque a préféré prendre son temps et collaborer avec son team international composé de riders parmis les meilleurs de la planète pour sortir un shape vraiment abouti!")


# a = Brand.create!(name:'North')
# Product.create!(brand:a, gear_type:'kite', model:'Vegas', year: 2018, description: "La Vegas est la reine incontestable du marché des C-shape, elle est l'aile la plus populaire pour le freestyle et le wakestyle choisie par de nombreux riders pro. La Vegas est notamment utilisée par Aaron Hadlow, double champion du King of the Air, ainsi que des riders tels que Lewis Crathern et Lasse Walker lorsque le vent forci et que les loops deviennent énormes. L'aile possède un shape extrêmement rigide et stable qui génère énormément de portance et encore plus de pop. Le véritable secret de la Vegas est le relâchement des lignes qu'elle vous donne après un pop, ce qui permet d'envoyer plus facilement des moves new school et de poser des handle-pass. La maniabilité dynamique et précise de ce C-shape très populaire attire toute une multitude riders. Avec 3 possibilités de montages et de nombreuses options de réglages cette aile peut être personnalisée exactement selon vos préférences. Si vous recherchez le meilleur C-kite du marché, le choix des champions qui n'a pas d'équivalent, choisissez la Vegas!")
# Product.create!(brand:a, gear_type:'twin tip', model:'Jaime', year: 2018, description: "La North Jaime 2018 est la board emblématique de North en terme de polyvalence freeride/freestyle. Un flex moyen offre du confort et sa carène Quattro V assure une accroche solide. Légéreté accrue en 2018, grâce à un nouveau procédé de fabrication!")

# a = Brand.create!(name:'Naish')
# Product.create!(brand:a, gear_type:'kite', model:'Pivot', year: 2018, description: "Puissance prévisible, sensation de barre directe, la direction intuitive, gros power/depower ne sont que quelques caractéristiques qui font que la Naish Pivot 2018 est l'une des ailes les plus recherchées sur le marché. 

# La Naish Pivot 2018 s'adapte parfaitement à un maximum de conditions! Avec son aspect ratio moyen, elle offre une très bonne plage basse, de sauts faciles et d'excellentes performances au près. Dynamique et réactive, elle pivote rapidement et facilement sur un petit axe de rotation avec une augmentation de puissance minimale dans les virages, ce qui offre confort et fluidité dans les vagues et un contrôle accru dans les kiteloops. 
# Maintenant construite avec le nouveau spi Quad-Tex de chez Teijin, le spi le plus haut de gamme du marché, la Naish Pivot 2018 est plus vive et plus réactive que jamais. En effet ce tissu plus rigide transfère l'énergie plus vite et plus directement au rider ce qui offre un meilleur contrôle. 

# Facile, bien équilibrée et incroyablement polyvalente, il est clair que la Naish Pivot 2018 sera encore une fois un best-seller partout dans le monde.")

# a = Brand.create!(name:'Slingshot')
# Product.create!(brand:a, gear_type:'kite', model:'SST', year: 2018, description: "L'aile Slingshot SST 2018 est l'aile idéale pour le surf grâce à un positionnement plus central dans la fenêtre, un bridage court IRS qui offrent un drift exceptionnel, une réactivité excellente même avec une tension minimale dans les lignes et des transitions rapides dans les vagues.")



puts 'SEED complete'