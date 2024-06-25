int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  if (total(teamA) > total(teamB)) return 1;
  if (total(teamB) > total(teamA)) return 2;
  return 0;
}

int total(Map<String, int> team) {
  int total = 0;
  team.forEach((typeOfShot, number) {
    if (typeOfShot == "Free throws") {
      total += number * 1;
    } else if (typeOfShot == "2 pointers") {
      total += number * 2;
    } else {
      total += number * 3;
    }
  });
  return total;
}
