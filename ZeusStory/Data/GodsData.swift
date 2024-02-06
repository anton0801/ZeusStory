//
//  GodsData.swift
//  ZeusStory
//
//  Created by Anton on 3/2/24.
//

import Foundation

let godsInfo = [
    GodItem(godName: "Zeus", godDescription: """
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Zeus - King of the Gods</title>
<style>
body {
font-family: Arial, sans-serif;
margin: 0;
padding: 20px;
background-color: #000;
color: #fff;
}

.container {
max-width: 800px;
margin: auto;
background-color: #000;
padding: 20px;
border-radius: 8px;
box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
}

h1 {
text-align: center;
}

.attribute {
font-weight: bold;
color: #007bff;
}

.list {
list-style-type: none;
padding: 0;
}

.list li {
margin-bottom: 10px;
transition: transform 0.3s ease;
}

.list li:hover {
transform: scale(1.1);
}

.list li span {
color: #007bff;
}

.info {
margin-top: 20px;
}
</style>
</head>
<body>
<div class="container">
<h1>Zeus - King of the Gods</h1>
<div class="info">
<p><span class="attribute">Name:</span> Zeus (Ζεύς in Greek)</p>
<p><span class="attribute">Attributes:</span></p>
<ul class="list">
  <li><span class="attribute">Titles:</span> King of the Gods, Father of Gods and Men</li>
  <li><span class="attribute">Symbols:</span> Thunderbolt, Eagle, Bull, Oak Tree</li>
</ul>
<p><span class="attribute">Family:</span></p>
<ul class="list">
  <li><span class="attribute">Parents:</span> Cronus (father) and Rhea (mother)</li>
  <li><span class="attribute">Siblings:</span> Hestia, Demeter, Hera, Hades, and Poseidon</li>
  <li><span class="attribute">Spouse:</span> Hera, his sister</li>
  <li><span class="attribute">Children:</span> Numerous, including Athena, Apollo, Artemis, Hermes, Persephone, Dionysus, and many others</li>
</ul>
<p><span class="attribute">Role and Powers:</span></p>
<ul class="list">
  <li>Zeus presides over the sky, lightning, thunder, law, order, and justice.</li>
  <li>He is often depicted as a majestic figure, wielding a thunderbolt which he uses as a weapon to assert his authority and punish those who defy him.</li>
  <li>As the ruler of the gods, Zeus is responsible for maintaining order and justice among both gods and mortals. He oversees the oaths and contracts, ensuring they are upheld.</li>
</ul>
<p><span class="attribute">Mythological Stories:</span></p>
<ul class="list">
  <li>Zeus played a crucial role in the Titanomachy, the war between the Titans and the Olympian gods. He led the Olympian forces to victory, overthrowing his father Cronus and the Titans, thus establishing the reign of the Olympian gods.</li>
  <li>Zeus is known for his numerous love affairs and romantic escapades, often resulting in the birth of demigods and legendary heroes.</li>
  <li>He is also associated with various myths and legends, including his conflicts with other gods, his interactions with mortals, and his interventions in human affairs.</li>
</ul>
<p><span class="attribute">Worship and Cult:</span></p>
<ul class="list">
  <li>Zeus was widely worshipped throughout ancient Greece, with many temples dedicated to him across the Greek world, including the renowned Temple of Zeus at Olympia.</li>
  <li>He was honored through various rituals, sacrifices, and festivals, such as the Olympic Games, which were held in his honor every four years at Olympia.</li>
</ul>
<p><span class="attribute">Legacy:</span></p>
<ul class="list">
  <li>Zeus remains an iconic figure in Western culture, influencing art, literature, and popular culture through the ages.</li>
  <li>His name and attributes have been adapted and referenced in numerous contexts, symbolizing power, authority, and majesty.</li>
</ul>
</div>
</div>
</body>
</html>
""", godImages: ["zeus_image_1", "zeus_image_2"]),
    GodItem(godName: "Hera", godDescription: """
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hera - Queen of the Gods</title>
        <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 20px;
          background-color: #000;
          color: #fff;
        }

        .container {
          max-width: 800px;
          margin: auto;
          background-color: #000;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
        }

        h1 {
          text-align: center;
        }

        .attribute {
          font-weight: bold;
          color: #007bff;
        }

        .list {
          list-style-type: none;
          padding: 0;
        }

        .list li {
          margin-bottom: 10px;
          transition: transform 0.3s ease;
        }

        .list li:hover {
          transform: scale(1.1);
        }

        .list li span {
          color: #007bff;
        }

        .info {
          margin-top: 20px;
        }
        </style>
        </head>
        <body>
        <div class="container">
          <h1>Hera - Queen of the Gods</h1>
          <div class="info">
            <p><span class="attribute">Name:</span> Hera</p>
            <p><span class="attribute">Attributes:</span></p>
            <ul class="list">
              <li><span class="attribute">Titles:</span> Queen of the Gods, Goddess of Marriage and Family</li>
              <li><span class="attribute">Symbols:</span> Peacock, Cow, Pomegranate</li>
            </ul>
            <p><span class="attribute">Family:</span></p>
            <ul class="list">
              <li><span class="attribute">Parents:</span> Cronus (father) and Rhea (mother)</li>
              <li><span class="attribute">Siblings:</span> Hestia, Demeter, Zeus, Hades, and Poseidon</li>
              <li><span class="attribute">Spouse:</span> Zeus, her brother</li>
              <li><span class="attribute">Children:</span> Ares, Hephaestus, Hebe, and Eileithyia</li>
            </ul>
            <p><span class="attribute">Role and Powers:</span></p>
            <ul class="list">
              <li>Hera is the goddess of marriage, women, childbirth, and family.</li>
              <li>She is known for her jealous and vengeful nature, particularly towards Zeus's numerous affairs and illegitimate children.</li>
              <li>As the queen of the gods, Hera is one of the most powerful Olympian deities, wielding authority over marriage, childbirth, and family life.</li>
            </ul>
            <p><span class="attribute">Mythological Stories:</span></p>
            <ul class="list">
              <li>Hera is a central figure in many myths and legends, often depicted as a formidable and influential goddess.</li>
              <li>Her conflicts with Zeus, particularly over his infidelity, are a recurring theme in Greek mythology.</li>
              <li>Despite her vengeful nature, Hera is also associated with protective and nurturing aspects, particularly in her role as the patron goddess of marriage.</li>
            </ul>
            <p><span class="attribute">Worship and Cult:</span></p>
            <ul class="list">
              <li>Hera was worshipped throughout ancient Greece, with temples dedicated to her in various cities.</li>
              <li>Her main sanctuary was the Heraion at Olympia, where the Olympic Games were held in her honor.</li>
            </ul>
            <p><span class="attribute">Legacy:</span></p>
            <ul class="list">
              <li>Hera's influence extends beyond ancient Greece, as she has been referenced in various forms of art, literature, and popular culture throughout history.</li>
              <li>Her symbolism continues to resonate, particularly in the context of marriage and family life.</li>
            </ul>
          </div>
        </div>
        </body>
        </html>
        """, godImages: ["hera_image_1"]),
    GodItem(godName: "Poseidon", godDescription: """
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Poseidon - God of the Sea</title>
        <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 20px;
          background-color: #000;
          color: #fff;
        }

        .container {
          max-width: 800px;
          margin: auto;
          background-color: #000;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
        }

        h1 {
          text-align: center;
        }

        .attribute {
          font-weight: bold;
          color: #007bff;
        }

        .list {
          list-style-type: none;
          padding: 0;
        }

        .list li {
          margin-bottom: 10px;
          transition: transform 0.3s ease;
        }

        .list li:hover {
          transform: scale(1.1);
        }

        .list li span {
          color: #007bff;
        }

        .info {
          margin-top: 20px;
        }
        </style>
        </head>
        <body>
        <div class="container">
          <h1>Poseidon - God of the Sea</h1>
          <div class="info">
            <p><span class="attribute">Name:</span> Poseidon</p>
            <p><span class="attribute">Attributes:</span></p>
            <ul class="list">
              <li><span class="attribute">Titles:</span> God of the Sea, Earthquakes, and Horses</li>
              <li><span class="attribute">Symbols:</span> Trident, Horse, Dolphin, Bull</li>
            </ul>
            <p><span class="attribute">Family:</span></p>
            <ul class="list">
              <li><span class="attribute">Parents:</span> Cronus (father) and Rhea (mother)</li>
              <li><span class="attribute">Siblings:</span> Zeus, Hades, Hera, Demeter, and Hestia</li>
              <li><span class="attribute">Spouse:</span> Amphitrite</li>
              <li><span class="attribute">Children:</span> Many, including Triton, Theseus, and Polyphemus</li>
            </ul>
            <p><span class="attribute">Role and Powers:</span></p>
            <ul class="list">
              <li>Poseidon is the god of the sea, controlling the waters and all sea creatures.</li>
              <li>He is also associated with earthquakes and horses, often depicted riding a chariot pulled by sea horses.</li>
              <li>As one of the twelve Olympian gods, Poseidon wields significant power and influence over the natural world.</li>
            </ul>
            <p><span class="attribute">Mythological Stories:</span></p>
            <ul class="list">
              <li>Poseidon is a central figure in many myths and legends, particularly those involving the sea and maritime adventures.</li>
              <li>He plays a key role in the founding myths of cities and kingdoms, often competing with other gods for supremacy.</li>
              <li>His conflicts with other deities, particularly Athena and Zeus, are a recurring theme in Greek mythology.</li>
            </ul>
            <p><span class="attribute">Worship and Cult:</span></p>
            <ul class="list">
              <li>Poseidon was worshipped throughout ancient Greece, with temples and shrines dedicated to him in coastal regions.</li>
              <li>He was honored through various rituals and festivals, particularly those associated with maritime activities and trade.</li>
            </ul>
            <p><span class="attribute">Legacy:</span></p>
            <ul class="list">
              <li>Poseidon's influence extends beyond ancient Greece, as he continues to be referenced in various forms of art, literature, and popular culture.</li>
              <li>His symbolism as the god of the sea and earthquakes remains potent, representing the unpredictable and uncontrollable forces of nature.</li>
            </ul>
          </div>
        </div>
        </body>
        </html>
        """, godImages: ["poseidon_image_1", "poseidon_image_2"]),
    GodItem(godName: "Athena", godDescription: """
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Athena - Goddess of Wisdom and Warfare</title>
        <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 20px;
          background-color: #000;
          color: #fff;
        }

        .container {
          max-width: 800px;
          margin: auto;
          background-color: #000;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
        }

        h1 {
          text-align: center;
        }

        .attribute {
          font-weight: bold;
          color: #007bff;
        }

        .list {
          list-style-type: none;
          padding: 0;
        }

        .list li {
          margin-bottom: 10px;
          transition: transform 0.3s ease;
        }

        .list li:hover {
          transform: scale(1.1);
        }

        .list li span {
          color: #007bff;
        }

        .info {
          margin-top: 20px;
        }
        </style>
        </head>
        <body>
        <div class="container">
          <h1>Athena - Goddess of Wisdom and Warfare</h1>
          <div class="info">
            <p><span class="attribute">Name:</span> Athena</p>
            <p><span class="attribute">Attributes:</span></p>
            <ul class="list">
              <li><span class="attribute">Titles:</span> Goddess of Wisdom, Warfare, and Crafts</li>
              <li><span class="attribute">Symbols:</span> Owl, Olive Tree, Aegis (shield), Spear</li>
            </ul>
            <p><span class="attribute">Family:</span></p>
            <ul class="list">
              <li><span class="attribute">Parents:</span> Zeus (father) and Metis (mother, swallowed by Zeus)</li>
              <li><span class="attribute">Siblings:</span> None (born fully grown from Zeus's head)</li>
            </ul>
            <p><span class="attribute">Role and Powers:</span></p>
            <ul class="list">
              <li>Athena is the goddess of wisdom, strategy, and tactical warfare.</li>
              <li>She is known for her strategic thinking, intelligence, and prowess in battle.</li>
              <li>As the patroness of Athens, Athena is associated with the city's cultural and intellectual achievements, as well as its military strength.</li>
            </ul>
            <p><span class="attribute">Mythological Stories:</span></p>
            <ul class="list">
              <li>Athena played a central role in many myths and legends, often as a wise counselor and protector of heroes.</li>
              <li>Her rivalry with Poseidon for the patronage of Athens is a famous myth, resulting in the creation of the city's most iconic landmark, the Parthenon.</li>
              <li>Athena is also associated with various legendary heroes, including Perseus, Heracles, and Odysseus, whom she aids and protects on their quests.</li>
            </ul>
            <p><span class="attribute">Worship and Cult:</span></p>
            <ul class="list">
              <li>Athena was widely worshipped throughout ancient Greece, with temples dedicated to her in many cities.</li>
              <li>Her main sanctuary was the Parthenon on the Acropolis of Athens, where the Panathenaic Festival was held in her honor.</li>
            </ul>
            <p><span class="attribute">Legacy:</span></p>
            <ul class="list">
              <li>Athena's influence extends beyond ancient Greece, as she continues to be celebrated as a symbol of wisdom, strength, and civilization.</li>
              <li>Her image and attributes have been adapted and referenced in various forms of art, literature, and popular culture throughout history.</li>
            </ul>
          </div>
        </div>
        </body>
        </html>
        """, godImages: ["athena"]),
    GodItem(godName: "Apollo", godDescription: """
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Apollo - God of the Sun and Music</title>
        <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 20px;
          background-color: #000;
          color: #fff;
        }

        .container {
          max-width: 800px;
          margin: auto;
          background-color: #000;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
        }

        h1 {
          text-align: center;
        }

        .attribute {
          font-weight: bold;
          color: #007bff;
        }

        .list {
          list-style-type: none;
          padding: 0;
        }

        .list li {
          margin-bottom: 10px;
          transition: transform 0.3s ease;
        }

        .list li:hover {
          transform: scale(1.1);
        }

        .list li span {
          color: #007bff;
        }

        .info {
          margin-top: 20px;
        }
        </style>
        </head>
        <body>
        <div class="container">
          <h1>Apollo - God of the Sun and Music</h1>
          <div class="info">
            <p><span class="attribute">Name:</span> Apollo</p>
            <p><span class="attribute">Attributes:</span></p>
            <ul class="list">
              <li><span class="attribute">Titles:</span> God of the Sun, Music, Poetry, Healing, and Prophecy</li>
              <li><span class="attribute">Symbols:</span> Lyre, Laurel Wreath, Sun Chariot, Bow and Arrows</li>
            </ul>
            <p><span class="attribute">Family:</span></p>
            <ul class="list">
              <li><span class="attribute">Parents:</span> Zeus (father) and Leto (mother)</li>
              <li><span class="attribute">Twin Sister:</span> Artemis, the goddess of the hunt and wilderness</li>
            </ul>
            <p><span class="attribute">Role and Powers:</span></p>
            <ul class="list">
              <li>Apollo is associated with various aspects of light, truth, and prophecy.</li>
              <li>He is the god of the sun, driving his chariot across the sky each day to bring light and warmth to the world.</li>
              <li>Apollo is also the god of music, poetry, and the arts, particularly the lyre.</li>
              <li>He is revered as a healer and a protector, as well as a source of inspiration and divine wisdom.</li>
            </ul>
            <p><span class="attribute">Mythological Stories:</span></p>
            <ul class="list">
              <li>Apollo features prominently in many myths and legends, often as a central figure in the affairs of gods and mortals.</li>
              <li>His oracle at Delphi was one of the most important religious sites in ancient Greece, consulted by kings, leaders, and individuals seeking guidance and prophecy.</li>
              <li>He is associated with numerous legendary feats and adventures, including his conflicts with Python, the slaying of the monster Tityos, and his love affairs with mortals and nymphs.</li>
            </ul>
            <p><span class="attribute">Worship and Cult:</span></p>
            <ul class="list">
              <li>Apollo was widely worshipped throughout ancient Greece, with temples and sanctuaries dedicated to him in many cities.</li>
              <li>He was honored through various rituals, festivals, and competitions, particularly the Pythian Games held in his honor at Delphi.</li>
            </ul>
            <p><span class="attribute">Legacy:</span></p>
            <ul class="list">
              <li>Apollo's influence extends beyond ancient Greece, as he continues to be celebrated as a symbol of light, music, and knowledge.</li>
              <li>His image and attributes have been adapted and referenced in various forms of art, literature, and popular culture throughout history.</li>
            </ul>
          </div>
        </div>
        </body>
        </html>
        """, godImages: ["apollo"]),
    GodItem(godName: "Aphrodite", godDescription: """
        <!DOCTYPE html>
        <html lang="en">
        <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Aphrodite - Goddess of Love and Beauty</title>
        <style>
        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 20px;
          background-color: #000;
          color: #fff;
        }

        .container {
          max-width: 800px;
          margin: auto;
          background-color: #000;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
        }

        h1 {
          text-align: center;
        }

        .attribute {
          font-weight: bold;
          color: #007bff;
        }

        .list {
          list-style-type: none;
          padding: 0;
        }

        .list li {
          margin-bottom: 10px;
          transition: transform 0.3s ease;
        }

        .list li:hover {
          transform: scale(1.1);
        }

        .list li span {
          color: #007bff;
        }

        .info {
          margin-top: 20px;
        }
        </style>
        </head>
        <body>
        <div class="container">
          <h1>Aphrodite - Goddess of Love and Beauty</h1>
          <div class="info">
            <p><span class="attribute">Name:</span> Aphrodite</p>
            <p><span class="attribute">Attributes:</span></p>
            <ul class="list">
              <li><span class="attribute">Titles:</span> Goddess of Love, Beauty, Pleasure, and Procreation</li>
              <li><span class="attribute">Symbols:</span> Dove, Rose, Myrtle, Scallop Shell</li>
            </ul>
            <p><span class="attribute">Family:</span></p>
            <ul class="list">
              <li><span class="attribute">Parents:</span> Zeus (father) and Dione (mother)</li>
              <li><span class="attribute">Spouse:</span> Hephaestus, the god of craftsmanship (arranged marriage)</li>
              <li><span class="attribute">Lovers:</span> Ares, Adonis, Anchises, and others</li>
              <li><span class="attribute">Children:</span> Eros (Cupid), Harmonia, Aeneas, and others</li>
            </ul>
            <p><span class="attribute">Role and Powers:</span></p>
            <ul class="list">
              <li>Aphrodite is the embodiment of love, desire, and beauty.</li>
              <li>She possesses the power to inspire passion and desire in both gods and mortals.</li>
              <li>As the goddess of love and beauty, Aphrodite plays a central role in myths and legends involving romantic relationships, seduction, and fertility.</li>
            </ul>
            <p><span class="attribute">Mythological Stories:</span></p>
            <ul class="list">
              <li>Aphrodite is a central figure in many myths and legends, often portrayed as a powerful and irresistible force of attraction.</li>
              <li>Her romantic entanglements with other gods and mortals are a recurring theme in Greek mythology, resulting in numerous love stories and conflicts.</li>
              <li>She is associated with the legendary beauty contest known as the Judgment of Paris, which led to the Trojan War.</li>
            </ul>
            <p><span class="attribute">Worship and Cult:</span></p>
            <ul class="list">
              <li>Aphrodite was worshipped throughout ancient Greece, with temples and shrines dedicated to her in many cities.</li>
              <li>Her main sanctuary was the Aphrodisias in Cyprus, where she was worshipped as the primary deity.</li>
            </ul>
            <p><span class="attribute">Legacy:</span></p>
            <ul class="list">
              <li>Aphrodite's influence extends beyond ancient Greece, as she continues to be celebrated as a symbol of love, beauty, and desire.</li>
              <li>Her image and attributes have been adapted and referenced in various forms of art, literature, and popular culture throughout history.</li>
            </ul>
          </div>
        </div>
        </body>
        </html>
        """, godImages: ["aphrodite"])
]
