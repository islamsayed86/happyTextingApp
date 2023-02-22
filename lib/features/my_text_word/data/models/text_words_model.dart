class TextWordsModelData {
  DataModel? data;
  int? code;
  String? message;
  dynamic error;
  bool? status;

  TextWordsModelData({
    required this.data,
    required int this.code,
    required String this.message,
    required bool this.status,
    required this.error,
  });
  factory TextWordsModelData.fromJson(Map<String, dynamic> jsonData) {
    // print(jsonData);
    return TextWordsModelData(
      data: DataModel.fromJson(jsonData['data']),
      code: jsonData['code'],
      message: jsonData['message'],
      status: jsonData['status'],
      error: jsonData['error'],
    );
  }

  @override
  String toString() {
    return 'data = $data';
  }
}

class DataModel {
  List<TextWordDataModel>? textWordData;
  LinksModel? links;
  MetaModel? meta;
  DataModel(
    this.textWordData,
    this.links,
    this.meta,
  );
  DataModel.fromJson(dynamic jsonData) {
    textWordData = [];
    jsonData['data']?.forEach((element) {
      textWordData?.add(TextWordDataModel.fromJson(element));
    });

    links = LinksModel.fromJson(jsonData['links']);
    meta = MetaModel.fromJson(jsonData['meta']);
  }
}

class TextWordDataModel {
  int? id;
  String? title;
  String? description;
  String? topicArn;
  String? client;
  int? numberOfContacts;
  bool? hasActivePlatforms;

  TextWordDataModel(
    this.id,
    this.title,
    this.description,
    this.topicArn,
    this.client,
    this.numberOfContacts,
    this.hasActivePlatforms,
  );

  factory TextWordDataModel.fromJson(Map<String, dynamic> jsonData) {
    return TextWordDataModel(
      jsonData['id'],
      jsonData['title'],
      jsonData['description'],
      jsonData['topic_arn'],
      jsonData['client'],
      jsonData['number_of_contacts'],
      jsonData['has_active_platforms'],
    );
  }
}

class LinksModel {
  String? first;
  String? last;
  String? prev;
  String? next;
  LinksModel(
    this.first,
    this.last,
    this.prev,
    this.next,
  );
  factory LinksModel.fromJson(Map<String, dynamic> jsonData) => LinksModel(
        jsonData['first'],
        jsonData['last'],
        jsonData['prev'],
        jsonData['next'],
      );
}

class MetaModel {
  int? currentPage;
  int? from;
  int? lastPage;
  List<MetaLinks>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;
  MetaModel(
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  );
  MetaModel.fromJson(Map<String, dynamic> jsonData) {
    currentPage = jsonData['current_page'];
    from = jsonData['from'];
    lastPage = jsonData['last_page'];
    links = [];
    jsonData['links'].forEach((element) {
      links!.add(MetaLinks.fromJson(element));
    });

    path = jsonData['path'];
    perPage = jsonData['per_page'];
    to = jsonData['to'];
    total = jsonData['total'];
  }
}

class MetaLinks {
  dynamic url;
  String? label;
  bool? active;
  MetaLinks(
    this.url,
    this.label,
    this.active,
  );
  MetaLinks.fromJson(Map<String, dynamic> jsonData) {
    url = jsonData['url'];
    label = jsonData['label'];
    active = jsonData['active'];
  }
}
