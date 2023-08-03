class AlbumModel {
  int? _statusCode;
  String? _message;
  Data? _data;

  AlbumModel({int? statusCode, String? message, Data? data}) {
    if (statusCode != null) {
      _statusCode = statusCode;
    }
    if (message != null) {
      _message = message;
    }
    if (data != null) {
      _data = data;
    }
  }

  int? get statusCode => _statusCode;
  set statusCode(int? statusCode) => _statusCode = statusCode;
  String? get message => _message;
  set message(String? message) => _message = message;
  Data? get data => _data;
  set data(Data? data) => _data = data;

  AlbumModel.fromJson(Map<String, dynamic> json) {
    _statusCode = json['status_code'];
    _message = json['message'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = _statusCode;
    data['message'] = _message;
    if (_data != null) {
      data['data'] = _data!.toJson();
    }
    return data;
  }
}

class Data {
  PlaylistData? _playlistData;
  List<Tracks>? _tracks;

  Data({PlaylistData? playlistData, List<Tracks>? tracks}) {
    if (playlistData != null) {
      _playlistData = playlistData;
    }
    if (tracks != null) {
      _tracks = tracks;
    }
  }

  PlaylistData? get playlistData => _playlistData;
  set playlistData(PlaylistData? playlistData) => _playlistData = playlistData;
  List<Tracks>? get tracks => _tracks;
  set tracks(List<Tracks>? tracks) => _tracks = tracks;

  Data.fromJson(Map<String, dynamic> json) {
    _playlistData = json['playlistData'] != null
        ? new PlaylistData.fromJson(json['playlistData'])
        : null;
    if (json['tracks'] != null) {
      _tracks = <Tracks>[];
      json['tracks'].forEach((v) {
        _tracks!.add(new Tracks.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (_playlistData != null) {
      data['playlistData'] = _playlistData!.toJson();
    }
    if (_tracks != null) {
      data['tracks'] = _tracks!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PlaylistData {
  int? _createdAt;
  int? _updatedAt;
  String? _id;
  bool? _isSearchable;
  bool? _isLatestEdition;
  bool? _isUserCreated;
  String? _name;
  String? _thumbnail;
  String? _languageID;
  Null? _categoryIDs;
  String? _fromDate;
  String? _publishDate;
  String? _contentTypeId;
  bool? _isAlbum;
  String? _status;
  String? _artist;
  String? _createdBy;
  bool? _isPinned;
  bool? _isFavourite;
  int? _trackCount;

  PlaylistData(
      {int? createdAt,
        int? updatedAt,
        String? id,
        bool? isSearchable,
        bool? isLatestEdition,
        bool? isUserCreated,
        String? name,
        String? thumbnail,
        String? languageID,
        Null? categoryIDs,
        String? fromDate,
        String? publishDate,
        String? contentTypeId,
        bool? isAlbum,
        String? status,
        String? artist,
        String? createdBy,
        bool? isPinned,
        bool? isFavourite,
        int? trackCount}) {
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
    if (id != null) {
      _id = id;
    }
    if (isSearchable != null) {
      _isSearchable = isSearchable;
    }
    if (isLatestEdition != null) {
      _isLatestEdition = isLatestEdition;
    }
    if (isUserCreated != null) {
      _isUserCreated = isUserCreated;
    }
    if (name != null) {
      _name = name;
    }
    if (thumbnail != null) {
      _thumbnail = thumbnail;
    }
    if (languageID != null) {
      _languageID = languageID;
    }
    if (categoryIDs != null) {
      _categoryIDs = categoryIDs;
    }
    if (fromDate != null) {
      _fromDate = fromDate;
    }
    if (publishDate != null) {
      _publishDate = publishDate;
    }
    if (contentTypeId != null) {
      _contentTypeId = contentTypeId;
    }
    if (isAlbum != null) {
      _isAlbum = isAlbum;
    }
    if (status != null) {
      _status = status;
    }
    if (artist != null) {
      _artist = artist;
    }
    if (createdBy != null) {
      _createdBy = createdBy;
    }
    if (isPinned != null) {
      _isPinned = isPinned;
    }
    if (isFavourite != null) {
      _isFavourite = isFavourite;
    }
    if (trackCount != null) {
      _trackCount = trackCount;
    }
  }

  int? get createdAt => _createdAt;
  set createdAt(int? createdAt) => _createdAt = createdAt;
  int? get updatedAt => _updatedAt;
  set updatedAt(int? updatedAt) => _updatedAt = updatedAt;
  String? get id => _id;
  set id(String? id) => _id = id;
  bool? get isSearchable => _isSearchable;
  set isSearchable(bool? isSearchable) => _isSearchable = isSearchable;
  bool? get isLatestEdition => _isLatestEdition;
  set isLatestEdition(bool? isLatestEdition) =>
      _isLatestEdition = isLatestEdition;
  bool? get isUserCreated => _isUserCreated;
  set isUserCreated(bool? isUserCreated) => _isUserCreated = isUserCreated;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get thumbnail => _thumbnail;
  set thumbnail(String? thumbnail) => _thumbnail = thumbnail;
  String? get languageID => _languageID;
  set languageID(String? languageID) => _languageID = languageID;
  Null? get categoryIDs => _categoryIDs;
  set categoryIDs(Null? categoryIDs) => _categoryIDs = categoryIDs;
  String? get fromDate => _fromDate;
  set fromDate(String? fromDate) => _fromDate = fromDate;
  String? get publishDate => _publishDate;
  set publishDate(String? publishDate) => _publishDate = publishDate;
  String? get contentTypeId => _contentTypeId;
  set contentTypeId(String? contentTypeId) => _contentTypeId = contentTypeId;
  bool? get isAlbum => _isAlbum;
  set isAlbum(bool? isAlbum) => _isAlbum = isAlbum;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get artist => _artist;
  set artist(String? artist) => _artist = artist;
  String? get createdBy => _createdBy;
  set createdBy(String? createdBy) => _createdBy = createdBy;
  bool? get isPinned => _isPinned;
  set isPinned(bool? isPinned) => _isPinned = isPinned;
  bool? get isFavourite => _isFavourite;
  set isFavourite(bool? isFavourite) => _isFavourite = isFavourite;
  int? get trackCount => _trackCount;
  set trackCount(int? trackCount) => _trackCount = trackCount;

  PlaylistData.fromJson(Map<String, dynamic> json) {
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _id = json['id'];
    _isSearchable = json['isSearchable'];
    _isLatestEdition = json['isLatestEdition'];
    _isUserCreated = json['isUserCreated'];
    _name = json['name'];
    _thumbnail = json['thumbnail'];
    _languageID = json['languageID'];
    _categoryIDs = json['categoryIDs'];
    _fromDate = json['fromDate'];
    _publishDate = json['publishDate'];
    _contentTypeId = json['contentTypeId'];
    _isAlbum = json['isAlbum'];
    _status = json['status'];
    _artist = json['artist'];
    _createdBy = json['createdBy'];
    _isPinned = json['isPinned'];
    _isFavourite = json['isFavourite'];
    _trackCount = json['trackCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = _createdAt;
    data['updatedAt'] = _updatedAt;
    data['id'] = _id;
    data['isSearchable'] = _isSearchable;
    data['isLatestEdition'] = _isLatestEdition;
    data['isUserCreated'] = _isUserCreated;
    data['name'] = _name;
    data['thumbnail'] = _thumbnail;
    data['languageID'] = _languageID;
    data['categoryIDs'] = _categoryIDs;
    data['fromDate'] = _fromDate;
    data['publishDate'] = _publishDate;
    data['contentTypeId'] = _contentTypeId;
    data['isAlbum'] = _isAlbum;
    data['status'] = _status;
    data['artist'] = _artist;
    data['createdBy'] = _createdBy;
    data['isPinned'] = _isPinned;
    data['isFavourite'] = _isFavourite;
    data['trackCount'] = _trackCount;
    return data;
  }
}

class Tracks {
  String? _sId;
  String? _playlistId;
  String? _trackId;
  int? _sequence;
  int? _createdAt;
  int? _updatedAt;
  TrackDetails? _trackDetails;

  Tracks(
      {String? sId,
        String? playlistId,
        String? trackId,
        int? sequence,
        int? createdAt,
        int? updatedAt,
        TrackDetails? trackDetails}) {
    if (sId != null) {
      _sId = sId;
    }
    if (playlistId != null) {
      _playlistId = playlistId;
    }
    if (trackId != null) {
      _trackId = trackId;
    }
    if (sequence != null) {
      _sequence = sequence;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
    if (trackDetails != null) {
      _trackDetails = trackDetails;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get playlistId => _playlistId;
  set playlistId(String? playlistId) => _playlistId = playlistId;
  String? get trackId => _trackId;
  set trackId(String? trackId) => _trackId = trackId;
  int? get sequence => _sequence;
  set sequence(int? sequence) => _sequence = sequence;
  int? get createdAt => _createdAt;
  set createdAt(int? createdAt) => _createdAt = createdAt;
  int? get updatedAt => _updatedAt;
  set updatedAt(int? updatedAt) => _updatedAt = updatedAt;
  TrackDetails? get trackDetails => _trackDetails;
  set trackDetails(TrackDetails? trackDetails) => _trackDetails = trackDetails;

  Tracks.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _playlistId = json['playlistId'];
    _trackId = json['trackId'];
    _sequence = json['sequence'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _trackDetails = json['trackDetails'] != null
        ? new TrackDetails.fromJson(json['trackDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = _sId;
    data['playlistId'] = _playlistId;
    data['trackId'] = _trackId;
    data['sequence'] = _sequence;
    data['createdAt'] = _createdAt;
    data['updatedAt'] = _updatedAt;
    if (_trackDetails != null) {
      data['trackDetails'] = _trackDetails!.toJson();
    }
    return data;
  }
}

class TrackDetails {
  String? _sId;
  String? _name;
  String? _nameGuj;
  String? _nameHin;
  String? _description;
  String? _place;
  bool? _isSearchable;
  bool? _isTrending;
  String? _fromDate;
  String? _status;
  String? _artist;
  String? _lyricistId;
  String? _lyrics;
  bool? _shouldDisplayLyrics;
  String? _languageID;
  List<String>? _categoryIDs;
  String? _thumbnail;
  String? _publishDate;
  String? _albumId;
  String? _contentTypeId;
  int? _createdAt;
  int? _updatedAt;
  String? _createdBy;
  String? _dateOfPravachan;
  String? _useThumbnailType;
  int? _duration;
  String? _mediaName;
  bool? _isListen;
  bool? _isFavourite;

  TrackDetails(
      {String? sId,
        String? name,
        String? nameGuj,
        String? nameHin,
        String? description,
        String? place,
        bool? isSearchable,
        bool? isTrending,
        String? fromDate,
        String? status,
        String? artist,
        String? lyricistId,
        String? lyrics,
        bool? shouldDisplayLyrics,
        String? languageID,
        List<String>? categoryIDs,
        String? thumbnail,
        String? publishDate,
        String? albumId,
        String? contentTypeId,
        int? createdAt,
        int? updatedAt,
        String? createdBy,
        String? dateOfPravachan,
        String? useThumbnailType,
        int? duration,
        String? mediaName,
        bool? isListen,
        bool? isFavourite}) {
    if (sId != null) {
      _sId = sId;
    }
    if (name != null) {
      _name = name;
    }
    if (nameGuj != null) {
      _nameGuj = nameGuj;
    }
    if (nameHin != null) {
      _nameHin = nameHin;
    }
    if (description != null) {
      _description = description;
    }
    if (place != null) {
      _place = place;
    }
    if (isSearchable != null) {
      _isSearchable = isSearchable;
    }
    if (isTrending != null) {
      _isTrending = isTrending;
    }
    if (fromDate != null) {
      _fromDate = fromDate;
    }
    if (status != null) {
      _status = status;
    }
    if (artist != null) {
      _artist = artist;
    }
    if (lyricistId != null) {
      _lyricistId = lyricistId;
    }
    if (lyrics != null) {
      _lyrics = lyrics;
    }
    if (shouldDisplayLyrics != null) {
      _shouldDisplayLyrics = shouldDisplayLyrics;
    }
    if (languageID != null) {
      _languageID = languageID;
    }
    if (categoryIDs != null) {
      _categoryIDs = categoryIDs;
    }
    if (thumbnail != null) {
      _thumbnail = thumbnail;
    }
    if (publishDate != null) {
      _publishDate = publishDate;
    }
    if (albumId != null) {
      _albumId = albumId;
    }
    if (contentTypeId != null) {
      _contentTypeId = contentTypeId;
    }
    if (createdAt != null) {
      _createdAt = createdAt;
    }
    if (updatedAt != null) {
      _updatedAt = updatedAt;
    }
    if (createdBy != null) {
      _createdBy = createdBy;
    }
    if (dateOfPravachan != null) {
      _dateOfPravachan = dateOfPravachan;
    }
    if (useThumbnailType != null) {
      _useThumbnailType = useThumbnailType;
    }
    if (duration != null) {
      _duration = duration;
    }
    if (mediaName != null) {
      _mediaName = mediaName;
    }
    if (isListen != null) {
      _isListen = isListen;
    }
    if (isFavourite != null) {
      _isFavourite = isFavourite;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get name => _name;
  set name(String? name) => _name = name;
  String? get nameGuj => _nameGuj;
  set nameGuj(String? nameGuj) => _nameGuj = nameGuj;
  String? get nameHin => _nameHin;
  set nameHin(String? nameHin) => _nameHin = nameHin;
  String? get description => _description;
  set description(String? description) => _description = description;
  String? get place => _place;
  set place(String? place) => _place = place;
  bool? get isSearchable => _isSearchable;
  set isSearchable(bool? isSearchable) => _isSearchable = isSearchable;
  bool? get isTrending => _isTrending;
  set isTrending(bool? isTrending) => _isTrending = isTrending;
  String? get fromDate => _fromDate;
  set fromDate(String? fromDate) => _fromDate = fromDate;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get artist => _artist;
  set artist(String? artist) => _artist = artist;
  String? get lyricistId => _lyricistId;
  set lyricistId(String? lyricistId) => _lyricistId = lyricistId;
  String? get lyrics => _lyrics;
  set lyrics(String? lyrics) => _lyrics = lyrics;
  bool? get shouldDisplayLyrics => _shouldDisplayLyrics;
  set shouldDisplayLyrics(bool? shouldDisplayLyrics) =>
      _shouldDisplayLyrics = shouldDisplayLyrics;
  String? get languageID => _languageID;
  set languageID(String? languageID) => _languageID = languageID;
  List<String>? get categoryIDs => _categoryIDs;
  set categoryIDs(List<String>? categoryIDs) => _categoryIDs = categoryIDs;
  String? get thumbnail => _thumbnail;
  set thumbnail(String? thumbnail) => _thumbnail = thumbnail;
  String? get publishDate => _publishDate;
  set publishDate(String? publishDate) => _publishDate = publishDate;
  String? get albumId => _albumId;
  set albumId(String? albumId) => _albumId = albumId;
  String? get contentTypeId => _contentTypeId;
  set contentTypeId(String? contentTypeId) => _contentTypeId = contentTypeId;
  int? get createdAt => _createdAt;
  set createdAt(int? createdAt) => _createdAt = createdAt;
  int? get updatedAt => _updatedAt;
  set updatedAt(int? updatedAt) => _updatedAt = updatedAt;
  String? get createdBy => _createdBy;
  set createdBy(String? createdBy) => _createdBy = createdBy;
  String? get dateOfPravachan => _dateOfPravachan;
  set dateOfPravachan(String? dateOfPravachan) =>
      _dateOfPravachan = dateOfPravachan;
  String? get useThumbnailType => _useThumbnailType;
  set useThumbnailType(String? useThumbnailType) =>
      _useThumbnailType = useThumbnailType;
  int? get duration => _duration;
  set duration(int? duration) => _duration = duration;
  String? get mediaName => _mediaName;
  set mediaName(String? mediaName) => _mediaName = mediaName;
  bool? get isListen => _isListen;
  set isListen(bool? isListen) => _isListen = isListen;
  bool? get isFavourite => _isFavourite;
  set isFavourite(bool? isFavourite) => _isFavourite = isFavourite;

  TrackDetails.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _name = json['name'];
    _nameGuj = json['name_guj'];
    _nameHin = json['name_hin'];
    _description = json['description'];
    _place = json['place'];
    _isSearchable = json['isSearchable'];
    _isTrending = json['isTrending'];
    _fromDate = json['fromDate'];
    _status = json['status'];
    _artist = json['artist'];
    _lyricistId = json['lyricistId'];
    _lyrics = json['lyrics'];
    _shouldDisplayLyrics = json['should_display_lyrics'];
    _languageID = json['languageID'];
    _categoryIDs = json['categoryIDs'].cast<String>();
    _thumbnail = json['thumbnail'];
    _publishDate = json['publishDate'];
    _albumId = json['albumId'];
    _contentTypeId = json['contentTypeId'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _createdBy = json['createdBy'];
    _dateOfPravachan = json['dateOfPravachan'];
    _useThumbnailType = json['use_thumbnail_type'];
    _duration = json['duration'];
    _mediaName = json['mediaName'];
    _isListen = json['isListen'];
    _isFavourite = json['isFavourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = _sId;
    data['name'] = _name;
    data['name_guj'] = _nameGuj;
    data['name_hin'] = _nameHin;
    data['description'] = _description;
    data['place'] = _place;
    data['isSearchable'] = _isSearchable;
    data['isTrending'] = _isTrending;
    data['fromDate'] = _fromDate;
    data['status'] = _status;
    data['artist'] = _artist;
    data['lyricistId'] = _lyricistId;
    data['lyrics'] = _lyrics;
    data['should_display_lyrics'] = _shouldDisplayLyrics;
    data['languageID'] = _languageID;
    data['categoryIDs'] = _categoryIDs;
    data['thumbnail'] = _thumbnail;
    data['publishDate'] = _publishDate;
    data['albumId'] = _albumId;
    data['contentTypeId'] = _contentTypeId;
    data['createdAt'] = _createdAt;
    data['updatedAt'] = _updatedAt;
    data['createdBy'] = _createdBy;
    data['dateOfPravachan'] = _dateOfPravachan;
    data['use_thumbnail_type'] = _useThumbnailType;
    data['duration'] = _duration;
    data['mediaName'] = _mediaName;
    data['isListen'] = _isListen;
    data['isFavourite'] = _isFavourite;
    return data;
  }
}
