import 'package:flutter/material.dart';

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}

const users = [
  userDan,
  userJoh,
  userBett,
  userElvis,
  userOlivine,
  userSonia,
  userAdipo,
];

const userDan = DemoUser(
  id: 'dan',
  name: 'Dante',
  image:
  'https://pbs.twimg.com/profile_images/1262058845192335360/Ys_-zu6W_400x400.jpg',
);

const userJoh = DemoUser(
  id: 'joh',
  name: 'Joel',
  image:
  'https://pbs.twimg.com/profile_images/1252869649349238787/cKVPSIyG_400x400.jpg',
);

const userBett = DemoUser(
  id: 'bett',
  name: 'Bett',
  image:
  'https://pbs.twimg.com/profile_images/1199684106193375232/IxA9XLuN_400x400.jpg',
);

const userElvis = DemoUser(
  id: 'elvis',
  name: 'Elvis',
  image:
  'https://pbs.twimg.com/profile_images/1371411357459832832/vIy8TO9F_400x400.jpg',
);

const userOlivine = DemoUser(
  id: 'olivine',
  name: 'Olivine',
  image:
  'https://pbs.twimg.com/profile_images/1324766105127153664/q96TpY8I_400x400.jpg',
);

const userSonia = DemoUser(
  id: 'sonia',
  name: 'Sonia',
  image:
  'https://pbs.twimg.com/profile_images/1370571324578480130/UxBBI30i_400x400.jpg',
);

const userAdipo = DemoUser(
  id: 'adipo',
  name: 'Adipo',
  image:
  'https://pbs.twimg.com/profile_images/1436372495381172225/4wDDMuD8_400x400.jpg',
);

