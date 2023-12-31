# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

categories = [{name:'Produce'}, {name:'Health & Medicine'},
              {name:'Bakery'}, {name:'Frozen'}, {name:'Snacks & Candy'},
              {name:'Personal Care'}, {name:'Meat & Seafood'},
              {name: 'Beverages'}, {name: 'Pets'}
             ]
Category.insert_all(categories)

categories = Category.all

produce_category = categories.select { |category| category.name == "Produce" }[0]["id"]
health_medicine_category = categories.select { |category| category.name == "Health & Medicine" }[0]["id"]
bakery_category = categories.select { |category| category.name == "Bakery" }[0]["id"]
frozen_category = categories.select { |category| category.name == "Frozen" }[0]["id"]
snacks_candy = categories.select { |category| category.name == "Snacks & Candy" }[0]["id"]
personal_care =  categories.select { |category| category.name == "Personal Care" }[0]["id"]
meat_seafood_category = categories.select { |category| category.name == "Meat & Seafood" }[0]["id"]
beverages_category = categories.select { |category| category.name == "Beverages" }[0]["id"]
pets_category = categories.select { |category| category.name == "Pets" }[0]["id"]

# Product seeds
products = [
            {
             name: 'Strawberries', price: 3.69, stock:154, brand: 'Farsk fruits',
             category_id: produce_category,
             img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Strawberries.jpeg',
             description: 'Sweet & succulent. Blitz with low fat yogurt and oats for a super smoothie.'
            },
            {
              name: 'Blueberries', price: 4.41, stock:65, brand: 'Freshened',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Blueberries.jpeg',
              description: 'Blueberries make a delicious snack on their own or with yogurt
                            and a little honey! Naturally high in vitamin C.'
            },
            {
              name: 'Hass Avocado', price: 0.59, stock: 65, brand: 'The Golden',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Hass+Avocado.jpeg',
              description: 'As part of guacamole, in a salad or on a bun, avocados can be used
                            in a wide variety of recipes. In many South American countries,
                            avocados are added to milkshakes, made into juice and are a staple
                            for many dips. Many salads also use chopped up avocados in combination with
                            tomatoes, onions and olives.'
            },
            {
              name: 'Lemon', price: 0.95, stock: 151, brand: 'Fruits Gusto',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Lemon.jpg',
              description: 'Lemons are Ideal for cooking, zesting and drinks.'
            },
            {
              name: 'Red Onion', price:0.44, stock: 652, brand: 'Excellent Vegetable',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Red+Onion.jpeg',
              description: 'Red onions add an extra punch of flavour to any salad.
                            They are best stored in a cool, dry place in order
                            to prolong their shelf life.'
            },
            {
              name: 'Organic Mint', price: 2.53, stock: 64, brand: 'The Golden',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Organic+Mint.jpg',
              description: 'Intense & aromatic, fresh mint is great to use in teas and beverages.'
            },
            {
              name: 'Cantaloupe Melon', price: 1.79, stock: 45, brand: 'Fresh Fresh',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Cantaloupe+Melon.jpeg',
              description: "Satisfy your sweet tooth with a slice of Cantaloupe. This refreshing fruit is a perfect treat on it's own, or served with ice cream. Cantaloupe pieces wrapped in prosciutto are also a familiar antipasto dish that is sure to delight."
            },
            {
              name: 'Del Monte Premium Pineapple', price: 1.41, stock: 574, brand: 'The Golden',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Del+Monte+Premium+Pineapple.jpeg',
              description: 'This Premium Pineapple is a great addition to smoothies,
                            Sweet, Juicy, Rich in vitamins, enzymes and antioxidant'
            },
            {
              name: 'Red Grapefruit', price: 1.53, stock: 564, brand: 'Orchard Pro',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Red+Grapefruit.jpeg',
              description: 'The grapefruit, named after the way it grows in a grape cluster on the tree,
                            is a juicy and tangy fruit that can be enjoyed throughout the year.
                            Peel back the bright yellow and orange rind to reveal a rich,
                            luscious pulp and chockfull of health! Its appetizingly tart flavor delights
                            the palate, and is easy to squeeze into juice.'
            },
            {
              name: 'Yellow (Ataulfo) Mango', price:0.97, stock: 45, brand: 'Juicy vaisai',
              category_id: produce_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Yellow+(Ataulfo)+Mango.jpeg',
              description: 'One of the sweetest varieties of mangos, the Ataulfo has a smooth,
                            creamy flesh, a small thin pit and is delicious on its own,
                            in fruit salads or smoothies.'
            },
            {
              name: 'Suja Immunity Defense Shot with Turmeric & Probiotics', price: 16.9, stock: 645, brand: 'Suja',
              category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Suja+Immunity+Defense+Shot+with+Turmeric+%26+Probiotics.webp',
              description: 'Support your immune health with the small but mighty Suja Organic Cold-Pressed Immunity Defense Shot.
                            Full of plant-based ingredients like ginger, turmeric, echinacea, live probiotics and black pepper,
                            this shot is sure to give you the immunity boost your body needs anytime of the day.
                            Just give it a shake and enjoy the immune supporting benefits.
                            Suja Organic Cold-Pressed Immunity Defense Shot is USDA Certified Organic,
                            non-GMO, Gluten-free, Dairy-free, vegan and high pressure processed (HPP) to maintain nutrients
                            and fresh taste.'
            },
            {
              name: 'Theraflu Severe Cold & Cough, Nighttime, Honey Lemon',
              price: 8.41, stock: 54, brand: 'Theraflu', category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Theraflu+Severe+Cold+%26+Cough%2C+Nighttime%2C+Honey+Lemon.webp',
              description: "Theraflu Nighttime Severe Cold and Cough Hot Liquid Powder Honey Lemon Infused with Chamomile
                            and White Tea Flavors brings the heat to fight your worst cold and cough symptoms with each power-packed dose.
                            It helps fight nasal congestion, cough, body aches, sore throat pain, sinus congestion,
                            sneezing, runny nose, headache, and fever."
            },
            {
              name: 'Tylenol Extra Strength Caplets, Fever Reducer And Pain Reliever, 500 Mg',
              price: 11.69, stock: 65, brand: 'Tylenol', category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Tylenol+Extra+Strength+Caplets%2C+Fever+Reducer+And+Pain+Reliever%2C+500+Mg.webp',
              description: 'Tylenol Extra Strength caplets with 500mg of acetaminophen reduce fever and
                            provide temporary relief of minor aches and pains. From the #1
                            doctor-recommended brand of pain reliever, each caplet contains 500 mg of
                            acetaminophen for effective, extra strength pain relief. Both a fever reducer and pain reliever,
                            it relieves minor aches and pains due to headache, backache, toothache,
                            minor pain of arthritis, the common cold, and premenstrual and menstrual cramps.'
            },
            {
              name: 'Emergen-C Super Orange Vitamin C Dietary Supplement Drink Mix',
              price: 13.29, stock: 0, brand: 'Emergen-C', category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Emergen-C+Super+Orange+Vitamin+C+Dietary+Supplement+Drink+Mix.webp',
              description: 'Emergen-C 1000mg Vitamin C Powder dietary supplement helps you achieve your wellness
                            goals with a fizzy dietary supplement for daily immune support (1).
                            Each vitamin mix serving contains more vitamin C than 10 oranges (2),
                            plus other antioxidants zinc and manganese for immune support (1).
                            These dietary supplements also come with B vitamins for energy support
                            and electrolytes to help replace those lost through perspiration (1).'
            },
            {
              name: 'Ensure Original Nutrition Shake Vanilla Ready-to-Drink Bottles',
              price: 10.59, stock: 454, brand: 'Ensure', category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Ensure+Original+Nutrition+Shake+Vanilla+Ready-to-Drink+Bottles.webp',
              description: 'Ensure Original nutrition shakes with 9g of high-quality protein provide
                            easy and delicious complete, balanced nutrition. Our shakes contain protein,
                            vitamins A and D, zinc, and antioxidants (vitamins C & E) to support immune health.
                            This nutritional drink is suitable for lactose intolerance* and gluten-free. '
            },
            {
              name: 'Publix Latex Gloves, Disposable', price: 13.29, stock: 54, brand: 'Publix',
              category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Publix+Latex+Gloves%2C+Disposable.jpeg',
              description: 'Non-sterile. Not for medical use. Ambidextrous. Made from natural rubber latex. Pre-powdered with USP absorbent dusting powder. www.publix.com. Publix Guarantee: Complete satisfaction. Product of Malaysia.'
            },
            {
              name: 'Microban 24 Hour Disinfectant Sanitizing Spray, Fresh Scent',
              price: 7.75, stock: 545, brand: 'Microban', category_id: health_medicine_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Microban+24+Hour+Disinfectant+Sanitizing+Spray%2C+Fresh+Scent.webp',
              description: 'Microban 24 Hour sanitizing spray keeps killing 99.9% of bacteria** for up to 24 Hours, even after multiple touches*,
                            to support a clean and healthy home. This 3-in-1 cleaner Sanitizes for 24 Hours,
                            Disinfects and Eliminates Odors. Use on high touch hard surface areas like door handles, light switches,
                            remotes and kids’ toys. Let Microban bring you and your family peace of mind
                            when it comes to disinfecting against germs+ and maintaining a healthy home. '
            },
            {
              name: 'Sara Lee Artesano Bakery Bread',
              price: 3.87, stock: 354, brand: 'Sara Lees', category_id: bakery_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Sara+Lee+Artesano+Bakery+Bread.webp',
              description: 'Sara Lees Original Artesano bread offers a delectable, straight from the bakery taste.
                            With its rich flavor and distinctly creamy character, all the flavors you love
                            come together with Artesano bread. Perfect for creating french toast,
                            indulgent grilled cheese, and more, our original recipe elevates everything
                            you create with it. Make incredible avocado toast, sky-high BLTs,
                            elevate your cranberry and walnut chicken salad sandwiches, or make PB&J and
                            cinnamon toast that the kids will ask for. Its always baked without artificial
                            colors, flavors, preservatives or high fructose corn syrup, because we only want
                            the best for your family.'
            },
            {
              name: 'Yellow Corn',
              price: 0.55, stock: 454, brand: 'Fruitsnest', category_id: bakery_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Yellow+Corn.jpeg',
              description: 'Sweet Corn is a great side for any meal, excellent boiled or
                            grilled and served warm with salt and butter.'
            },
            {
              name: 'Publix Bakery Brioche Hamburger Buns',
              price: 2.75, stock: 65, brand: 'Bimbo', category_id: bakery_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Publix+Bakery+Brioche+Hamburger+Buns.jpeg',
              description: 'Your family will love the taste of Hamburger Buns for your burger and sandwich nights.
                            Our buns are low in fat with no cholesterol.'
            },
            {
              name: 'Publix Bakery Cuban Roll',
              price: 2.97, stock: 451, brand: 'Publix', category_id: bakery_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Publix+Bakery+Cuban+Roll.jpeg',
              description: 'Bakery Cuban Roll made free from artificial flavours or colours.'
            },
            {
              name: 'Publix Bakery Chocolate Chip Cookies',
              price: 5.75, stock: 465, brand: 'Publix', category_id: bakery_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Publix+Bakery+Chocolate+Chip+Cookies.jpeg',
              description: 'You’re going to love Publix Bakery Chocolate Chip Cookies!
                            Free from artificial flavours and colours, these sweet treats are speckled
                            with semi-sweet chocolate and baked to perfection. Enjoy with cold milk for a
                            simple and classic treat.'
            },
            {
              name: 'Breyers Ice Cream Homemade Vanilla',
              price: 6.75, stock: 241, brand: 'Breyers', category_id: frozen_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Breyers+Ice+Cream+Homemade+Vanilla.webp',
              description: "Breyers Homemade Vanilla ice cream is thick and smooth like it was just churned.
                            This thick and smooth vanilla ice cream is made with fresh cream, sugar, milk,
                            vanilla, and egg yolks. It's how homemade should taste! Enjoy on its own,
                            or try it with any one of our favorite recipes like Rice Cereal Treat Ice Cream
                            Sandwiches, Chocolate Chip Ice Cream Pies, or even a Banana Split Ice Cream Cake."
            },
            {
              name: 'Eggo Frozen Waffles, Frozen Breakfast, Buttermilk',
              price: 7.75, stock: 54, brand: "Kellogg's", category_id: frozen_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Eggo+Frozen+Waffles%2C+Frozen+Breakfast%2C+Buttermilk.webp',
              description: "Wake up and greet the day with the feel-good taste of Kellogg's Eggo
                            Buttermilk Waffles. Includes one, 29.6-ounce box containing 24 waffles.
                            Crafted with delicious ingredients, our waffles are a perfect balance of crispy,
                            fluffy goodness. Pop these frozen waffles in the toaster or oven for a
                            delightfully crisp texture and the familiar, inviting taste of homemade waffles.
                            These tasty frozen waffles are made with pantry-perfect staples; every serving
                            provides a good source of 9 vitamins and minerals."
            },
            {
              name: 'Breyers Frozen Dairy Dessert Cookies & Cream',
              price: 6.75, stock: 248, brand: 'Breyers', category_id: frozen_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Breyers+Frozen+Dairy+Dessert+Cookies+%26+Cream.webp',
              description: "Breyers vanilla and heaps of crème-filled chocolate cookie pieces? Yes, please!
                            Breyers Cookies Cream Frozen Dairy Dessert combines your love of Breyers vanilla
                            with chocolate cookie pieces. In this delicious frozen treat, rich, creamy
                            vanilla goodness surrounds chunks of chocolate crème-filled cookies.
                            It's the milk and cookie break we know you've been craving! Even better,
                            this delicious frozen dairy dessert is made with 20% more crème-filled chocolate cookie pieces."
            },
            {
              name: 'Red Baron Classic Crust Four Cheese Pizza',
              price: 6.15, stock: 45, brand: 'Red Baron', category_id: frozen_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Red+Baron+Classic+Crust+Four+Cheese+Pizza.webp',
              description: 'RED BARON Classic Crust Four Cheese Pizza – One bite into our four cheese pizza and
                            you know this will be a moment to remember. Savor the mouth-watering taste of
                            zesty tomato sauce and 100% real mozzarella, cheddar, provolone, and parmesan
                            cheese, all piled on top of our Classic Crust that’s not too thick and not too
                            thin with just the right amount of crunch.'
            },
            {
              name: 'Haagen-Dazs Vanilla Milk Chocolate Almond Ice Cream Bars',
              price: 6.31, stock: 41, brand: 'Haagen-Dazs', category_id: frozen_category,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Haagen-Dazs+Vanilla+Milk+Chocolate+Almond+Ice+Cream+Bars.jpeg',
              description: "Haagen Dazs Vanilla Milk Chocolate Almond Ice Cream Bars dip creamy
                            vanilla ice cream in a thick layer of milk chocolate and crunchy roasted
                            almonds for true deliciousness. Each gluten free ice cream bar is made with milk
                            and cream not treated with rBST* for a true Haagen Dazs indulgence.
                            Enjoy these frozen vanilla ice cream bars anytime you want a cold and refreshing
                            frozen snack. Here’s to choosing deliciousness Every. Single. Time. That’s Dazs.
                            *No significant difference has been shown between milk from rBST treated and non-rBST treated cows."
            },
            {
              name: "Ritz Fresh Stacks Original Crackers",
              price: 3.33, stock: 654, brand: 'Ritz', category_id: snacks_candy,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Ritz+Fresh+Stacks+Original+Crackers.webp',
              description: "RITZ Fresh Stacks Original Crackers have a rich, buttery flavor that's perfect
                            for pairing, topping or popping. No matter the occasion, these tasty round
                            crackers make a great snack food, appetizer or quick meal. Keep RITZ snack crackers
                            on your shelf of salty snacks for an easy anytime treat. Each 11.8 ounce box of Ritz
                            Original Crackers contains eight individually wrapped cracker packs. One 11.8 oz box
                            with 8 stacks of RITZ Fresh Stacks Original Crackers."
            },
            {
              name: "Lay's Classic Potato Chips",
              price: 5.09, stock: 145, brand: "Lay's", category_id: snacks_candy,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Lay's+Classic+Potato+Chips.webp",
              description: "Wherever celebrations and good times happen, the LAY'S brand will be there just
                            as it has been for more than 75 years. With flavors almost as rich as our history,
                            we have a chip or crisp flavor guaranteed to bring a smile on your face."
            },
            {
              name: "Hershey's Milk Chocolate, Full Size",
              price: 5.83, stock: 546, brand: "Hershey's", category_id: snacks_candy,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Hershey's+Milk+Chocolate%2C+Full+Size.webp",
              description: "There's happy, and then there's HERSHEY'S happy. Made of the delectable,
                            creamy milk chocolate that's been a classic for decades, HERSHEY'S milk chocolate
                            bars make life more delicious whether they're enjoyed alone or shared with loved
                            ones. These full-size candies are the perfect treat for countless special and everyday
                            occasions. HERSHEY'S full-size milk chocolate candy bars can be used to stuff Christmas
                            stockings, Halloween trick-or-treat bags, Easter baskets and Valentine's Day party favors.
                            Keep a pack on hand for guests and store some in your pantry for convenient snacking when
                            the mood strikes."
            },
            {
              name: "M&M's Peanut Milk Chocolate Candy Family Size",
              price: 7.87, stock: 189, brand: "M&M's", category_id: snacks_candy,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Hershey's+Milk+Chocolate%2C+Full+Size.webp",
              description: "M&M'S Peanut Chocolate Candy is a little nutty, a lot tasty and always full of fun.
                            Enjoy roasted peanuts covered in delicious chocolate and a colorful candy shell.
                            Packaged in a resealable bag to keep the fun contained, this family-size bag of candy
                            is ideal for keeping the pantry stocked for movie night and parties with friends.
                            These colorful chocolate candies make great to-go treats, add-ins for baking and
                            gift baskets. Remember M&M'S Candy for your next event or celebration."
            },
            {
              name: "Orville Redenbacher's Movie Theater Butter Classic Bag",
              price: 7.75, stock: 564, brand: "Orville Redenbacher's", category_id: snacks_candy,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Orville+Redenbacher's+Movie+Theater+Butter+Classic+Bag.webp",
              description: "Orville Redenbacher’s is the only leading brand that uses real butter* and the
                            only leading brand of microwave popcorn with no artificial preservatives,
                            flavors, or dyes in all of our products. Every handful of our delicious Movie
                            Theater Butter Popcorn transports you from your couch to the theater. Orville
                            Redenbacher’s microwave popcorn is made with only high-quality, non-GMO popcorn
                            kernels. Orville Redenbacher’s isn’t just a name."
            },
            {
              name: "Old Spice Men's Antiperspirant & Deodorant Fiji with Palm Tree",
              price: 11.59, stock: 458, brand: 'Old Spice', category_id: personal_care,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Old+Spice+Men's+Antiperspirant+%26+Deodorant+Fiji+with+Palm+Tree.png",
              description: "The Old Spice Fresher collection of scents is all about discovering the freshness
                            of nature, but after you've trekked to the most remote places on earth and you've
                            made it home you'll discover that the freshness was inside of you the whole time
                            because you're already great, you just smell sometimes, but that's okay.
                            The Old Spice Fresher Collection smells like a place where you don't need to
                            wear pants or shoes or say hello to coworkers you don't like at the coffee machine.
                            Old Spice Men's Antiperspirant & Deodorant fights sweat for 48 hours."
            },
            {
              name: "Fixodent Extra Hold Powder Denture Adhesive",
              price: 7.19, stock: 65, brand: 'Fixodent', category_id: personal_care,
              img: 'https://web-items-media.s3.us-east-2.amazonaws.com/Fixodent+Extra+Hold+Powder+Denture+Adhesive.webp',
              description: "Fixodent's easy-to-use Extra Hold Denture Powder Adhesive provides a hold that lasts all day.
                            Use it just once a day for strong hold that lets you laugh, talk, eat, and drink with confidence! Easy Application for a Strong, Long Hold Airtight Seal.
                            Comes in a recyclable carton. From the #1 Dentist Recommended Brand*. Experience Life, Not Dentures. *among dentists that recommend brands of adhesive"
            },
            {
              name: "Crest + Scope Complete Whitening Toothpaste, Minty Fresh",
              price: 3.17, stock: 45, brand: 'Crest', category_id: personal_care,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Crest+%2B+Scope+Complete+Whitening+Toothpaste%2C+Minty+Fresh.webp",
              description: "Get the freshness of Scope in a toothpaste. Crest + Scope Complete Whitening
                            Toothpaste has the benefits of Crest toothpaste with the addition of Scope
                            freshness. Kill millions of bad breath germs* and leave your breath feeling
                            minty and refreshed. Regular brushing with fluoride toothpaste helps prevent
                            tooth decay by slowing the breakdown of enamel and increases the rate of the remineralization process. This toothpaste fights cavities and tartar build-up. This teeth whitening toothpaste gently removes surface stains to help whiten your teeth. *in laboratory tests"
            },
            {
              name: "Dove Body Wash With Pump Deep Moisture",
              price: 13.29, stock: 63, brand: "Dove", category_id: personal_care,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Dove+Body+Wash+With+Pump+Deep+Moisture.webp",
              description: "Looking for a skin cleanser that helps you get soft skin that looks healthy and well-cared for? The #1 dermatologist recommended body wash, Dove Deep Moisture Body Wash gives you instantly soft skin and lasting nourishment after just one shower. Dove body wash is sulfate free with a mild, pH-balanced formula, making it a great body wash for dry skin, unlike typical bath soap or shower gel. This moisturizing body wash uses Dove Moisture Renew Blend, a combination of skin-natural nourishers and plant-based moisturizers. "
            },
            {
              name: "Listerine Cool Mint Antiseptic Mouthwash",
              price: 7.97, stock: 564, brand: 'Listerine', category_id: personal_care,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Listerine+Cool+Mint+Antiseptic+Mouthwash.webp",
              description: "Protect your mouth from germs and get fresh breath with the Listerine Cool Mint Antiseptic Mouthwash. Accepted by the American Dental Association (ADA), this germ-killing mouthwash for bad breath is clinically shown to reduce plaque 52 percent more and reduce gingivitis 21 percent more than brushing and flossing alone. Adding a 30-second rinse of this refreshing mint flavored oral rinse to your morning and evening oral hygiene routines is all it takes to get 24-hour germ protection against those that cause bad breath, plaque, and gingivitis. "
            },
            {
              name: 'BLACK LABEL Center Cut Bacon',
              price: 12.19, stock: 0, brand: 'BLACK LABEL', category_id: meat_seafood_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/BLACK+LABEL+Center+Cut+Bacon.webp",
              description: "Don’t resist it. MAKE IT! HORMEL BLACK LABEL Center Cut Bacon is never the sidekick to any meal. Thick slices that don’t break apart with all the flavor you love but 25% less fat than our regular bacon because of the cut. Our center cut slices mean fat is reduced to 6 grams per serving. We hand cut and trim our quality cuts of meat and use a proprietary brine. Slowly smoked over natural wood to perfection for a complex, savory flavor. "
            },
            {
              name: 'Publix Pork Loin Boneless Chops, Thinly Sliced',
              price: 7.53, stock: 67, brand: 'Publix', category_id: meat_seafood_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Publix+Pork+Loin+Boneless+Chops%2C+Thinly+Sliced.jpeg",
              description: "Natural meat, no added hormones or steroids for growth. Raised without growth promotants (Ractopamine free diet). Taste great in the oven!. All natural (No artificial ingredients. Minimally processed). Family owned. Contains up to 20% marinade of water, natural flavors, sea salt, organic sugar. Smoke flavor added. "
            },
            {
              name: 'Oscar Mayer Bacon',
              price: 10.99, stock: 58, brand: 'Oscar Mayer', category_id: meat_seafood_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Oscar+Mayer+Bacon.webp",
              description: "Everything is better with bacon. Oscar Mayer Naturally Hardwood Smoked Bacon Slices deliver smoky bacon flavor that crisps up in minutes. Naturally smoked with real wood for a premium and delicious flavor, our bacon is made from carefully selected, hand-trimmed cuts of pork."
            },
            {
              name: "Ball Park Bun Size Beef Hot Dogs, Easy Peel Package",
              price: 6.63, stock: 89, brand: 'Ball Park', category_id: meat_seafood_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Ball+Park+Bun+Size+Beef+Hot+Dogs%2C+Easy+Peel+Package.webp",
              description: "Ball Park Hot Dogs are as much a summer American tradition as a trip to the ballpark or fireworks on the 4th of July, so you can enjoy the flavor of summer whenever the mood strikes. Our tender and juicy hot dogs plump when you cook ‘em, and are a staple at everything from backyard BBQs to a game-day tailgate to a quick weeknight dinner."
            },
            {
              name: "TransOcean Imitation Crab, Flake Style",
              price: 4.41, stock: 64, brand: 'TransOcean', category_id: meat_seafood_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/TransOcean+Imitation+Crab%2C+Flake+Style.jpeg",
              description: "TransOcean® Crab Classic Imitation Crab Flake Style. Gluten-Free. AHA Heart Healthy Certified. MSC certified Alaska Pollock. 6g of protein per serving."
            },
            {
              name: "Coca-Cola Coke Fridge Pack",
              price: 8.29, stock: 129, brand: 'Coca-Cola', category_id: beverages_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Coca-Cola+Coke+Fridge+Pack.webp",
              description: "Whatever you call it, nothing compares to the refreshing, crisp taste of Coca-Cola Original Taste, the delicious soda you know and love. Enjoy with friends, on the go or with a meal. Whatever the occasion, wherever you are, Coca-Cola Original Taste makes life’s special moments a little bit better."
            },
            {
              name: "Diet Coke Coke Pack",
              price: 8.29, stock: 154, brand: 'Diet Coke', category_id: beverages_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Diet+Coke+Coke+Pack.webp",
              description: "Crisp, cold and reliable, this is the one and only Diet Coke —your everyday wing (wo)man, your deliciously fizzy go-to companion. This is the kind of sugar-free soda that you want throughout your day. Whether you’re looking for a tasty way start to your day or to refresh your afternoon, you'll never be lost with a Diet Coke."
            },
            {
              name: "Alkaline88 Alkaline Water pH 8.8 (1 gal)",
              price: 3.50, stock: 151, brand: "Alkaline88", category_id: beverages_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Alkaline88+Alkaline+Water+pH+8.8+(1+gal).png",
              description: "Alkaline88 Bottled Alkaline Water Is Purified Water Enhanced With Himalayan Minerals And Electrolytes For Water That Hydrates And Tastes Great. One 3.78 Liter Of Bottled Alkaline Water Has A Ph Level Greater Than Or Equal To 8.8 For Better Tasting Refreshment. Our Alkaline Water Is Packaged In Recyclable Bottles For Your Convenience."
            },
            {
              name: "Evolution Fresh Organic Pure Orange Organic Pure Orange Juice",
              price: 8.99, stock: 65, brand: 'Evolution Fresh', category_id: beverages_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Evolution+Fresh+Organic+Pure+Orange+Organic+Pure+Orange+Juice.png",
              description: "Evolution Fresh Cold Pressed Organic Orange Juice Brightens Your Day With The Energizing Flavor And Immune-boosting Nutrition Of Fresh Citrus. The Oranges Are Cold Pressed At High Pressure To Retain All Of The Valuable Nutrients, So You Get 130% Of Your Daily Vitamin C Requirements In Every 8 Oz. Glass. This Recyclable Bottle Contains 59 Fl. Oz. Of Orange Juice, And Indentations In The Side Of The Jug Make Holding And Pouring Easy."
            },
            {
              name: "Harmless Harvest Organic Coconut Water",
              price: 10.99, stock: 54, brand: 'Harmless Harvest', category_id: beverages_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Harmless+Harvest+Organic+Coconut+Water.png",
              description: "Harmless Harvest Organic Coconut Water Contains Just Organic Coconut Water. Each 32 Fl. Oz. Carton Contains 4 Servings Of About 1 Cup Each. The Servings Are 60 Calories Each. Our Beverage Is Fair Trade Certified, Non-GMO And Contains No Artificial Additives. We Maintain The Integrity Of The Coconut Throughout The Bottling Process."
            },
            {
              name: "Purely Fancy Feast Gravy Wet Cat Food Variety Pack, Seafood Grilled Collection",
              price: 20.19, stock: 254, brand: 'Purely Fancy', category_id: pets_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Purely+Fancy+Feast+Gravy+Wet+Cat+Food+Variety+Pack%2C+Seafood+Grilled+Collection.webp",
              description: "Make mealtime a memorable occasion when you serve Purina Fancy Feast Grilled Seafood Feast Collection wet cat food. Tender cuts of fish and seafood deliver the ocean flavors cats crave, and the tender texture of this soft cat food entices your cat to eat every scrumptious bite. Each recipe features a savory gravy that balances out these mouthwatering entrees, and high-quality ingredients provide an exceptional level of taste. With essential vitamins and minerals to support her overall health in every serving, this gourmet cat food lets you feel good about the meals you serve your discerning cat. Offer up a different recipe at every feeding to keep her interested in what's being put in her dish, and let her delight in the rich flavors. She is sure to love the gourmet flavor combinations, and you can rest easy knowing she's getting 100 percent complete and balanced nutrition for adult cats."
            },
            {
              name: "Good N Fun Kabobs, Triple Flavor, 18 Pack",
              price: 12.19, stock: 54, brand: 'Good N Fun', category_id: pets_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Good+N+Fun+Kabobs%2C+Triple+Flavor%2C+18+Pack.jpeg",
              description: "Calorie Content (Calculated): 3,020 ME kcal/kg (54 ME kcal/treat)."
            },
            {
              name: "Sprouts Chicken & Sweet Potato Fries Dog Treats",
              price: 3.49, stock: 654, brand: 'Sprouts', category_id: pets_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Sprouts+Chicken+%26+Sweet+Potato+Fries+Dog+Treats.png",
              description: "Sprouts Farmers Market Grain Free Chicken And Sweet Potato Fries Dog Snacks Give Man's Best Friend A Good-for-him Snack He Can Sink His Teeth Into. Made From Wholesome Ingredients, Including Real Chicken, Sweet Potatoes And Chickpeas, These Snacks Keep Pets' Tails Wagging With Their Fun French-fry-inspired Shape. Each Treat In This 4.5 Oz. Bag Has 24 Calories."
            },
            {
              name: "Heart to Tail Complete Nutrition Dry Dog Food",
              price: 11.55, stock: 546, brand: 'Heart to Tail', category_id: pets_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Heart+to+Tail+Complete+Nutrition+Dry+Dog+Food.jpg",
              description: "Product information or packaging displayed may not be current or complete. Always refer to the physical product for the most accurate information and warnings. For additional information, contact the retailer or manufacturer. *Actual weight may vary based on seasonality and other factors. Estimated price is approximate and provided only for reference."
            },
            {
              name: "Pedigree Adult Dry Dog Food Roasted Chicken",
              price: 35.99, stock: 54, brand: 'Pedigree', category_id: pets_category,
              img: "https://web-items-media.s3.us-east-2.amazonaws.com/Pedigree+Adult+Dry+Dog+Food+Roasted+Chicken.jpeg",
              description: "Every dog deserves the best… that’s why PEDIGREE Complete Nutrition Dry Dog Food delivers 100% complete and balanced nutrition for your adult dog. It has the antioxidants, vitamins, and minerals they need to help maintain a healthy lifestyle, and in the delicious roasted chicken flavor they love. This tasty dry kibble helps support healthy digestion… Plus, it’s enriched with omega-6 fatty acids to help nourish your dog’s skin and coat. Irresistible in every way, this dry dog food provides whole grains and protein, and was made in the USA with the world’s finest ingredients. It has no artificial flavors, no high fructose corn syrup, and no added sugar. Dogs bring out the good in us. PEDIGREE brings out the good in them. Feed the good."
            },
            # {
            #   name: "",
            #   price: 0, stock: 0, brand: '', category_id: 1,
            #   img: "",
            #   description: ''
            # },
           ]
Product.insert_all(products)