class shlokModel{
  String? chapter_number;
  String? chapter_summary;

  shlokModel({this.chapter_number,this.chapter_summary});

  factory shlokModel.fromshlok(Map s1)
  {
    return shlokModel(chapter_number: s1['chapter_number'],chapter_summary: s1['chapter_summary']);
  }
  List<shlokModel> ShlokList=[];
  shlokModel.toList(List l1)
  {
    for(int i=0;i<18;i++)
      {
        ShlokList.add(shlokModel.fromshlok(l1[i]));
      }
  }
}