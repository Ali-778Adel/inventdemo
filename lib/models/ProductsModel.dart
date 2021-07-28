class Autogenerated {
  int currentPage;
  List<Data> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  String nextPageUrl;
  String path;
  int perPage;
  Null prevPageUrl;
  int to;
  int total;

  Autogenerated(
      {this.currentPage,
        this.data,
        this.firstPageUrl,
        this.from,
        this.lastPage,
        this.lastPageUrl,
        this.nextPageUrl,
        this.path,
        this.perPage,
        this.prevPageUrl,
        this.to,
        this.total});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = this.firstPageUrl;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['prev_page_url'] = this.prevPageUrl;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  int id;
  String name;
  double price;
  int discountPrice;
  String description;
  int capacity;
  int packageItemsCount;
  String unit;
  bool featured;
  bool deliverable;
  int marketId;
  int categoryId;
  String createdAt;
  String updatedAt;
  List<Null> customFields;
  bool hasMedia;
  Market market;
  List<Media> media;

  Data(
      {this.id,
        this.name,
        this.price,
        this.discountPrice,
        this.description,
        this.capacity,
        this.packageItemsCount,
        this.unit,
        this.featured,
        this.deliverable,
        this.marketId,
        this.categoryId,
        this.createdAt,
        this.updatedAt,
        this.customFields,
        this.hasMedia,
        this.market,
        this.media});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    discountPrice = json['discount_price'];
    description = json['description'];
    capacity = json['capacity'];
    packageItemsCount = json['package_items_count'];
    unit = json['unit'];
    featured = json['featured'];
    deliverable = json['deliverable'];
    marketId = json['market_id'];
    categoryId = json['category_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['custom_fields'] != null) {
      customFields = new List<Null>();
      json['custom_fields'].forEach((v) {
       // customFields.add(new Null.fromJson(v));
      });
    }
    hasMedia = json['has_media'];
    market =
    json['market'] != null ? new Market.fromJson(json['market']) : null;
    if (json['media'] != null) {
      media = new List<Media>();
      json['media'].forEach((v) {
        media.add(new Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['discount_price'] = this.discountPrice;
    data['description'] = this.description;
    data['capacity'] = this.capacity;
    data['package_items_count'] = this.packageItemsCount;
    data['unit'] = this.unit;
    data['featured'] = this.featured;
    data['deliverable'] = this.deliverable;
    data['market_id'] = this.marketId;
    data['category_id'] = this.categoryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.customFields != null) {
    //  data['custom_fields'] = this.customFields.map((v) => v.toJson()).toList();
    }
    data['has_media'] = this.hasMedia;
    if (this.market != null) {
      data['market'] = this.market.toJson();
    }
    if (this.media != null) {
      data['media'] = this.media.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Market {
  int id;
  String name;
  int deliveryFee;
  String address;
  String phone;
  int defaultTax;
  List<Null> customFields;
  bool hasMedia;
  Null rate;
  List<Media> media;

  Market(
      {this.id,
        this.name,
        this.deliveryFee,
        this.address,
        this.phone,
        this.defaultTax,
        this.customFields,
        this.hasMedia,
        this.rate,
        this.media});

  Market.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    deliveryFee = json['delivery_fee'];
    address = json['address'];
    phone = json['phone'];
    defaultTax = json['default_tax'];
    if (json['custom_fields'] != null) {
      customFields = new List<Null>();
      json['custom_fields'].forEach((v) {
       // customFields.add(new Null.fromJson(v));
      });
    }
    hasMedia = json['has_media'];
    rate = json['rate'];
    if (json['media'] != null) {
      media = new List<Media>();
      json['media'].forEach((v) {
        media.add(new Media.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['delivery_fee'] = this.deliveryFee;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['default_tax'] = this.defaultTax;
    if (this.customFields != null) {
   //   data['custom_fields'] = this.customFields.map((v) => v.toJson()).toList();
    }
    data['has_media'] = this.hasMedia;
    data['rate'] = this.rate;
    if (this.media != null) {
      data['media'] = this.media.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Media {
  int id;
  String modelType;
  int modelId;
  String collectionName;
  String name;
  String fileName;
  String mimeType;
  String disk;
  int size;
  List<Null> manipulations;
  CustomProperties customProperties;
  List<Null> responsiveImages;
  int orderColumn;
  String createdAt;
  String updatedAt;
  String url;
  String thumb;
  String icon;
  String formatedSize;

  Media(
      {this.id,
        this.modelType,
        this.modelId,
        this.collectionName,
        this.name,
        this.fileName,
        this.mimeType,
        this.disk,
        this.size,
        this.manipulations,
        this.customProperties,
        this.responsiveImages,
        this.orderColumn,
        this.createdAt,
        this.updatedAt,
        this.url,
        this.thumb,
        this.icon,
        this.formatedSize});

  Media.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    modelType = json['model_type'];
    modelId = json['model_id'];
    collectionName = json['collection_name'];
    name = json['name'];
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    disk = json['disk'];
    size = json['size'];
    if (json['manipulations'] != null) {
      manipulations = new List<Null>();
      json['manipulations'].forEach((v) {
      //  manipulations.add(new Null.fromJson(v));
      });
    }
    customProperties = json['custom_properties'] != null
        ? new CustomProperties.fromJson(json['custom_properties'])
        : null;
    if (json['responsive_images'] != null) {
      responsiveImages = new List<Null>();
      json['responsive_images'].forEach((v) {
      //  responsiveImages.add(new Null.fromJson(v));
      });
    }
    orderColumn = json['order_column'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    url = json['url'];
    thumb = json['thumb'];
    icon = json['icon'];
    formatedSize = json['formated_size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['model_type'] = this.modelType;
    data['model_id'] = this.modelId;
    data['collection_name'] = this.collectionName;
    data['name'] = this.name;
    data['file_name'] = this.fileName;
    data['mime_type'] = this.mimeType;
    data['disk'] = this.disk;
    data['size'] = this.size;
    if (this.manipulations != null) {
      //data['manipulations'] =
      //  this.manipulations.map((v) => v.toJson()).toList();
    }
    if (this.customProperties != null) {
      data['custom_properties'] = this.customProperties.toJson();
    }
    if (this.responsiveImages != null) {
     // data['responsive_images'] =
        //  this.responsiveImages.map((v) => v.toJson()).toList();
    }
    data['order_column'] = this.orderColumn;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['url'] = this.url;
    data['thumb'] = this.thumb;
    data['icon'] = this.icon;
    data['formated_size'] = this.formatedSize;
    return data;
  }
}

class CustomProperties {
  String uuid;
  int userId;
  GeneratedConversions generatedConversions;

  CustomProperties({this.uuid, this.userId, this.generatedConversions});

  CustomProperties.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    userId = json['user_id'];
    generatedConversions = json['generated_conversions'] != null
        ? new GeneratedConversions.fromJson(json['generated_conversions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['user_id'] = this.userId;
    if (this.generatedConversions != null) {
      data['generated_conversions'] = this.generatedConversions.toJson();
    }
    return data;
  }
}

class GeneratedConversions {
  bool thumb;
  bool icon;

  GeneratedConversions({this.thumb, this.icon});

  GeneratedConversions.fromJson(Map<String, dynamic> json) {
    thumb = json['thumb'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumb'] = this.thumb;
    data['icon'] = this.icon;
    return data;
  }
}