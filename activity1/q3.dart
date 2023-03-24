// Abdelrahman M. Almajayda -- 120190071
void main(List<String> args) {
  final List<int> _stdAVG = [for (var i = 50; i < 100; i++) i];
  final List<int> _grades = [0,0,0,0,0];
  for (var avg in _stdAVG) {
    if (avg >= 90) _grades[0]++;
    else if (avg >= 80 && avg < 90) _grades[1]++;
    else if (avg >= 70 && avg < 80) _grades[2]++;
    else if (avg >= 60 && avg < 70) _grades[3]++;
    else if (avg >= 50 && avg < 60) _grades[4]++;
  }

print("""
  Students who avg 90 or more [${_grades[0]}]
  Students who avg 80 or more [${_grades[1]}]
  Students who avg 70 or more [${_grades[2]}]
  Students who avg 60 or more [${_grades[3]}]
  Students who avg 50 or more [${_grades[4]}]
""");
}