class ImageModelUserSocial {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  String? paypalEmail;

  ImageModelUserSocial({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
    this.paypalEmail,
  });
  ImageModelUserSocial.fromJson(Map<String, dynamic> json) {
    instagramUsername = json['instagram_username']?.toString();
    portfolioUrl = json['portfolio_url']?.toString();
    twitterUsername = json['twitter_username']?.toString();
    paypalEmail = json['paypal_email']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['instagram_username'] = instagramUsername;
    data['portfolio_url'] = portfolioUrl;
    data['twitter_username'] = twitterUsername;
    data['paypal_email'] = paypalEmail;
    return data;
  }
}

class ImageModelUserProfileImage {
  String? small;
  String? medium;
  String? large;

  ImageModelUserProfileImage({
    this.small,
    this.medium,
    this.large,
  });
  ImageModelUserProfileImage.fromJson(Map<String, dynamic> json) {
    small = json['small']?.toString();
    medium = json['medium']?.toString();
    large = json['large']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['small'] = small;
    data['medium'] = medium;
    data['large'] = large;
    return data;
  }
}

class ImageModelUserLinks {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  ImageModelUserLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });
  ImageModelUserLinks.fromJson(Map<String, dynamic> json) {
    self = json['self']?.toString();
    html = json['html']?.toString();
    photos = json['photos']?.toString();
    likes = json['likes']?.toString();
    portfolio = json['portfolio']?.toString();
    following = json['following']?.toString();
    followers = json['followers']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['self'] = self;
    data['html'] = html;
    data['photos'] = photos;
    data['likes'] = likes;
    data['portfolio'] = portfolio;
    data['following'] = following;
    data['followers'] = followers;
    return data;
  }
}

class ImageModelUser {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  ImageModelUserLinks? links;
  ImageModelUserProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  ImageModelUserSocial? social;

  ImageModelUser({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.acceptedTos,
    this.forHire,
    this.social,
  });
  ImageModelUser.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    updatedAt = json['updated_at']?.toString();
    username = json['username']?.toString();
    name = json['name']?.toString();
    firstName = json['first_name']?.toString();
    lastName = json['last_name']?.toString();
    twitterUsername = json['twitter_username']?.toString();
    portfolioUrl = json['portfolio_url']?.toString();
    bio = json['bio']?.toString();
    location = json['location']?.toString();
    links = (json['links'] != null)
        ? ImageModelUserLinks.fromJson(json['links'])
        : null;
    profileImage = (json['profile_image'] != null)
        ? ImageModelUserProfileImage.fromJson(json['profile_image'])
        : null;
    instagramUsername = json['instagram_username']?.toString();
    totalCollections = json['total_collections']?.toInt();
    totalLikes = json['total_likes']?.toInt();
    totalPhotos = json['total_photos']?.toInt();
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social = (json['social'] != null)
        ? ImageModelUserSocial.fromJson(json['social'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['updated_at'] = updatedAt;
    data['username'] = username;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['twitter_username'] = twitterUsername;
    data['portfolio_url'] = portfolioUrl;
    data['bio'] = bio;
    data['location'] = location;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    if (profileImage != null) {
      data['profile_image'] = profileImage!.toJson();
    }
    data['instagram_username'] = instagramUsername;
    data['total_collections'] = totalCollections;
    data['total_likes'] = totalLikes;
    data['total_photos'] = totalPhotos;
    data['accepted_tos'] = acceptedTos;
    data['for_hire'] = forHire;
    if (social != null) {
      data['social'] = social!.toJson();
    }
    return data;
  }
}

class ImageModelTopicSubmissionsBlockchain {
  String? status;
  String? approvedOn;

  ImageModelTopicSubmissionsBlockchain({
    this.status,
    this.approvedOn,
  });
  ImageModelTopicSubmissionsBlockchain.fromJson(Map<String, dynamic> json) {
    status = json['status']?.toString();
    approvedOn = json['approved_on']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['approved_on'] = approvedOn;
    return data;
  }
}

class ImageModelTopicSubmissions {
  ImageModelTopicSubmissionsBlockchain? blockchain;

  ImageModelTopicSubmissions({
    this.blockchain,
  });
  ImageModelTopicSubmissions.fromJson(Map<String, dynamic> json) {
    blockchain = (json['blockchain'] != null)
        ? ImageModelTopicSubmissionsBlockchain.fromJson(json['blockchain'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (blockchain != null) {
      data['blockchain'] = blockchain!.toJson();
    }
    return data;
  }
}

class ImageModelSponsorshipSponsorSocial {
  String? instagramUsername;
  String? portfolioUrl;
  String? twitterUsername;
  String? paypalEmail;

  ImageModelSponsorshipSponsorSocial({
    this.instagramUsername,
    this.portfolioUrl,
    this.twitterUsername,
    this.paypalEmail,
  });
  ImageModelSponsorshipSponsorSocial.fromJson(Map<String, dynamic> json) {
    instagramUsername = json['instagram_username']?.toString();
    portfolioUrl = json['portfolio_url']?.toString();
    twitterUsername = json['twitter_username']?.toString();
    paypalEmail = json['paypal_email']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['instagram_username'] = instagramUsername;
    data['portfolio_url'] = portfolioUrl;
    data['twitter_username'] = twitterUsername;
    data['paypal_email'] = paypalEmail;
    return data;
  }
}

class ImageModelSponsorshipSponsorProfileImage {
  String? small;
  String? medium;
  String? large;

  ImageModelSponsorshipSponsorProfileImage({
    this.small,
    this.medium,
    this.large,
  });
  ImageModelSponsorshipSponsorProfileImage.fromJson(Map<String, dynamic> json) {
    small = json['small']?.toString();
    medium = json['medium']?.toString();
    large = json['large']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['small'] = small;
    data['medium'] = medium;
    data['large'] = large;
    return data;
  }
}

class ImageModelSponsorshipSponsorLinks {
  String? self;
  String? html;
  String? photos;
  String? likes;
  String? portfolio;
  String? following;
  String? followers;

  ImageModelSponsorshipSponsorLinks({
    this.self,
    this.html,
    this.photos,
    this.likes,
    this.portfolio,
    this.following,
    this.followers,
  });
  ImageModelSponsorshipSponsorLinks.fromJson(Map<String, dynamic> json) {
    self = json['self']?.toString();
    html = json['html']?.toString();
    photos = json['photos']?.toString();
    likes = json['likes']?.toString();
    portfolio = json['portfolio']?.toString();
    following = json['following']?.toString();
    followers = json['followers']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['self'] = self;
    data['html'] = html;
    data['photos'] = photos;
    data['likes'] = likes;
    data['portfolio'] = portfolio;
    data['following'] = following;
    data['followers'] = followers;
    return data;
  }
}

class ImageModelSponsorshipSponsor {
  String? id;
  String? updatedAt;
  String? username;
  String? name;
  String? firstName;
  String? lastName;
  String? twitterUsername;
  String? portfolioUrl;
  String? bio;
  String? location;
  ImageModelSponsorshipSponsorLinks? links;
  ImageModelSponsorshipSponsorProfileImage? profileImage;
  String? instagramUsername;
  int? totalCollections;
  int? totalLikes;
  int? totalPhotos;
  bool? acceptedTos;
  bool? forHire;
  ImageModelSponsorshipSponsorSocial? social;

  ImageModelSponsorshipSponsor({
    this.id,
    this.updatedAt,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.twitterUsername,
    this.portfolioUrl,
    this.bio,
    this.location,
    this.links,
    this.profileImage,
    this.instagramUsername,
    this.totalCollections,
    this.totalLikes,
    this.totalPhotos,
    this.acceptedTos,
    this.forHire,
    this.social,
  });
  ImageModelSponsorshipSponsor.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    updatedAt = json['updated_at']?.toString();
    username = json['username']?.toString();
    name = json['name']?.toString();
    firstName = json['first_name']?.toString();
    lastName = json['last_name']?.toString();
    twitterUsername = json['twitter_username']?.toString();
    portfolioUrl = json['portfolio_url']?.toString();
    bio = json['bio']?.toString();
    location = json['location']?.toString();
    links = (json['links'] != null)
        ? ImageModelSponsorshipSponsorLinks.fromJson(json['links'])
        : null;
    profileImage = (json['profile_image'] != null)
        ? ImageModelSponsorshipSponsorProfileImage.fromJson(
            json['profile_image'])
        : null;
    instagramUsername = json['instagram_username']?.toString();
    totalCollections = json['total_collections']?.toInt();
    totalLikes = json['total_likes']?.toInt();
    totalPhotos = json['total_photos']?.toInt();
    acceptedTos = json['accepted_tos'];
    forHire = json['for_hire'];
    social = (json['social'] != null)
        ? ImageModelSponsorshipSponsorSocial.fromJson(json['social'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['updated_at'] = updatedAt;
    data['username'] = username;
    data['name'] = name;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['twitter_username'] = twitterUsername;
    data['portfolio_url'] = portfolioUrl;
    data['bio'] = bio;
    data['location'] = location;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    if (profileImage != null) {
      data['profile_image'] = profileImage!.toJson();
    }
    data['instagram_username'] = instagramUsername;
    data['total_collections'] = totalCollections;
    data['total_likes'] = totalLikes;
    data['total_photos'] = totalPhotos;
    data['accepted_tos'] = acceptedTos;
    data['for_hire'] = forHire;
    if (social != null) {
      data['social'] = social!.toJson();
    }
    return data;
  }
}

class ImageModelSponsorship {
  List<String?>? impressionUrls;
  String? tagline;
  String? taglineUrl;
  ImageModelSponsorshipSponsor? sponsor;

  ImageModelSponsorship({
    this.impressionUrls,
    this.tagline,
    this.taglineUrl,
    this.sponsor,
  });
  ImageModelSponsorship.fromJson(Map<String, dynamic> json) {
    if (json['impression_urls'] != null) {
      final v = json['impression_urls'];
      final arr0 = <String>[];
      v.forEach((v) {
        arr0.add(v.toString());
      });
      impressionUrls = arr0;
    }
    tagline = json['tagline']?.toString();
    taglineUrl = json['tagline_url']?.toString();
    sponsor = (json['sponsor'] != null)
        ? ImageModelSponsorshipSponsor.fromJson(json['sponsor'])
        : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (impressionUrls != null) {
      final v = impressionUrls;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['impression_urls'] = arr0;
    }
    data['tagline'] = tagline;
    data['tagline_url'] = taglineUrl;
    if (sponsor != null) {
      data['sponsor'] = sponsor!.toJson();
    }
    return data;
  }
}

class ImageModelLinks {
  String? self;
  String? html;
  String? download;
  String? downloadLocation;

  ImageModelLinks({
    this.self,
    this.html,
    this.download,
    this.downloadLocation,
  });
  ImageModelLinks.fromJson(Map<String, dynamic> json) {
    self = json['self']?.toString();
    html = json['html']?.toString();
    download = json['download']?.toString();
    downloadLocation = json['download_location']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['self'] = self;
    data['html'] = html;
    data['download'] = download;
    data['download_location'] = downloadLocation;
    return data;
  }
}

class ImageModelUrls {
  String? raw;
  String? full;
  String? regular;
  String? small;
  String? thumb;
  String? smallS3;

  ImageModelUrls({
    this.raw,
    this.full,
    this.regular,
    this.small,
    this.thumb,
    this.smallS3,
  });
  ImageModelUrls.fromJson(Map<String, dynamic> json) {
    raw = json['raw']?.toString();
    full = json['full']?.toString();
    regular = json['regular']?.toString();
    small = json['small']?.toString();
    thumb = json['thumb']?.toString();
    smallS3 = json['small_s3']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['raw'] = raw;
    data['full'] = full;
    data['regular'] = regular;
    data['small'] = small;
    data['thumb'] = thumb;
    data['small_s3'] = smallS3;
    return data;
  }
}

class ImageModel {
  String? id;
  String? createdAt;
  String? updatedAt;
  String? promotedAt;
  int? width;
  int? height;
  String? color;
  String? blurHash;
  String? description;
  String? altDescription;
  ImageModelUrls? urls;
  ImageModelLinks? links;
  int? likes;
  bool? likedByUser;
  ImageModelSponsorship? sponsorship;
  ImageModelTopicSubmissions? topicSubmissions;
  ImageModelUser? user;

  ImageModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.promotedAt,
    this.width,
    this.height,
    this.color,
    this.blurHash,
    this.description,
    this.altDescription,
    this.urls,
    this.links,
    this.likes,
    this.likedByUser,
    this.sponsorship,
    this.topicSubmissions,
    this.user,
  });
  ImageModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    createdAt = json['created_at']?.toString();
    updatedAt = json['updated_at']?.toString();
    promotedAt = json['promoted_at']?.toString();
    width = json['width']?.toInt();
    height = json['height']?.toInt();
    color = json['color']?.toString();
    blurHash = json['blur_hash']?.toString();
    description = json['description']?.toString();
    altDescription = json['alt_description']?.toString();
    urls =
        (json['urls'] != null) ? ImageModelUrls.fromJson(json['urls']) : null;
    links = (json['links'] != null)
        ? ImageModelLinks.fromJson(json['links'])
        : null;
    likes = json['likes']?.toInt();
    likedByUser = json['liked_by_user'];
    sponsorship = (json['sponsorship'] != null)
        ? ImageModelSponsorship.fromJson(json['sponsorship'])
        : null;
    topicSubmissions = (json['topic_submissions'] != null)
        ? ImageModelTopicSubmissions.fromJson(json['topic_submissions'])
        : null;
    user =
        (json['user'] != null) ? ImageModelUser.fromJson(json['user']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['promoted_at'] = promotedAt;
    data['width'] = width;
    data['height'] = height;
    data['color'] = color;
    data['blur_hash'] = blurHash;
    data['description'] = description;
    data['alt_description'] = altDescription;
    if (urls != null) {
      data['urls'] = urls!.toJson();
    }
    if (links != null) {
      data['links'] = links!.toJson();
    }
    data['likes'] = likes;
    data['liked_by_user'] = likedByUser;
    if (sponsorship != null) {
      data['sponsorship'] = sponsorship!.toJson();
    }
    if (topicSubmissions != null) {
      data['topic_submissions'] = topicSubmissions!.toJson();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}
