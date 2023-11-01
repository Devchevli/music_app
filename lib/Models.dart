

import 'package:music_app/images/App_images.dart';

class ListViewModel{
  final String image;
  final String text;
  ListViewModel({required this.image,required this.text});

}

List<ListViewModel> ListViewScreen = [
  ListViewModel(image: AppImages.Recent1, text: "Desi Kalakar"),
  ListViewModel(image: AppImages.Recent2, text: "Study chilling\n playlist"),
  ListViewModel(image: AppImages.Recent3, text: "Hanuman chalisha"),
  ListViewModel(image: AppImages.Recent4, text: "Despasito"),
  ListViewModel(image: AppImages.Recent5, text: "English Song\n Playlist"),
];

class ListViewModeltwo{
  final String image;
  final String text;

  ListViewModeltwo({required this.image,required this.text});
}

List<ListViewModeltwo>Top50=[
  ListViewModeltwo(image: AppImages.Top1, text: 'Bedardeya'),
  ListViewModeltwo(image: AppImages.Top2, text: 'Excuse'),
  ListViewModeltwo(image: AppImages.Top3, text: 'Brown Rang'),
  ListViewModeltwo(image: AppImages.Top4, text: 'Chaand Baaliyan'),
  ListViewModeltwo(image: AppImages.Top5, text: 'Heeriye'),

];
class ListViewModelthree{
  final String image;
  final String text;

  ListViewModelthree({required this.image,required this.text});
}

List<ListViewModelthree>Chill=[
  ListViewModelthree(image: AppImages.Chill1, text: 'Riptide'),
  ListViewModelthree(image: AppImages.Chill2, text: 'Stolen Dance'),
  ListViewModelthree(image: AppImages.Chill3, text: 'Kabira'),
  ListViewModelthree(image: AppImages.Chill4, text: 'Hawayein'),
  ListViewModelthree(image: AppImages.Chill5, text: 'Chitta'),

];
class ListViewModelfour{
  final String image;
  final String text;


  ListViewModelfour({required this.image,required this.text});
}

List<ListViewModelfour>pop=[
  ListViewModelfour(image: AppImages.pop1, text: 'Paagal'),//Riptide
  ListViewModelfour(image: AppImages.pop2, text: 'Desi Kalakkar'),//stolen dance
  ListViewModelfour(image: AppImages.pop3, text: 'Tareefan'),
  ListViewModelfour(image: AppImages.pop4, text: 'Blue Eyes'),
  ListViewModelfour(image: AppImages.pop5, text: 'Designer'),//chitta

];
class ListViewModelfive{
  final String image;
  final String text;

  ListViewModelfive({required this.image,required this.text});
}

List<ListViewModelfive>OldisGold=[
  ListViewModelfive(image: AppImages.Old1, text: 'Roop Tera Mastana'),//Riptide
  ListViewModelfive(image: AppImages.Old2, text: 'Kishor Kumar Hits'),//stolen dance
  ListViewModelfive(image: AppImages.Old3, text: 'Mere vatan ke logo'),
  ListViewModelfive(image: AppImages.Old4, text: 'Samne wali khidki mai'),
  ListViewModelfive(image: AppImages.Old5, text: 'Dream girl'),//chitta

];


class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.image, required this.subTitle, required this.title});
}

List<OnBoardingModel> onBoardingScreen = [
  OnBoardingModel(
      image: AppImages.modelOne,
      subTitle: "Take you back to the best moments of your life.",
      title: "Welcome to Rling App."),
  OnBoardingModel(
      image: AppImages.modelTwo,
      subTitle: "Make sure to take a look my upload profile every tuesday",
      title: "Design Template uploads Every Tuesday!"),
  OnBoardingModel(
      image: AppImages.modelThree,
      subTitle: "You can follow me if you want and comment on any to get some freebies",
      title: "Download now!"),
];