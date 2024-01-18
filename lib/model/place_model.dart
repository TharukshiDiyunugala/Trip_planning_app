class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days;

  PlaceInfo({
    required this.desc,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.days,
  });
}

List places = [
  PlaceInfo(
    
    name: 'Gregory park', 
    image: 'https://img.freepik.com/free-photo/golf-course-landscape_1388-98.jpg?size=626&ext=jpg&ga=GA1.2.42334345.1692178467&semt=ais', 
    location: 'Nuwara eliya' ,
    distance: 25, 
    days: 3,
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vehicula arcu nisl, at tempor augue pharetra dictum. Vivamus nec magna urna. Vivamus est tellus, tempor vel vestibulum sed, fringilla nec lacus. Duis suscipit ex vel imperdiet tempus.', 
  ),
   PlaceInfo(
    
    name: 'Watada Geya', 
    image: 'https://img.freepik.com/free-photo/buddha-statue-wat-mahathat-temple-precinct-sukhothai-historical-park_335224-906.jpg?size=626&ext=jpg&ga=GA1.2.42334345.1692178467&semt=ais', 
    location: 'Polonnaruwa', 
    distance: 56, 
    days: 4,
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vehicula arcu nisl, at tempor augue pharetra dictum. Vivamus nec magna urna. Vivamus est tellus, tempor vel vestibulum sed, fringilla nec lacus. Duis suscipit ex vel imperdiet tempus.', 
  ),
  PlaceInfo(
    
    name: 'Watada Geya', 
    image: 'https://img.freepik.com/free-photo/buddha-statue-wat-mahathat-temple-precinct-sukhothai-historical-park_335224-906.jpg?size=626&ext=jpg&ga=GA1.2.42334345.1692178467&semt=ais', 
    location: 'Polonnaruwa', 
    distance: 56, 
    days: 4,
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vehicula arcu nisl, at tempor augue pharetra dictum. Vivamus nec magna urna. Vivamus est tellus, tempor vel vestibulum sed, fringilla nec lacus. Duis suscipit ex vel imperdiet tempus.', 
  ),
  PlaceInfo(
    
    name: 'Watada Geya', 
    image: 'https://img.freepik.com/free-photo/buddha-statue-wat-mahathat-temple-precinct-sukhothai-historical-park_335224-906.jpg?size=626&ext=jpg&ga=GA1.2.42334345.1692178467&semt=ais', 
    location: 'Polonnaruwa', 
    distance: 56, 
    days: 4,
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vehicula arcu nisl, at tempor augue pharetra dictum. Vivamus nec magna urna. Vivamus est tellus, tempor vel vestibulum sed, fringilla nec lacus. Duis suscipit ex vel imperdiet tempus.', 
  ),
  PlaceInfo(
      desc:
          "The fort, originally built by the Portuguese in the 16th century to defend Galle, was an earthen structure with pallisades covering the northern inland side",
      name: "Galle Fort",
      image:
          "https://afar.brightspotcdn.com/dims4/default/5636d9b/2147483647/strip/true/crop/1166x800+217+0/resize/660x453!/quality/90/?url=https%3A%2F%2Fafar-media-production-web.s3.us-west-2.amazonaws.com%2Fbrightspot%2F65%2F34%2Facbaa757c112666ad291d14c8427%2Foriginal-257f690912cb23806c7ade7b9b406cd9.jpg",
      location: "Galle",
      distance: 50000,
      days: 1),
  PlaceInfo(
      desc:
          "t is rich in biodiversity and many species found here are endemic to the region. It is also a popular tourist destination",
      name: "Horton plains",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSFp7BvaaSd3TBy9sT2SZSmtJLFfNHRt-pteg&usqp=CAU",
      location: "NuwaraEliya",
      distance: 70000,
      days: 5),
  PlaceInfo(
      desc:
          "Sigiriya or Sinhagiri is an ancient rock fortress located in the northern Matale District near the town of Dambulla in the Central Province, Sri Lanka.",
      name: "Sigiriya",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJw58BgghjsSx-hSepMFEKLRRLeUNYYwUQVw&usqp=CAU",
      location: "Matale",
      distance: 20000,
      days: 3),
 
  
];