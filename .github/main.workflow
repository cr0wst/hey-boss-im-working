workflow "New workflow" {
  on = "push"
  resolves = ["nexmo-community/nexmo-sms-action@master"]
}

action "nexmo-community/nexmo-sms-action@master" {
  uses = "nexmo-community/nexmo-sms-action@master"
  args = "$BOSS_NUMBER Hey boss! Just letting you know that I, $GITHUB_ACTOR, just pushed some code."
  secrets = ["NEXMO_API_KEY", "NEXMO_API_SECRET", "NEXMO_NUMBER", "BOSS_NUMBER"]
}
