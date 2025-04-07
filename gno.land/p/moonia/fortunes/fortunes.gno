package fortunes

import (
    "gno.land/p/moonia/utils"
)

var FortuneList = []string{
    "A beautiful, smart, and loving person will be coming into your life.",
    "A fresh start will put you on your way.",
    "A golden opportunity is coming your way.",
    "A lifetime friend shall soon be made.",
    "A pleasant surprise is waiting for you.",
    "Adventure can be real happiness.",
    "All your hard work will soon pay off.",
    "An unexpected event will soon make your life more exciting.",
    "Believe in yourself and others will too.",
    "Big things are coming your way.",
    "Change is happening in your life, so go with the flow!",
    "Courage is not the absence of fear; it is the conquest of it.",
    "Determination today leads to success tomorrow.",
    "Do not let ambitions overshadow small success.",
    "Don't just think. Act!",
    "Every day is a new beginning.",
    "Fearless courage is the foundation of victory.",
    "Good news will come to you by mail.",
    "Happiness begins with facing life with a smile and a wink.",
    "If you can dream it, you can do it.",
    "If you have something good in your life, don't let it go!",
    "In the middle of difficulty lies opportunity.",
    "It is now, and in this world, that we must live.",
    "It's never too late to be what you might have been.",
    "Joy comes from adventure today. Time to go explore.",
    "Let your inner voice guide you.",
    "Love conquers all.",
    "Now is the time to try something new.",
    "Opportunity knocks on your door every day. Answer it!",
    "Patience is a virtue, and it will bring you peace.",
    "Practice makes perfect.",
    "Prosperity will soon knock on your door.",
    "Respect yourself and others will respect you.",
    "Self-knowledge is the beginning of wisdom.",
    "Someone is looking up to you. Don't let that person down.",
    "Something wonderful is about to happen to you.",
    "The greatest risk is not taking one.",
    "The harder you work, the luckier you get.",
    "There is no greater pleasure than seeing your loved ones prosper.",
    "Trust your intuition.",
    "Use your talents. That's what they are intended for.",
    "Wealth awaits you very soon.",
    "What you plant now, you will harvest later.",
    "Your abilities are unparalleled.",
    "Your life will be happy and peaceful.",
    "Your love life will be happy and harmonious.",
    "Your success will astonish everyone.",
    "You will achieve your goals.",
    "You will be blessed with longevity.",
    "You will make a change for the better.",
}

func GetRandomFortune() string {
	return FortuneList[utils.RandomInt(49)]
}
