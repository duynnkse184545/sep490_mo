// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CurrentUserTblTable extends CurrentUserTbl
    with TableInfo<$CurrentUserTblTable, CurrentUserEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrentUserTblTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
    'user_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayNameMeta = const VerificationMeta(
    'displayName',
  );
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
    'display_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _avatarUrlMeta = const VerificationMeta(
    'avatarUrl',
  );
  @override
  late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>(
    'avatar_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _frameUrlMeta = const VerificationMeta(
    'frameUrl',
  );
  @override
  late final GeneratedColumn<String> frameUrl = GeneratedColumn<String>(
    'frame_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _bioMeta = const VerificationMeta('bio');
  @override
  late final GeneratedColumn<String> bio = GeneratedColumn<String>(
    'bio',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
    'role',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pointsMeta = const VerificationMeta('points');
  @override
  late final GeneratedColumn<int> points = GeneratedColumn<int>(
    'points',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidPointsMeta = const VerificationMeta(
    'paidPoints',
  );
  @override
  late final GeneratedColumn<int> paidPoints = GeneratedColumn<int>(
    'paid_points',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translateLanguageMeta = const VerificationMeta(
    'translateLanguage',
  );
  @override
  late final GeneratedColumn<String> translateLanguage =
      GeneratedColumn<String>(
        'translate_language',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
  );
  static const VerificationMeta _totalBadgesMeta = const VerificationMeta(
    'totalBadges',
  );
  @override
  late final GeneratedColumn<int> totalBadges = GeneratedColumn<int>(
    'total_badges',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalFanHubsMeta = const VerificationMeta(
    'totalFanHubs',
  );
  @override
  late final GeneratedColumn<int> totalFanHubs = GeneratedColumn<int>(
    'total_fan_hubs',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalReceivedGiftsMeta =
      const VerificationMeta('totalReceivedGifts');
  @override
  late final GeneratedColumn<int> totalReceivedGifts = GeneratedColumn<int>(
    'total_received_gifts',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _displayBadgesMeta = const VerificationMeta(
    'displayBadges',
  );
  @override
  late final GeneratedColumn<String> displayBadges = GeneratedColumn<String>(
    'display_badges',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _allBadgesMeta = const VerificationMeta(
    'allBadges',
  );
  @override
  late final GeneratedColumn<String> allBadges = GeneratedColumn<String>(
    'all_badges',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    userId,
    username,
    email,
    displayName,
    avatarUrl,
    frameUrl,
    bio,
    role,
    points,
    paidPoints,
    translateLanguage,
    createdAt,
    updatedAt,
    isActive,
    totalBadges,
    totalFanHubs,
    totalReceivedGifts,
    displayBadges,
    allBadges,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'current_user_tbl';
  @override
  VerificationContext validateIntegrity(
    Insertable<CurrentUserEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(
        _userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta),
      );
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('display_name')) {
      context.handle(
        _displayNameMeta,
        displayName.isAcceptableOrUnknown(
          data['display_name']!,
          _displayNameMeta,
        ),
      );
    }
    if (data.containsKey('avatar_url')) {
      context.handle(
        _avatarUrlMeta,
        avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta),
      );
    }
    if (data.containsKey('frame_url')) {
      context.handle(
        _frameUrlMeta,
        frameUrl.isAcceptableOrUnknown(data['frame_url']!, _frameUrlMeta),
      );
    }
    if (data.containsKey('bio')) {
      context.handle(
        _bioMeta,
        bio.isAcceptableOrUnknown(data['bio']!, _bioMeta),
      );
    } else if (isInserting) {
      context.missing(_bioMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
        _roleMeta,
        role.isAcceptableOrUnknown(data['role']!, _roleMeta),
      );
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('points')) {
      context.handle(
        _pointsMeta,
        points.isAcceptableOrUnknown(data['points']!, _pointsMeta),
      );
    } else if (isInserting) {
      context.missing(_pointsMeta);
    }
    if (data.containsKey('paid_points')) {
      context.handle(
        _paidPointsMeta,
        paidPoints.isAcceptableOrUnknown(data['paid_points']!, _paidPointsMeta),
      );
    } else if (isInserting) {
      context.missing(_paidPointsMeta);
    }
    if (data.containsKey('translate_language')) {
      context.handle(
        _translateLanguageMeta,
        translateLanguage.isAcceptableOrUnknown(
          data['translate_language']!,
          _translateLanguageMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    } else if (isInserting) {
      context.missing(_isActiveMeta);
    }
    if (data.containsKey('total_badges')) {
      context.handle(
        _totalBadgesMeta,
        totalBadges.isAcceptableOrUnknown(
          data['total_badges']!,
          _totalBadgesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalBadgesMeta);
    }
    if (data.containsKey('total_fan_hubs')) {
      context.handle(
        _totalFanHubsMeta,
        totalFanHubs.isAcceptableOrUnknown(
          data['total_fan_hubs']!,
          _totalFanHubsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalFanHubsMeta);
    }
    if (data.containsKey('total_received_gifts')) {
      context.handle(
        _totalReceivedGiftsMeta,
        totalReceivedGifts.isAcceptableOrUnknown(
          data['total_received_gifts']!,
          _totalReceivedGiftsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalReceivedGiftsMeta);
    }
    if (data.containsKey('display_badges')) {
      context.handle(
        _displayBadgesMeta,
        displayBadges.isAcceptableOrUnknown(
          data['display_badges']!,
          _displayBadgesMeta,
        ),
      );
    }
    if (data.containsKey('all_badges')) {
      context.handle(
        _allBadgesMeta,
        allBadges.isAcceptableOrUnknown(data['all_badges']!, _allBadgesMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CurrentUserEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CurrentUserEntity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      userId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}user_id'],
      )!,
      username: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}username'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      displayName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_name'],
      ),
      avatarUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_url'],
      ),
      frameUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}frame_url'],
      ),
      bio: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bio'],
      )!,
      role: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}role'],
      )!,
      points: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}points'],
      )!,
      paidPoints: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}paid_points'],
      )!,
      translateLanguage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translate_language'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
      totalBadges: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_badges'],
      )!,
      totalFanHubs: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_fan_hubs'],
      )!,
      totalReceivedGifts: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_received_gifts'],
      )!,
      displayBadges: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}display_badges'],
      ),
      allBadges: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}all_badges'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $CurrentUserTblTable createAlias(String alias) {
    return $CurrentUserTblTable(attachedDatabase, alias);
  }
}

class CurrentUserEntity extends DataClass
    implements Insertable<CurrentUserEntity> {
  final int id;
  final int userId;
  final String username;
  final String email;
  final String? displayName;
  final String? avatarUrl;
  final String? frameUrl;
  final String bio;
  final String role;
  final int points;
  final int paidPoints;
  final String? translateLanguage;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isActive;
  final int totalBadges;
  final int totalFanHubs;
  final int totalReceivedGifts;
  final String? displayBadges;
  final String? allBadges;
  final DateTime cachedAt;
  const CurrentUserEntity({
    required this.id,
    required this.userId,
    required this.username,
    required this.email,
    this.displayName,
    this.avatarUrl,
    this.frameUrl,
    required this.bio,
    required this.role,
    required this.points,
    required this.paidPoints,
    this.translateLanguage,
    required this.createdAt,
    required this.updatedAt,
    required this.isActive,
    required this.totalBadges,
    required this.totalFanHubs,
    required this.totalReceivedGifts,
    this.displayBadges,
    this.allBadges,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['username'] = Variable<String>(username);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    if (!nullToAbsent || frameUrl != null) {
      map['frame_url'] = Variable<String>(frameUrl);
    }
    map['bio'] = Variable<String>(bio);
    map['role'] = Variable<String>(role);
    map['points'] = Variable<int>(points);
    map['paid_points'] = Variable<int>(paidPoints);
    if (!nullToAbsent || translateLanguage != null) {
      map['translate_language'] = Variable<String>(translateLanguage);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_active'] = Variable<bool>(isActive);
    map['total_badges'] = Variable<int>(totalBadges);
    map['total_fan_hubs'] = Variable<int>(totalFanHubs);
    map['total_received_gifts'] = Variable<int>(totalReceivedGifts);
    if (!nullToAbsent || displayBadges != null) {
      map['display_badges'] = Variable<String>(displayBadges);
    }
    if (!nullToAbsent || allBadges != null) {
      map['all_badges'] = Variable<String>(allBadges);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  CurrentUserTblCompanion toCompanion(bool nullToAbsent) {
    return CurrentUserTblCompanion(
      id: Value(id),
      userId: Value(userId),
      username: Value(username),
      email: Value(email),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      frameUrl: frameUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(frameUrl),
      bio: Value(bio),
      role: Value(role),
      points: Value(points),
      paidPoints: Value(paidPoints),
      translateLanguage: translateLanguage == null && nullToAbsent
          ? const Value.absent()
          : Value(translateLanguage),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isActive: Value(isActive),
      totalBadges: Value(totalBadges),
      totalFanHubs: Value(totalFanHubs),
      totalReceivedGifts: Value(totalReceivedGifts),
      displayBadges: displayBadges == null && nullToAbsent
          ? const Value.absent()
          : Value(displayBadges),
      allBadges: allBadges == null && nullToAbsent
          ? const Value.absent()
          : Value(allBadges),
      cachedAt: Value(cachedAt),
    );
  }

  factory CurrentUserEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CurrentUserEntity(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),
      frameUrl: serializer.fromJson<String?>(json['frameUrl']),
      bio: serializer.fromJson<String>(json['bio']),
      role: serializer.fromJson<String>(json['role']),
      points: serializer.fromJson<int>(json['points']),
      paidPoints: serializer.fromJson<int>(json['paidPoints']),
      translateLanguage: serializer.fromJson<String?>(
        json['translateLanguage'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isActive: serializer.fromJson<bool>(json['isActive']),
      totalBadges: serializer.fromJson<int>(json['totalBadges']),
      totalFanHubs: serializer.fromJson<int>(json['totalFanHubs']),
      totalReceivedGifts: serializer.fromJson<int>(json['totalReceivedGifts']),
      displayBadges: serializer.fromJson<String?>(json['displayBadges']),
      allBadges: serializer.fromJson<String?>(json['allBadges']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'displayName': serializer.toJson<String?>(displayName),
      'avatarUrl': serializer.toJson<String?>(avatarUrl),
      'frameUrl': serializer.toJson<String?>(frameUrl),
      'bio': serializer.toJson<String>(bio),
      'role': serializer.toJson<String>(role),
      'points': serializer.toJson<int>(points),
      'paidPoints': serializer.toJson<int>(paidPoints),
      'translateLanguage': serializer.toJson<String?>(translateLanguage),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isActive': serializer.toJson<bool>(isActive),
      'totalBadges': serializer.toJson<int>(totalBadges),
      'totalFanHubs': serializer.toJson<int>(totalFanHubs),
      'totalReceivedGifts': serializer.toJson<int>(totalReceivedGifts),
      'displayBadges': serializer.toJson<String?>(displayBadges),
      'allBadges': serializer.toJson<String?>(allBadges),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  CurrentUserEntity copyWith({
    int? id,
    int? userId,
    String? username,
    String? email,
    Value<String?> displayName = const Value.absent(),
    Value<String?> avatarUrl = const Value.absent(),
    Value<String?> frameUrl = const Value.absent(),
    String? bio,
    String? role,
    int? points,
    int? paidPoints,
    Value<String?> translateLanguage = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isActive,
    int? totalBadges,
    int? totalFanHubs,
    int? totalReceivedGifts,
    Value<String?> displayBadges = const Value.absent(),
    Value<String?> allBadges = const Value.absent(),
    DateTime? cachedAt,
  }) => CurrentUserEntity(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    username: username ?? this.username,
    email: email ?? this.email,
    displayName: displayName.present ? displayName.value : this.displayName,
    avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,
    frameUrl: frameUrl.present ? frameUrl.value : this.frameUrl,
    bio: bio ?? this.bio,
    role: role ?? this.role,
    points: points ?? this.points,
    paidPoints: paidPoints ?? this.paidPoints,
    translateLanguage: translateLanguage.present
        ? translateLanguage.value
        : this.translateLanguage,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isActive: isActive ?? this.isActive,
    totalBadges: totalBadges ?? this.totalBadges,
    totalFanHubs: totalFanHubs ?? this.totalFanHubs,
    totalReceivedGifts: totalReceivedGifts ?? this.totalReceivedGifts,
    displayBadges: displayBadges.present
        ? displayBadges.value
        : this.displayBadges,
    allBadges: allBadges.present ? allBadges.value : this.allBadges,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  CurrentUserEntity copyWithCompanion(CurrentUserTblCompanion data) {
    return CurrentUserEntity(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      username: data.username.present ? data.username.value : this.username,
      email: data.email.present ? data.email.value : this.email,
      displayName: data.displayName.present
          ? data.displayName.value
          : this.displayName,
      avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,
      frameUrl: data.frameUrl.present ? data.frameUrl.value : this.frameUrl,
      bio: data.bio.present ? data.bio.value : this.bio,
      role: data.role.present ? data.role.value : this.role,
      points: data.points.present ? data.points.value : this.points,
      paidPoints: data.paidPoints.present
          ? data.paidPoints.value
          : this.paidPoints,
      translateLanguage: data.translateLanguage.present
          ? data.translateLanguage.value
          : this.translateLanguage,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
      totalBadges: data.totalBadges.present
          ? data.totalBadges.value
          : this.totalBadges,
      totalFanHubs: data.totalFanHubs.present
          ? data.totalFanHubs.value
          : this.totalFanHubs,
      totalReceivedGifts: data.totalReceivedGifts.present
          ? data.totalReceivedGifts.value
          : this.totalReceivedGifts,
      displayBadges: data.displayBadges.present
          ? data.displayBadges.value
          : this.displayBadges,
      allBadges: data.allBadges.present ? data.allBadges.value : this.allBadges,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CurrentUserEntity(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('frameUrl: $frameUrl, ')
          ..write('bio: $bio, ')
          ..write('role: $role, ')
          ..write('points: $points, ')
          ..write('paidPoints: $paidPoints, ')
          ..write('translateLanguage: $translateLanguage, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isActive: $isActive, ')
          ..write('totalBadges: $totalBadges, ')
          ..write('totalFanHubs: $totalFanHubs, ')
          ..write('totalReceivedGifts: $totalReceivedGifts, ')
          ..write('displayBadges: $displayBadges, ')
          ..write('allBadges: $allBadges, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    userId,
    username,
    email,
    displayName,
    avatarUrl,
    frameUrl,
    bio,
    role,
    points,
    paidPoints,
    translateLanguage,
    createdAt,
    updatedAt,
    isActive,
    totalBadges,
    totalFanHubs,
    totalReceivedGifts,
    displayBadges,
    allBadges,
    cachedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CurrentUserEntity &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.username == this.username &&
          other.email == this.email &&
          other.displayName == this.displayName &&
          other.avatarUrl == this.avatarUrl &&
          other.frameUrl == this.frameUrl &&
          other.bio == this.bio &&
          other.role == this.role &&
          other.points == this.points &&
          other.paidPoints == this.paidPoints &&
          other.translateLanguage == this.translateLanguage &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isActive == this.isActive &&
          other.totalBadges == this.totalBadges &&
          other.totalFanHubs == this.totalFanHubs &&
          other.totalReceivedGifts == this.totalReceivedGifts &&
          other.displayBadges == this.displayBadges &&
          other.allBadges == this.allBadges &&
          other.cachedAt == this.cachedAt);
}

class CurrentUserTblCompanion extends UpdateCompanion<CurrentUserEntity> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> username;
  final Value<String> email;
  final Value<String?> displayName;
  final Value<String?> avatarUrl;
  final Value<String?> frameUrl;
  final Value<String> bio;
  final Value<String> role;
  final Value<int> points;
  final Value<int> paidPoints;
  final Value<String?> translateLanguage;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isActive;
  final Value<int> totalBadges;
  final Value<int> totalFanHubs;
  final Value<int> totalReceivedGifts;
  final Value<String?> displayBadges;
  final Value<String?> allBadges;
  final Value<DateTime> cachedAt;
  const CurrentUserTblCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.frameUrl = const Value.absent(),
    this.bio = const Value.absent(),
    this.role = const Value.absent(),
    this.points = const Value.absent(),
    this.paidPoints = const Value.absent(),
    this.translateLanguage = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isActive = const Value.absent(),
    this.totalBadges = const Value.absent(),
    this.totalFanHubs = const Value.absent(),
    this.totalReceivedGifts = const Value.absent(),
    this.displayBadges = const Value.absent(),
    this.allBadges = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  CurrentUserTblCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String username,
    required String email,
    this.displayName = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.frameUrl = const Value.absent(),
    required String bio,
    required String role,
    required int points,
    required int paidPoints,
    this.translateLanguage = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isActive,
    required int totalBadges,
    required int totalFanHubs,
    required int totalReceivedGifts,
    this.displayBadges = const Value.absent(),
    this.allBadges = const Value.absent(),
    this.cachedAt = const Value.absent(),
  }) : userId = Value(userId),
       username = Value(username),
       email = Value(email),
       bio = Value(bio),
       role = Value(role),
       points = Value(points),
       paidPoints = Value(paidPoints),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt),
       isActive = Value(isActive),
       totalBadges = Value(totalBadges),
       totalFanHubs = Value(totalFanHubs),
       totalReceivedGifts = Value(totalReceivedGifts);
  static Insertable<CurrentUserEntity> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? username,
    Expression<String>? email,
    Expression<String>? displayName,
    Expression<String>? avatarUrl,
    Expression<String>? frameUrl,
    Expression<String>? bio,
    Expression<String>? role,
    Expression<int>? points,
    Expression<int>? paidPoints,
    Expression<String>? translateLanguage,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isActive,
    Expression<int>? totalBadges,
    Expression<int>? totalFanHubs,
    Expression<int>? totalReceivedGifts,
    Expression<String>? displayBadges,
    Expression<String>? allBadges,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (displayName != null) 'display_name': displayName,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (frameUrl != null) 'frame_url': frameUrl,
      if (bio != null) 'bio': bio,
      if (role != null) 'role': role,
      if (points != null) 'points': points,
      if (paidPoints != null) 'paid_points': paidPoints,
      if (translateLanguage != null) 'translate_language': translateLanguage,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isActive != null) 'is_active': isActive,
      if (totalBadges != null) 'total_badges': totalBadges,
      if (totalFanHubs != null) 'total_fan_hubs': totalFanHubs,
      if (totalReceivedGifts != null)
        'total_received_gifts': totalReceivedGifts,
      if (displayBadges != null) 'display_badges': displayBadges,
      if (allBadges != null) 'all_badges': allBadges,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  CurrentUserTblCompanion copyWith({
    Value<int>? id,
    Value<int>? userId,
    Value<String>? username,
    Value<String>? email,
    Value<String?>? displayName,
    Value<String?>? avatarUrl,
    Value<String?>? frameUrl,
    Value<String>? bio,
    Value<String>? role,
    Value<int>? points,
    Value<int>? paidPoints,
    Value<String?>? translateLanguage,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? isActive,
    Value<int>? totalBadges,
    Value<int>? totalFanHubs,
    Value<int>? totalReceivedGifts,
    Value<String?>? displayBadges,
    Value<String?>? allBadges,
    Value<DateTime>? cachedAt,
  }) {
    return CurrentUserTblCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      frameUrl: frameUrl ?? this.frameUrl,
      bio: bio ?? this.bio,
      role: role ?? this.role,
      points: points ?? this.points,
      paidPoints: paidPoints ?? this.paidPoints,
      translateLanguage: translateLanguage ?? this.translateLanguage,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isActive: isActive ?? this.isActive,
      totalBadges: totalBadges ?? this.totalBadges,
      totalFanHubs: totalFanHubs ?? this.totalFanHubs,
      totalReceivedGifts: totalReceivedGifts ?? this.totalReceivedGifts,
      displayBadges: displayBadges ?? this.displayBadges,
      allBadges: allBadges ?? this.allBadges,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (frameUrl.present) {
      map['frame_url'] = Variable<String>(frameUrl.value);
    }
    if (bio.present) {
      map['bio'] = Variable<String>(bio.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (points.present) {
      map['points'] = Variable<int>(points.value);
    }
    if (paidPoints.present) {
      map['paid_points'] = Variable<int>(paidPoints.value);
    }
    if (translateLanguage.present) {
      map['translate_language'] = Variable<String>(translateLanguage.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (totalBadges.present) {
      map['total_badges'] = Variable<int>(totalBadges.value);
    }
    if (totalFanHubs.present) {
      map['total_fan_hubs'] = Variable<int>(totalFanHubs.value);
    }
    if (totalReceivedGifts.present) {
      map['total_received_gifts'] = Variable<int>(totalReceivedGifts.value);
    }
    if (displayBadges.present) {
      map['display_badges'] = Variable<String>(displayBadges.value);
    }
    if (allBadges.present) {
      map['all_badges'] = Variable<String>(allBadges.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrentUserTblCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('displayName: $displayName, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('frameUrl: $frameUrl, ')
          ..write('bio: $bio, ')
          ..write('role: $role, ')
          ..write('points: $points, ')
          ..write('paidPoints: $paidPoints, ')
          ..write('translateLanguage: $translateLanguage, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isActive: $isActive, ')
          ..write('totalBadges: $totalBadges, ')
          ..write('totalFanHubs: $totalFanHubs, ')
          ..write('totalReceivedGifts: $totalReceivedGifts, ')
          ..write('displayBadges: $displayBadges, ')
          ..write('allBadges: $allBadges, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $PostTblTable extends PostTbl with TableInfo<$PostTblTable, PostEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostTblTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _postIdMeta = const VerificationMeta('postId');
  @override
  late final GeneratedColumn<int> postId = GeneratedColumn<int>(
    'post_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fanHubIdMeta = const VerificationMeta(
    'fanHubId',
  );
  @override
  late final GeneratedColumn<int> fanHubId = GeneratedColumn<int>(
    'fan_hub_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _postDataMeta = const VerificationMeta(
    'postData',
  );
  @override
  late final GeneratedColumn<String> postData = GeneratedColumn<String>(
    'post_data',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    postId,
    fanHubId,
    postData,
    createdAt,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'post_tbl';
  @override
  VerificationContext validateIntegrity(
    Insertable<PostEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('post_id')) {
      context.handle(
        _postIdMeta,
        postId.isAcceptableOrUnknown(data['post_id']!, _postIdMeta),
      );
    }
    if (data.containsKey('fan_hub_id')) {
      context.handle(
        _fanHubIdMeta,
        fanHubId.isAcceptableOrUnknown(data['fan_hub_id']!, _fanHubIdMeta),
      );
    } else if (isInserting) {
      context.missing(_fanHubIdMeta);
    }
    if (data.containsKey('post_data')) {
      context.handle(
        _postDataMeta,
        postData.isAcceptableOrUnknown(data['post_data']!, _postDataMeta),
      );
    } else if (isInserting) {
      context.missing(_postDataMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {postId};
  @override
  PostEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostEntity(
      postId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}post_id'],
      )!,
      fanHubId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}fan_hub_id'],
      )!,
      postData: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}post_data'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $PostTblTable createAlias(String alias) {
    return $PostTblTable(attachedDatabase, alias);
  }
}

class PostEntity extends DataClass implements Insertable<PostEntity> {
  final int postId;
  final int fanHubId;

  ///When would you normalize?
  ///      * If you need to query inside the cache (e.g., "Get all VIDEO posts").
  ///      * If the cache grows to thousands of rows and you need to optimize storage.
  final String postData;
  final DateTime createdAt;
  final DateTime cachedAt;
  const PostEntity({
    required this.postId,
    required this.fanHubId,
    required this.postData,
    required this.createdAt,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['post_id'] = Variable<int>(postId);
    map['fan_hub_id'] = Variable<int>(fanHubId);
    map['post_data'] = Variable<String>(postData);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  PostTblCompanion toCompanion(bool nullToAbsent) {
    return PostTblCompanion(
      postId: Value(postId),
      fanHubId: Value(fanHubId),
      postData: Value(postData),
      createdAt: Value(createdAt),
      cachedAt: Value(cachedAt),
    );
  }

  factory PostEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostEntity(
      postId: serializer.fromJson<int>(json['postId']),
      fanHubId: serializer.fromJson<int>(json['fanHubId']),
      postData: serializer.fromJson<String>(json['postData']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'postId': serializer.toJson<int>(postId),
      'fanHubId': serializer.toJson<int>(fanHubId),
      'postData': serializer.toJson<String>(postData),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  PostEntity copyWith({
    int? postId,
    int? fanHubId,
    String? postData,
    DateTime? createdAt,
    DateTime? cachedAt,
  }) => PostEntity(
    postId: postId ?? this.postId,
    fanHubId: fanHubId ?? this.fanHubId,
    postData: postData ?? this.postData,
    createdAt: createdAt ?? this.createdAt,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  PostEntity copyWithCompanion(PostTblCompanion data) {
    return PostEntity(
      postId: data.postId.present ? data.postId.value : this.postId,
      fanHubId: data.fanHubId.present ? data.fanHubId.value : this.fanHubId,
      postData: data.postData.present ? data.postData.value : this.postData,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PostEntity(')
          ..write('postId: $postId, ')
          ..write('fanHubId: $fanHubId, ')
          ..write('postData: $postData, ')
          ..write('createdAt: $createdAt, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(postId, fanHubId, postData, createdAt, cachedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostEntity &&
          other.postId == this.postId &&
          other.fanHubId == this.fanHubId &&
          other.postData == this.postData &&
          other.createdAt == this.createdAt &&
          other.cachedAt == this.cachedAt);
}

class PostTblCompanion extends UpdateCompanion<PostEntity> {
  final Value<int> postId;
  final Value<int> fanHubId;
  final Value<String> postData;
  final Value<DateTime> createdAt;
  final Value<DateTime> cachedAt;
  const PostTblCompanion({
    this.postId = const Value.absent(),
    this.fanHubId = const Value.absent(),
    this.postData = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  PostTblCompanion.insert({
    this.postId = const Value.absent(),
    required int fanHubId,
    required String postData,
    required DateTime createdAt,
    this.cachedAt = const Value.absent(),
  }) : fanHubId = Value(fanHubId),
       postData = Value(postData),
       createdAt = Value(createdAt);
  static Insertable<PostEntity> custom({
    Expression<int>? postId,
    Expression<int>? fanHubId,
    Expression<String>? postData,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (postId != null) 'post_id': postId,
      if (fanHubId != null) 'fan_hub_id': fanHubId,
      if (postData != null) 'post_data': postData,
      if (createdAt != null) 'created_at': createdAt,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  PostTblCompanion copyWith({
    Value<int>? postId,
    Value<int>? fanHubId,
    Value<String>? postData,
    Value<DateTime>? createdAt,
    Value<DateTime>? cachedAt,
  }) {
    return PostTblCompanion(
      postId: postId ?? this.postId,
      fanHubId: fanHubId ?? this.fanHubId,
      postData: postData ?? this.postData,
      createdAt: createdAt ?? this.createdAt,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (postId.present) {
      map['post_id'] = Variable<int>(postId.value);
    }
    if (fanHubId.present) {
      map['fan_hub_id'] = Variable<int>(fanHubId.value);
    }
    if (postData.present) {
      map['post_data'] = Variable<String>(postData.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostTblCompanion(')
          ..write('postId: $postId, ')
          ..write('fanHubId: $fanHubId, ')
          ..write('postData: $postData, ')
          ..write('createdAt: $createdAt, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CurrentUserTblTable currentUserTbl = $CurrentUserTblTable(this);
  late final $PostTblTable postTbl = $PostTblTable(this);
  late final UserDao userDao = UserDao(this as AppDatabase);
  late final PostDao postDao = PostDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [currentUserTbl, postTbl];
}

typedef $$CurrentUserTblTableCreateCompanionBuilder =
    CurrentUserTblCompanion Function({
      Value<int> id,
      required int userId,
      required String username,
      required String email,
      Value<String?> displayName,
      Value<String?> avatarUrl,
      Value<String?> frameUrl,
      required String bio,
      required String role,
      required int points,
      required int paidPoints,
      Value<String?> translateLanguage,
      required DateTime createdAt,
      required DateTime updatedAt,
      required bool isActive,
      required int totalBadges,
      required int totalFanHubs,
      required int totalReceivedGifts,
      Value<String?> displayBadges,
      Value<String?> allBadges,
      Value<DateTime> cachedAt,
    });
typedef $$CurrentUserTblTableUpdateCompanionBuilder =
    CurrentUserTblCompanion Function({
      Value<int> id,
      Value<int> userId,
      Value<String> username,
      Value<String> email,
      Value<String?> displayName,
      Value<String?> avatarUrl,
      Value<String?> frameUrl,
      Value<String> bio,
      Value<String> role,
      Value<int> points,
      Value<int> paidPoints,
      Value<String?> translateLanguage,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> isActive,
      Value<int> totalBadges,
      Value<int> totalFanHubs,
      Value<int> totalReceivedGifts,
      Value<String?> displayBadges,
      Value<String?> allBadges,
      Value<DateTime> cachedAt,
    });

class $$CurrentUserTblTableFilterComposer
    extends Composer<_$AppDatabase, $CurrentUserTblTable> {
  $$CurrentUserTblTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get frameUrl => $composableBuilder(
    column: $table.frameUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bio => $composableBuilder(
    column: $table.bio,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get points => $composableBuilder(
    column: $table.points,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get paidPoints => $composableBuilder(
    column: $table.paidPoints,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translateLanguage => $composableBuilder(
    column: $table.translateLanguage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalBadges => $composableBuilder(
    column: $table.totalBadges,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalFanHubs => $composableBuilder(
    column: $table.totalFanHubs,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalReceivedGifts => $composableBuilder(
    column: $table.totalReceivedGifts,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get displayBadges => $composableBuilder(
    column: $table.displayBadges,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get allBadges => $composableBuilder(
    column: $table.allBadges,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CurrentUserTblTableOrderingComposer
    extends Composer<_$AppDatabase, $CurrentUserTblTable> {
  $$CurrentUserTblTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get userId => $composableBuilder(
    column: $table.userId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarUrl => $composableBuilder(
    column: $table.avatarUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get frameUrl => $composableBuilder(
    column: $table.frameUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bio => $composableBuilder(
    column: $table.bio,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get role => $composableBuilder(
    column: $table.role,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get points => $composableBuilder(
    column: $table.points,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get paidPoints => $composableBuilder(
    column: $table.paidPoints,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translateLanguage => $composableBuilder(
    column: $table.translateLanguage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalBadges => $composableBuilder(
    column: $table.totalBadges,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalFanHubs => $composableBuilder(
    column: $table.totalFanHubs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalReceivedGifts => $composableBuilder(
    column: $table.totalReceivedGifts,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get displayBadges => $composableBuilder(
    column: $table.displayBadges,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get allBadges => $composableBuilder(
    column: $table.allBadges,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CurrentUserTblTableAnnotationComposer
    extends Composer<_$AppDatabase, $CurrentUserTblTable> {
  $$CurrentUserTblTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get displayName => $composableBuilder(
    column: $table.displayName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get avatarUrl =>
      $composableBuilder(column: $table.avatarUrl, builder: (column) => column);

  GeneratedColumn<String> get frameUrl =>
      $composableBuilder(column: $table.frameUrl, builder: (column) => column);

  GeneratedColumn<String> get bio =>
      $composableBuilder(column: $table.bio, builder: (column) => column);

  GeneratedColumn<String> get role =>
      $composableBuilder(column: $table.role, builder: (column) => column);

  GeneratedColumn<int> get points =>
      $composableBuilder(column: $table.points, builder: (column) => column);

  GeneratedColumn<int> get paidPoints => $composableBuilder(
    column: $table.paidPoints,
    builder: (column) => column,
  );

  GeneratedColumn<String> get translateLanguage => $composableBuilder(
    column: $table.translateLanguage,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);

  GeneratedColumn<int> get totalBadges => $composableBuilder(
    column: $table.totalBadges,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalFanHubs => $composableBuilder(
    column: $table.totalFanHubs,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalReceivedGifts => $composableBuilder(
    column: $table.totalReceivedGifts,
    builder: (column) => column,
  );

  GeneratedColumn<String> get displayBadges => $composableBuilder(
    column: $table.displayBadges,
    builder: (column) => column,
  );

  GeneratedColumn<String> get allBadges =>
      $composableBuilder(column: $table.allBadges, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$CurrentUserTblTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CurrentUserTblTable,
          CurrentUserEntity,
          $$CurrentUserTblTableFilterComposer,
          $$CurrentUserTblTableOrderingComposer,
          $$CurrentUserTblTableAnnotationComposer,
          $$CurrentUserTblTableCreateCompanionBuilder,
          $$CurrentUserTblTableUpdateCompanionBuilder,
          (
            CurrentUserEntity,
            BaseReferences<
              _$AppDatabase,
              $CurrentUserTblTable,
              CurrentUserEntity
            >,
          ),
          CurrentUserEntity,
          PrefetchHooks Function()
        > {
  $$CurrentUserTblTableTableManager(
    _$AppDatabase db,
    $CurrentUserTblTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CurrentUserTblTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CurrentUserTblTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CurrentUserTblTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> userId = const Value.absent(),
                Value<String> username = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<String?> frameUrl = const Value.absent(),
                Value<String> bio = const Value.absent(),
                Value<String> role = const Value.absent(),
                Value<int> points = const Value.absent(),
                Value<int> paidPoints = const Value.absent(),
                Value<String?> translateLanguage = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> totalBadges = const Value.absent(),
                Value<int> totalFanHubs = const Value.absent(),
                Value<int> totalReceivedGifts = const Value.absent(),
                Value<String?> displayBadges = const Value.absent(),
                Value<String?> allBadges = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => CurrentUserTblCompanion(
                id: id,
                userId: userId,
                username: username,
                email: email,
                displayName: displayName,
                avatarUrl: avatarUrl,
                frameUrl: frameUrl,
                bio: bio,
                role: role,
                points: points,
                paidPoints: paidPoints,
                translateLanguage: translateLanguage,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isActive: isActive,
                totalBadges: totalBadges,
                totalFanHubs: totalFanHubs,
                totalReceivedGifts: totalReceivedGifts,
                displayBadges: displayBadges,
                allBadges: allBadges,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int userId,
                required String username,
                required String email,
                Value<String?> displayName = const Value.absent(),
                Value<String?> avatarUrl = const Value.absent(),
                Value<String?> frameUrl = const Value.absent(),
                required String bio,
                required String role,
                required int points,
                required int paidPoints,
                Value<String?> translateLanguage = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                required bool isActive,
                required int totalBadges,
                required int totalFanHubs,
                required int totalReceivedGifts,
                Value<String?> displayBadges = const Value.absent(),
                Value<String?> allBadges = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => CurrentUserTblCompanion.insert(
                id: id,
                userId: userId,
                username: username,
                email: email,
                displayName: displayName,
                avatarUrl: avatarUrl,
                frameUrl: frameUrl,
                bio: bio,
                role: role,
                points: points,
                paidPoints: paidPoints,
                translateLanguage: translateLanguage,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isActive: isActive,
                totalBadges: totalBadges,
                totalFanHubs: totalFanHubs,
                totalReceivedGifts: totalReceivedGifts,
                displayBadges: displayBadges,
                allBadges: allBadges,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CurrentUserTblTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CurrentUserTblTable,
      CurrentUserEntity,
      $$CurrentUserTblTableFilterComposer,
      $$CurrentUserTblTableOrderingComposer,
      $$CurrentUserTblTableAnnotationComposer,
      $$CurrentUserTblTableCreateCompanionBuilder,
      $$CurrentUserTblTableUpdateCompanionBuilder,
      (
        CurrentUserEntity,
        BaseReferences<_$AppDatabase, $CurrentUserTblTable, CurrentUserEntity>,
      ),
      CurrentUserEntity,
      PrefetchHooks Function()
    >;
typedef $$PostTblTableCreateCompanionBuilder =
    PostTblCompanion Function({
      Value<int> postId,
      required int fanHubId,
      required String postData,
      required DateTime createdAt,
      Value<DateTime> cachedAt,
    });
typedef $$PostTblTableUpdateCompanionBuilder =
    PostTblCompanion Function({
      Value<int> postId,
      Value<int> fanHubId,
      Value<String> postData,
      Value<DateTime> createdAt,
      Value<DateTime> cachedAt,
    });

class $$PostTblTableFilterComposer
    extends Composer<_$AppDatabase, $PostTblTable> {
  $$PostTblTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get postId => $composableBuilder(
    column: $table.postId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fanHubId => $composableBuilder(
    column: $table.fanHubId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get postData => $composableBuilder(
    column: $table.postData,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PostTblTableOrderingComposer
    extends Composer<_$AppDatabase, $PostTblTable> {
  $$PostTblTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get postId => $composableBuilder(
    column: $table.postId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fanHubId => $composableBuilder(
    column: $table.fanHubId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get postData => $composableBuilder(
    column: $table.postData,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PostTblTableAnnotationComposer
    extends Composer<_$AppDatabase, $PostTblTable> {
  $$PostTblTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get postId =>
      $composableBuilder(column: $table.postId, builder: (column) => column);

  GeneratedColumn<int> get fanHubId =>
      $composableBuilder(column: $table.fanHubId, builder: (column) => column);

  GeneratedColumn<String> get postData =>
      $composableBuilder(column: $table.postData, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$PostTblTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PostTblTable,
          PostEntity,
          $$PostTblTableFilterComposer,
          $$PostTblTableOrderingComposer,
          $$PostTblTableAnnotationComposer,
          $$PostTblTableCreateCompanionBuilder,
          $$PostTblTableUpdateCompanionBuilder,
          (
            PostEntity,
            BaseReferences<_$AppDatabase, $PostTblTable, PostEntity>,
          ),
          PostEntity,
          PrefetchHooks Function()
        > {
  $$PostTblTableTableManager(_$AppDatabase db, $PostTblTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PostTblTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PostTblTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PostTblTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> postId = const Value.absent(),
                Value<int> fanHubId = const Value.absent(),
                Value<String> postData = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => PostTblCompanion(
                postId: postId,
                fanHubId: fanHubId,
                postData: postData,
                createdAt: createdAt,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> postId = const Value.absent(),
                required int fanHubId,
                required String postData,
                required DateTime createdAt,
                Value<DateTime> cachedAt = const Value.absent(),
              }) => PostTblCompanion.insert(
                postId: postId,
                fanHubId: fanHubId,
                postData: postData,
                createdAt: createdAt,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PostTblTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PostTblTable,
      PostEntity,
      $$PostTblTableFilterComposer,
      $$PostTblTableOrderingComposer,
      $$PostTblTableAnnotationComposer,
      $$PostTblTableCreateCompanionBuilder,
      $$PostTblTableUpdateCompanionBuilder,
      (PostEntity, BaseReferences<_$AppDatabase, $PostTblTable, PostEntity>),
      PostEntity,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CurrentUserTblTableTableManager get currentUserTbl =>
      $$CurrentUserTblTableTableManager(_db, _db.currentUserTbl);
  $$PostTblTableTableManager get postTbl =>
      $$PostTblTableTableManager(_db, _db.postTbl);
}
