// ignore_for_file: non_constant_identifier_names, camel_case_types

class jobModel {
  late String title;
  late String id;
  late String companyName;
  late String companyWebsiteUrl;
  late String companylogoUrl;
  late int num_vacancies;
  late String hiringDeadLine;
  late String min_requirements;
  late String description;

  jobModel(
      {required this.id,
      required this.title,
      required this.companyName,
      required this.companyWebsiteUrl,
      required this.num_vacancies,
      required this.hiringDeadLine,
      required this.companylogoUrl,
      required this.min_requirements,
      required this.description});

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'companyName': companyName,
        'website': companyWebsiteUrl,
        'hiringDeadLine': hiringDeadLine,
        'logoUrl': companylogoUrl,
        'num_hireing': num_vacancies,
        'min_req': min_requirements,
        'description': description
      };

  jobModel.fromMap(Map<String, dynamic> job) {
    id = job['id'];
    title = job['title'];
    companyName = job['companyName'];
    companyWebsiteUrl = job['website'];
    num_vacancies = job['num_hireing'];
    hiringDeadLine = job['hiringDeadLine'];
    companylogoUrl = job['logoUrl'];
    min_requirements = job['min_requirements'];
    description = job['description'];
  }
}
