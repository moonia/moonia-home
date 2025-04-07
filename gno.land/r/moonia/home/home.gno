package home

import (
  "strings"
  "gno.land/r/moonia/vote"
  "gno.land/p/moonia/utils"
  "gno.land/p/moonia/fortunes"
  "gno.land/p/moul/txlink"
  "gno.land/p/moul/md"
  "strconv"
)

var (
  pfp string
  abtMe string
  lastCaller string
  try int
)

func init() {
  pfp = utils.Snoopy()
  abtMe = "Hi, I'm Mounia! I am a french 🇫🇷🥖 developer based in Paris."
  lastCaller = utils.GetCaller()
}

func drawPfp() string {
  var b strings.Builder
  b.WriteString(pfp)
  return b.String()
}

func renderAboutMe() string {
  out := "<div class='columns-2'>"

  out += "<div>\n\n"
  out += "```\n" + drawPfp() + "```\n"
  out += "<div>\n\n"

  out += "### About Me"
  out += "<div>\n\n"
  out += abtMe + "\n\n"
  out += "<div>\n\n"

  out += "</div><!-- /columns-2 -->\n\n"
  return out
}

func renderFortuneCookie() string {
  fortune := fortunes.GetRandomFortune()

  out := "# Cookie Fortune 🥠\n\n"
  out += "don't like this one? Refresh for a better cookie ദ്ദി(˵ •̀ ᴗ - ˵ ) ✧\n\n"
  out += "```" + fortune + "```\n\n"
  return out
}

func FillTry() {
  try++
}

func Vote(dog string) {
  if try <= 0 {
    panic("You have no tries left!")
  }
  vote.Vote(dog)
  try--
}

func renderVote() string {
  out := "# Your favorite cartoon dog? 🐕\n\n"
  out += md.Link("Refill your tries", txlink.Call("FillTry"))
  out += " (" + strconv.Itoa(try) + " tries left)\n\n"

  if try <= 0 {
    out += "**You need more tries to vote! Click above to refill.**\n\n"
  }

  dogs := []string{"Snoopy", "ScoobyDoo", "BrianGriffin"}
  out += "### Vote Now:\n\n"
  for _, dog := range dogs {
    out += "- " + md.Link(dog, txlink.Call("Vote", "dog", dog)) + "\n"
  }

  out += "\n\n"
  out += vote.Choices()

  return out
}

func Render(path string) string {
  out := "# Moonia's Homepage 🌱\n\n"
  out += "**Connected wallet:** `" + lastCaller + "`\n\n"

  out += renderAboutMe()
  out += "\n\n"
  out += renderFortuneCookie()
  out += "\n\n"
  out += renderVote()
  out += "\n\n"
  out += "## Contact\n"
  out += "- 📫 GitHub: [moonia](https://github.com/moonia" + ")\n"

  return out
}
