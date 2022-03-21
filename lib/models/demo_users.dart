import 'package:flutter/material.dart';

@immutable
class DemoUser{
  final String id;
  final String name;
  final String image;

  const DemoUser({required this.id, required this.name, required this.image,});
}

const users = [
  userDan,
  userOlivine,
  userBett,
  userSonia,
  userJoh,
  userAmiani,
];

const userDan = DemoUser(
  id: "dan",
  name: "Parlgy Dan",
  image:
  'https://images.unsplash.com/photo-1622847790720-57ca83a5bc27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80',);

const userOlivine = DemoUser(
  id: "olivine",
  name: "Olivine George",
  image:
  'https://images.unsplash.com/photo-1552493450-2b5ce80ed13f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1114&q=80',);

const userBett = DemoUser(
  id: "bett",
  name: "Stephen Bett",
  image:
  'https://images.unsplash.com/photo-1504199367641-aba8151af406?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',);

const userSonia = DemoUser(
  id: "sonia",
  name: "Miss Sonia",
  image:
  'https://images.unsplash.com/photo-1519011985187-444d62641929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',);

const userJoh = DemoUser(
  id: "joh",
  name: "Joel Koyoo",
  image:
  'https://images.unsplash.com/photo-1546456073-ea246a7bd25f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',);

const userAmiani = DemoUser(
  id: "amiani",
  name: "Elvis Amiani",
  image:
  'https://images.unsplash.com/photo-1507038732509-8b1a9623223a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',);