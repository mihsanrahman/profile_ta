class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Biology', 'Indomidi Mart', '17 Jan 2023', 'Mobile Application', 'Done'),
  AssignmentData(
      'Physics', 'E-Book App', '11 Jan 2023', 'Mobile Application', 'Pending'),
  AssignmentData('Chemistry', 'My Telkomsel', '21 Oct 2021',
      'Mobile Application', 'Not Finished Yet'),
  AssignmentData('Mathematics', 'To-Do List App', '17 Sep 2021', 'Mobile Application',
      'Not Finished Yet'),
  AssignmentData('Mathematics', 'Tiket.com', '17 Sep 2021', 'Website', 'Done'),
  AssignmentData('Mathematics', 'LMS', '17 Sep 2021', 'Website', 'Pending'),
  AssignmentData('Mathematics', 'Tix Cinema', '17 Sep 2021', 'Website', 'Not Finished Yet'),
];
