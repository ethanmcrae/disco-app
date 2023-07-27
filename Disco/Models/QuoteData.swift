//
//  QuoteData.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import Foundation

enum QuoteCategory: String, CaseIterable {
    case Passion
    case Work
    case Belief
    case Confidence
    case Life
    case Success
    case Love
    case Happiness
    case Wisdom
    case Strength
    case Change
    case Friendship
    case Family
    case Adventure
    case Dreams
    case Patience
    case Opportunity
    case Motivation
    case Courage
    case Determination
    case Growth
    case Perseverance
    case Morality
    case Challenge
    case Mindfulness
    case Journey
    case Experience
    case Meaningfulness
    case Goal
    case Regret
    case Knowledge
    case Fear
    case Beginning
}

struct QuoteData {
    let quotes: [Quote] = [
        Quote(id: 1, text: "The only way to do great work is to love what you do.", categories: [QuoteCategory.Work.rawValue, QuoteCategory.Passion.rawValue]),
        Quote(id: 2, text: "Believe you can and you're halfway there.", categories: [QuoteCategory.Belief.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 3, text: "Life is what happens when you're busy making other plans.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Adventure.rawValue]),
        Quote(id: 4, text: "Success usually comes to those who are too busy to be looking for it.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Work.rawValue]),
        Quote(id: 5, text: "All you need is love.", categories: [QuoteCategory.Love.rawValue]),
        Quote(id: 6, text: "Happiness is not something you postpone for the future; it is something you design for the present.", categories: [QuoteCategory.Happiness.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 7, text: "The only true wisdom is in knowing you know nothing.", categories: [QuoteCategory.Wisdom.rawValue]),
        Quote(id: 8, text: "That which does not kill us makes us stronger.", categories: [QuoteCategory.Strength.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 9, text: "The only way to make sense out of change is to plunge into it, move with it, and join the dance.", categories: [QuoteCategory.Change.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 10, text: "A single rose can be my garden; a single friend, my world.", categories: [QuoteCategory.Friendship.rawValue, QuoteCategory.Love.rawValue]),
        Quote(id: 11, text: "Family is not an important thing. It's everything.", categories: [QuoteCategory.Family.rawValue, QuoteCategory.Love.rawValue]),
        Quote(id: 12, text: "Adventure is worthwhile in itself.", categories: [QuoteCategory.Adventure.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 13, text: "All our dreams can come true, if we have the courage to pursue them.", categories: [QuoteCategory.Dreams.rawValue, QuoteCategory.Courage.rawValue]),
        Quote(id: 14, text: "Patience is the companion of wisdom.", categories: [QuoteCategory.Patience.rawValue, QuoteCategory.Wisdom.rawValue]),
        Quote(id: 15, text: "Opportunities don't happen. You create them.", categories: [QuoteCategory.Opportunity.rawValue, QuoteCategory.Success.rawValue]),
        Quote(id: 16, text: "Motivation is what gets you started. Habit is what keeps you going.", categories: [QuoteCategory.Motivation.rawValue, QuoteCategory.Success.rawValue]),
        Quote(id: 17, text: "Courage is grace under pressure.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Strength.rawValue]),
        Quote(id: 18, text: "The will to succeed is important, but what's more important is the will to prepare.", categories: [QuoteCategory.Determination.rawValue, QuoteCategory.Success.rawValue]),
        Quote(id: 19, text: "The only limit to our realization of tomorrow will be our doubts of today.", categories: [QuoteCategory.Growth.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 20, text: "Happiness is a direction, not a place.", categories: [QuoteCategory.Happiness.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 21, text: "We become what we think about most of the time, and that's the strangest secret.", categories: [QuoteCategory.Growth.rawValue, QuoteCategory.Mindfulness.rawValue]),
        Quote(id: 22, text: "You can never cross the ocean until you have the courage to lose sight of the shore.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Adventure.rawValue]),
        Quote(id: 23, text: "The only limit to our realization of tomorrow will be our doubts of today.", categories: [QuoteCategory.Confidence.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 24, text: "Challenges are what make life interesting and overcoming them is what makes life meaningful.", categories: [QuoteCategory.Challenge.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 25, text: "The only place where success comes before work is in the dictionary.", categories: [QuoteCategory.Work.rawValue, QuoteCategory.Success.rawValue]),
        Quote(id: 26, text: "The best revenge is massive success.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 27, text: "The two most important days in your life are the day you are born and the day you find out why.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 28, text: "Whatever you can do, or dream you can, begin it. Boldness has genius, power and magic in it.", categories: [QuoteCategory.Dreams.rawValue, QuoteCategory.Courage.rawValue]),
        Quote(id: 29, text: "The best time to plant a tree was 20 years ago. The second best time is now.", categories: [QuoteCategory.Opportunity.rawValue, QuoteCategory.Wisdom.rawValue]),
        Quote(id: 30, text: "A room without books is like a body without a soul.", categories: [QuoteCategory.Wisdom.rawValue, QuoteCategory.Passion.rawValue]),
        Quote(id: 31, text: "It does not matter how slowly you go as long as you do not stop.", categories: [QuoteCategory.Patience.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 32, text: "Success is not the key to happiness. Happiness is the key to success.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Happiness.rawValue]),
        Quote(id: 33, text: "When I dare to be powerful – to use my strength in the service of my vision, then it becomes less and less important whether I am afraid.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Strength.rawValue]),
        Quote(id: 34, text: "Love the life you live. Live the life you love.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Love.rawValue]),
        Quote(id: 35, text: "In the end, it's not the years in your life that count. It's the life in your years.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Happiness.rawValue]),
        Quote(id: 36, text: "The greatest glory in living lies not in never falling, but in rising every time we fall.", categories: [QuoteCategory.Strength.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 37, text: "Life is either a daring adventure or nothing at all.", categories: [QuoteCategory.Adventure.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 38, text: "Many of life's failures are people who did not realize how close they were to success when they gave up.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 39, text: "You have within you right now, everything you need to deal with whatever the world can throw at you.", categories: [QuoteCategory.Strength.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 40, text: "Believe you can and you're halfway there.", categories: [QuoteCategory.Belief.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 41, text: "To see what is right and not do it is a lack of courage.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Morality.rawValue]),
        Quote(id: 42, text: "Every strike brings me closer to the next home run.", categories: [QuoteCategory.Perseverance.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 43, text: "The journey of a thousand miles begins with one step.", categories: [QuoteCategory.Journey.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 44, text: "Don’t judge each day by the harvest you reap but by the seeds that you plant.", categories: [QuoteCategory.Patience.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 45, text: "In order to write about life first you must live it.", categories: [QuoteCategory.Experience.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 46, text: "Whether you think you can or think you can't, you're right.", categories: [QuoteCategory.Belief.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 47, text: "Life shrinks or expands in proportion to one’s courage.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 48, text: "In three words I can sum up everything I've learned about life: it goes on.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Wisdom.rawValue]),
        Quote(id: 49, text: "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Meaningfulness.rawValue]),
        Quote(id: 50, text: "Success is not final, failure is not fatal: it is the courage to continue that counts.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Courage.rawValue]),
        Quote(id: 51, text: "I find that the harder I work, the more luck I seem to have.", categories: [QuoteCategory.Work.rawValue, QuoteCategory.Success.rawValue]),
        Quote(id: 52, text: "Don't count the days, make the days count.", categories: [QuoteCategory.Motivation.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 53, text: "The only thing standing between you and your goal is the story you keep telling yourself as to why you can't achieve it.", categories: [QuoteCategory.Goal.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 54, text: "The mind is everything. What you think you become.", categories: [QuoteCategory.Mindfulness.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 55, text: "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do.", categories: [QuoteCategory.Regret.rawValue, QuoteCategory.Adventure.rawValue]),
        Quote(id: 56, text: "Success usually comes to those who are too busy to be looking for it.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Work.rawValue]),
        Quote(id: 57, text: "Don't let yesterday take up too much of today.", categories: [QuoteCategory.Mindfulness.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 58, text: "It's not whether you get knocked down, it's whether you get up.", categories: [QuoteCategory.Perseverance.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 59, text: "If you can't explain it simply, you don't understand it well enough.", categories: [QuoteCategory.Wisdom.rawValue, QuoteCategory.Knowledge.rawValue]),
        Quote(id: 60, text: "The only limit to our realization of tomorrow will be our doubts of today.", categories: [QuoteCategory.Fear.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 61, text: "It's the possibility of having a dream come true that makes life interesting.", categories: [QuoteCategory.Dreams.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 62, text: "It always seems impossible until it's done.", categories: [QuoteCategory.Determination.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 63, text: "It's not the load that breaks you down, it's the way you carry it.", categories: [QuoteCategory.Strength.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 64, text: "If opportunity doesn’t knock, build a door.", categories: [QuoteCategory.Opportunity.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 65, text: "Change is hard at first, messy in the middle and gorgeous at the end.", categories: [QuoteCategory.Change.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 66, text: "Courage doesn't always roar. Sometimes courage is the quiet voice at the end of the day saying 'I will try again tomorrow'.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Perseverance.rawValue]),
        Quote(id: 67, text: "A journey of a thousand miles must begin with a single step.", categories: [QuoteCategory.Journey.rawValue, QuoteCategory.Beginning.rawValue]),
        Quote(id: 68, text: "Family is not an important thing, it's everything.", categories: [QuoteCategory.Family.rawValue, QuoteCategory.Love.rawValue]),
        Quote(id: 69, text: "The best way to predict your future is to create it.", categories: [QuoteCategory.Motivation.rawValue, QuoteCategory.Determination.rawValue]),
        Quote(id: 70, text: "A man cannot be comfortable without his own approval.", categories: [QuoteCategory.Confidence.rawValue, QuoteCategory.Belief.rawValue]),
        Quote(id: 71, text: "It's not about perfect. It's about effort.", categories: [QuoteCategory.Work.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 72, text: "The only way to achieve the impossible is to believe it is possible.", categories: [QuoteCategory.Belief.rawValue, QuoteCategory.Determination.rawValue]),
        Quote(id: 73, text: "Love all, trust a few, do wrong to none.", categories: [QuoteCategory.Love.rawValue, QuoteCategory.Morality.rawValue]),
        Quote(id: 74, text: "Friendship is the only cement that will ever hold the world together.", categories: [QuoteCategory.Friendship.rawValue, QuoteCategory.Love.rawValue]),
        Quote(id: 75, text: "Every moment is a fresh beginning.", categories: [QuoteCategory.Opportunity.rawValue, QuoteCategory.Mindfulness.rawValue]),
        Quote(id: 76, text: "The purpose of our lives is to be happy.", categories: [QuoteCategory.Happiness.rawValue, QuoteCategory.Life.rawValue]),
        Quote(id: 77, text: "Fear is the thief of dreams.", categories: [QuoteCategory.Fear.rawValue, QuoteCategory.Dreams.rawValue]),
        Quote(id: 78, text: "Perseverance is not a long race; it is many short races one after the other.", categories: [QuoteCategory.Perseverance.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 79, text: "Success is not just about making money. It's about making a difference.", categories: [QuoteCategory.Success.rawValue, QuoteCategory.Meaningfulness.rawValue]),
        Quote(id: 80, text: "It does not matter how slowly you go as long as you do not stop.", categories: [QuoteCategory.Patience.rawValue, QuoteCategory.Perseverance.rawValue]),
        Quote(id: 81, text: "Life is 10% what happens to us and 90% how we react to it.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Mindfulness.rawValue]),
        Quote(id: 82, text: "The only way to do great work is to love what you do.", categories: [QuoteCategory.Work.rawValue, QuoteCategory.Passion.rawValue]),
        Quote(id: 83, text: "The greatest glory in living lies not in never falling, but in rising every time we fall.", categories: [QuoteCategory.Perseverance.rawValue, QuoteCategory.Courage.rawValue]),
        Quote(id: 84, text: "Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.", categories: [QuoteCategory.Belief.rawValue, QuoteCategory.Confidence.rawValue]),
        Quote(id: 85, text: "Challenges are what make life interesting and overcoming them is what makes life meaningful.", categories: [QuoteCategory.Challenge.rawValue, QuoteCategory.Meaningfulness.rawValue]),
        Quote(id: 86, text: "If you don't design your own life plan, chances are you'll fall into someone else's plan. And guess what they have planned for you? Not much.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Goal.rawValue]),
        Quote(id: 87, text: "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.", categories: [QuoteCategory.Fear.rawValue, QuoteCategory.Dreams.rawValue]),
        Quote(id: 88, text: "Family is not an important thing. It's everything.", categories: [QuoteCategory.Family.rawValue, QuoteCategory.Love.rawValue]),
        Quote(id: 89, text: "The future belongs to those who believe in the beauty of their dreams.", categories: [QuoteCategory.Dreams.rawValue, QuoteCategory.Belief.rawValue]),
        Quote(id: 90, text: "When you reach the end of your rope, tie a knot in it and hang on.", categories: [QuoteCategory.Perseverance.rawValue, QuoteCategory.Strength.rawValue]),
        Quote(id: 91, text: "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.", categories: [QuoteCategory.Life.rawValue, QuoteCategory.Meaningfulness.rawValue]),
        Quote(id: 92, text: "Happiness often sneaks in through a door you didn't know you left open.", categories: [QuoteCategory.Happiness.rawValue, QuoteCategory.Mindfulness.rawValue]),
        Quote(id: 93, text: "Sometimes the smallest step in the right direction ends up being the biggest step of your life.", categories: [QuoteCategory.Journey.rawValue, QuoteCategory.Change.rawValue]),
        Quote(id: 94, text: "Only those who will risk going too far can possibly find out how far one can go.", categories: [QuoteCategory.Adventure.rawValue, QuoteCategory.Courage.rawValue]),
        Quote(id: 95, text: "With patience, you can even cook a stone.", categories: [QuoteCategory.Patience.rawValue, QuoteCategory.Determination.rawValue]),
        Quote(id: 96, text: "The best way to predict the future is to create it.", categories: [QuoteCategory.Goal.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 97, text: "It is during our darkest moments that we must focus to see the light.", categories: [QuoteCategory.Courage.rawValue, QuoteCategory.Mindfulness.rawValue]),
        Quote(id: 98, text: "You don't have to be great to start, but you have to start to be great.", categories: [QuoteCategory.Beginning.rawValue, QuoteCategory.Growth.rawValue]),
        Quote(id: 99, text: "If you can dream it, you can do it.", categories: [QuoteCategory.Dreams.rawValue, QuoteCategory.Motivation.rawValue]),
        Quote(id: 100, text: "The secret of getting ahead is getting started.", categories: [QuoteCategory.Motivation.rawValue, QuoteCategory.Beginning.rawValue])

    ]
    
    func getRandomQuote() -> Quote {
        return quotes.randomElement() ?? Quote(id: 0, text: "No quotes available.", categories: [])
    }
    
    func getQuoteById(_ id: Int) -> Quote {
        return quotes.first(where: { $0.id == id }) ?? getRandomQuote()
    }
}
