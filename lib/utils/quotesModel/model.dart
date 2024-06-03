import 'package:quotes_app_daliy_task/utils/quotesList/quotesList.dart';

class QuoteModel
{
  String? author;
  String? quote;


  QuoteModel({this.author,this.quote});

  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote']);
  }

  List<QuoteModel> quoteModelList=[];
  QuoteModel.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
      {
        quoteModelList.add(QuoteModel.fromQuotes(l1[i]));

      }
  }
  // QuoteModel.toColor(List l2)
  // {
  //   for(int i=0;i<l2.length;i++)
  //   {
  //     colorList.add(QuoteModel.fromQuotes(l2[i]));
  //
  //   }
  // }
}