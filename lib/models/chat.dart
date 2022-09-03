class Chat {
  String image;
  String name;
  String messageDate;
  String mostRecentMessage;

  Chat ({
  required this.image,
  required this.name,
  required this.messageDate,
  required this.mostRecentMessage,
});
}

var chatList = [
 Chat(
     name: 'Mas Angga',
     image: 'images/person1.png',
     messageDate: '21/08/2022',
     mostRecentMessage: 'Hari ini training?'),
 Chat(
     name: 'Mas Wisnu',
     image: 'images/person3.png',
     messageDate: '21/08/2022',
     mostRecentMessage: 'Training flutter?'),

 Chat(
     name: 'Anya',
     image: 'images/person2.png',
     messageDate: '21/08/2022',
     mostRecentMessage: 'Mau main?'),
];


