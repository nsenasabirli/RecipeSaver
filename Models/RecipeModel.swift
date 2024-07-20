//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by N Sena Sabırlı on 11.07.2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Appetizer"
    case main = "Main"
    case side = "Side"
    case desset = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Creamy Carrot Soup",
            image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/98892/Creamy-Carrot-Soup-for-Wordpress-360x270-c.jpg",
            description: "A velvety carrot soup with rich cashew cream, pomegranate seeds, and chopped parsley.",
            ingredients: "Cashew nuts, Carrot, Onion, Garlic, Pomegranate seeds, Fresh parsley, Olive oil, Salt, Pepper",
            directions: "Cook the carrots and onion in olive oil until tender. Blend with cashew nuts and seasoning until smooth. Serve with pomegranate seeds and parsley.",
            category: "Soup",
            datePublished: "2019-11-11",
            url:"https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-soup/"
        ),
        Recipe(
            name: "Kale, Apple, and Quinoa Salad",
            image:"https://www.forksoverknives.com/wp-content/uploads/fly-images/98341/Kale-Apple-Quinoa-Salad-wordpress-360x270-c.jpg",
            description: "A colorful salad filled with the flavors of fall ingredients like apples, kale, and quinoa.",
            ingredients: "Kale, Apple, Quinoa, Lemon juice, Dijon mustard, Maple syrup, Salt, Pepper",
            directions: "Combine cooked quinoa, chopped kale, and diced apple. Dress with a mixture of lemon juice, Dijon mustard, and maple syrup.",
            category: "Salad",
            datePublished: "2019-10-21",
            url:"https://www.forksoverknives.com/recipes/vegan-salads/kale-apple-quinoa-salad/"
        ),
        Recipe(
            name: "Moroccan Butternut Squash and Chickpea Stew",
            image:"https://www.forksoverknives.com/uploads/Moroccan-Stew.jpg?auto=webp",
            description: "A fragrant and sweet stew with butternut squash and chickpeas.",
            ingredients: "Butternut squash, Chickpeas, Onion, Garlic, Ginger, Cinnamon, Cumin, Tomatoes, Raisins, Fresh cilantro",
            directions: "Cook the onion, garlic, and ginger until soft. Add the spices, tomatoes, butternut squash, and chickpeas. Simmer until the squash is tender.",
            category: "Stew",
            datePublished: "2019-09-30",
            url:"https://www.forksoverknives.com/recipes/vegan-soups-stews/moroccan-butternut-squash-chickpea-stew/"
        ),
        Recipe(
            name: "Butternut Squash Mac and Cheese with Broccoli",
            image:"https://www.forksoverknives.com/uploads/butternut-broccoli-mac-and-cheese-wordpress.jpg?auto=webp",
            description: "A simple and creamy mac and cheese with butternut squash and broccoli.",
            ingredients: "Butternut squash, Broccoli, Pasta, Nutritional yeast, Garlic powder, Onion powder, Salt, Pepper",
            directions: "Cook the pasta and broccoli. Blend cooked butternut squash with nutritional yeast and seasonings to make the cheese sauce. Combine with pasta and broccoli.",
            category: "Pasta",
            datePublished: "2020-01-15",
            url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/butternut-squash-mac-cheese-broccoli/"
        ),
        Recipe(
            name: "Lemon Broccoli Rotini",
            image:"https://www.forksoverknives.com/uploads/Lemon-broccoli-rotini-for-wordpress-scaled.jpg?auto=webp&width=2000&height=829",
            description: "A one-pot pasta dish with lemon zest, mushrooms, garlic, and onion.",
            ingredients: "Broccoli, Rotini pasta, Lemon zest, Mushrooms, Garlic, Onion, Olive oil, Salt, Pepper",
            directions: "Cook the pasta and broccoli in the same pot. Sauté the mushrooms, garlic, and onion in olive oil. Combine with pasta, broccoli, and lemon zest.",
            category: "Pasta",
            datePublished: "2020-02-10",
            url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/lemon-broccoli-rotini/"
        ),
        Recipe(
            name: "Budget-Friendly Lentil Bolognese",
            image:"https://www.forksoverknives.com/uploads/lentil-bolognese-lindsay-moe-1-e1499903427641.jpg?auto=webp",
            description: "A hearty tomato sauce with lentils, perfect for pairing with greens and avocado.",
            ingredients: "Lentils, Tomatoes, Onion, Garlic, Carrot, Celery, Olive oil, Salt, Pepper",
            directions: "Sauté the onion, garlic, carrot, and celery in olive oil. Add tomatoes and lentils. Simmer until the lentils are tender.",
            category: "Pasta",
            datePublished: "2019-12-05",
            url:"https://www.forksoverknives.com/recipes/vegan-pasta-noodles/budget-friendly-lentil-bolognese/"
        ),
        Recipe(
            name: "Simple Vegan Pita Pizzas",
            image:"https://www.forksoverknives.com/uploads/pita_pizzas_01_EVI_WP.jpg?auto=webp",
            description: "Mediterranean-inspired pita pizzas that are quick and easy to make.",
            ingredients: "Whole wheat pita bread, Tomato sauce, Spinach, Mushrooms, Red onion, Bell pepper, Olive oil, Oregano, Basil",
            directions: "Spread tomato sauce on pita bread. Top with spinach, mushrooms, red onion, and bell pepper. Bake until the veggies are tender.",
            category: "Pizza",
            datePublished: "2020-06-02",
            url:"https://www.forksoverknives.com/recipes/vegan-pizza/simple-vegan-pita-pizzas/"
        ),
        Recipe(
            name: "Sweet Potato, Pear, and Blueberry Flatbreads",
            image:"https://www.forksoverknives.com/uploads/Sweet-Potato-Pear-and-Blueberry-Flatbreads-for-wordpress.jpg?auto=webp",
            description: "Fruity flatbreads with sweet potato, pear, and blueberry on a homemade pizza dough.",
            ingredients: "Sweet potato, Pear, Blueberries, Whole wheat flour, Olive oil, Salt, Pepper",
            directions: "Bake the sweet potato until tender. Roll out the dough, top with sweet potato slices, pear slices, and blueberries. Bake until the crust is golden.",
            category: "Pizza",
            datePublished: "2020-07-15",
            url:"https://www.forksoverknives.com/recipes/vegan-pizza/sweet-potato-pear-blueberry-flatbreads/"
        ),
        Recipe(
            name: "Garlic Hash Browns with Kale",
            image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCpsmXErBWzfmbFKgOyDuqbMX1nU6Lr1B4gQ&s",
            description: "Crispy, oil-free hash browns with a side of steamed kale or a green salad.",
            ingredients: "Potatoes, Kale, Garlic, Olive oil, Salt, Pepper",
            directions: "Grate the potatoes and cook in a non-stick pan until crispy. Sauté the garlic and kale in olive oil.",
            category: "Breakfast",
            datePublished: "2020-08-20",
            url:"https://www.forksoverknives.com/recipes/vegan-breakfast/garlic-hash-browns-kale/"
        ),
        Recipe(
            name: "Quick Black Bean Tostadas",
            image:"https://www.forksoverknives.com/uploads/Wordpress-Quick-Black-Bean-Tostadas.jpg?auto=webp&width=2000&height=829",
            description: "Toasted tortillas with black beans and fresh vegetables for a light meal.",
            ingredients: "Black beans, Corn tortillas, Tomato, Lettuce, Avocado, Lime juice, Salt, Pepper",
            directions: "Toast the tortillas. Top with mashed black beans, chopped tomato, lettuce, and avocado. Drizzle with lime juice.",
            category: "Mexican",
            datePublished: "2020-09-25",
            url:"https://www.forksoverknives.com/recipes/vegan-mexican/quick-black-bean-tostadas/"
        )
    ]
}
