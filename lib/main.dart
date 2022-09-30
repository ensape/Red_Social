import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 4, 0, 255),
            title: const Text('F A C E B O O K'),
          ),
          body: Column(
            children: [
              Container(
                //este es el buscador
                color: Colors.blueGrey,
                height: 100,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      // color: Colors.blue,
                      // width: 50, dejaron de funcionar con el espanded
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(
                              50) //para poner los bordes de las imaganes
                          ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, //para borrar el borde
                          hintText: 'Busca a tu crush',
                          hintStyle: TextStyle(
                            color: Colors.amberAccent,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ),
                ]),
              ),
              Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Historias'),
                              Text('Archivadas'),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 180,
                            //color: Colors.blueAccent,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                historia(
                                  userName: 'Enrique',
                                  userImage: 'assets/images/feed-1.jpg',
                                  historyimagen:
                                      'assets/images/story/story-1.jpg',
                                ),
                                historia(
                                  userName: 'Itzel',
                                  userImage: 'assets/images/feed-2.jpg',
                                  historyimagen:
                                      'assets/images/story/story-2.jpg',
                                ),
                                historia(
                                  userName: 'Rafael',
                                  userImage: 'assets/images/feed-3.jpg',
                                  historyimagen:
                                      'assets/images/story/story-3.jpg',
                                ),
                                historia(
                                  userName: 'Guadalupe',
                                  userImage: 'assets/images/feed-4.jpg',
                                  historyimagen:
                                      'assets/images/story/story-4.jpg',
                                ),
                                historia(
                                  userName: 'Luis',
                                  userImage: 'assets/images/feed-5.jpg',
                                  historyimagen:
                                      'assets/images/story/story-5.jpg',
                                ),
                                historia(
                                  userName: 'Diego',
                                  userImage: 'assets/images/feed-6.jpg',
                                  historyimagen:
                                      'assets/images/story/story-6.jpg',
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          publicacion(
                              userImage: 'assets/images/feed-1.jpg',
                              userName: 'Nacho',
                              feedTime: 'Hace 2 minutos',
                              feedText:
                                  'La descripción es esa frase o párrafo que está inmediatamente debajo de la imagen y en la que puedes escribir algo relacionado a la publicación, a tu producto o servicio, a tu marca, a tus seguidores o un llamado a la acción. También es el lugar para escribir los hashtags más importantes de tu publicación.',
                              feedImage: 'assets/images/feed-1.jpg'),
                          publicacion(
                              userImage: 'assets/images/feed-2.jpg',
                              userName: 'Itzel',
                              feedTime: 'Hace 10 minutos',
                              feedText:
                                  'La descripción es esa frase o párrafo que está inmediatamente debajo de la imagen y en la que puedes escribir algo relacionado a la publicación, a tu producto o servicio, a tu marca, a tus seguidores o un llamado a la acción. También es el lugar para escribir los hashtags más importantes de tu publicación.',
                              feedImage: 'assets/images/feed-2.jpg'),
                          publicacion(
                              userImage: 'assets/images/feed-3.jpg',
                              userName: 'Jennifer',
                              feedTime: 'Hace 30 minutos',
                              feedText:
                                  'La descripción es esa frase o párrafo que está inmediatamente debajo de la imagen y en la que puedes escribir algo relacionado a la publicación, a tu producto o servicio, a tu marca, a tus seguidores o un llamado a la acción. También es el lugar para escribir los hashtags más importantes de tu publicación.',
                              feedImage: 'assets/images/feed-3.jpg'),
                          publicacion(
                              userImage: 'assets/images/feed-4.jpg',
                              userName: 'Carmen',
                              feedTime: 'Hace 50 minutos',
                              feedText:
                                  'La descripción es esa frase o párrafo que está inmediatamente debajo de la imagen y en la que puedes escribir algo relacionado a la publicación, a tu producto o servicio, a tu marca, a tus seguidores o un llamado a la acción. También es el lugar para escribir los hashtags más importantes de tu publicación.',
                              feedImage: 'assets/images/feed-4.jpg'),
                          publicacion(
                              userImage: 'assets/images/feed-5.jpg',
                              userName: 'Luis',
                              feedTime: 'Hace 120 minutos',
                              feedText:
                                  'La descripción es esa frase o párrafo que está inmediatamente debajo de la imagen y en la que puedes escribir algo relacionado a la publicación, a tu producto o servicio, a tu marca, a tus seguidores o un llamado a la acción. También es el lugar para escribir los hashtags más importantes de tu publicación.',
                              feedImage: 'assets/images/feed-5.jpg'),
                          publicacion(
                              userImage: 'assets/images/feed-6.jpg',
                              userName: 'Fernando',
                              feedTime: 'Hace 60 minutos',
                              feedText:
                                  'La descripción es esa frase o párrafo que está inmediatamente debajo de la imagen y en la que puedes escribir algo relacionado a la publicación, a tu producto o servicio, a tu marca, a tus seguidores o un llamado a la acción. También es el lugar para escribir los hashtags más importantes de tu publicación.',
                              feedImage: 'assets/images/feed-6.jpg'),
                        ]),
                      )))
            ],
          )),
    );
  }

  Widget publicacion({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.amber
                    image: DecorationImage(
                        image: AssetImage(userImage), fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3),
                  ),
                  Text(
                    feedTime,
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.green[700],
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: .7),
          ),
          SizedBox(
            height: 20,
          ),
          feedImage != ''
              ? Container(
                  height: 800,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(feedImage), fit: BoxFit.cover)),
                )
              : Container()
        ],
      ),
    );
  }

  Widget historia({historyimagen, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(historyimagen))),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                //color:  Colors.pink,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(userImage),
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                        //color: Colors.white,
                        width: 2)),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
