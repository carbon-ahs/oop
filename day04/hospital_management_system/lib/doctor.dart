enum Designation { jr, asstProf, assocProf, prof }

class Doctor {
  String name;
  Designation designation;
  int maxNumberOfPatients;
  int currentNumberOfPatients;

  Doctor(this.name, this.designation, this.maxNumberOfPatients)
      : currentNumberOfPatients = 0;
      
}
