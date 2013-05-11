.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field private static final LOGD:Z = true

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Ringtone"

.field private static final defAlarmFolder:Ljava/lang/String; = "alarms/"

.field private static final defAudioPath:Ljava/lang/String; = "/system/media/audio/"

.field private static final defNotifyFolder:Ljava/lang/String; = "notifications/"

.field private static final defRingtoneFolder:Ljava/lang/String; = "ringtones/"


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private isLooping:Z

.field private final mAllowRemote:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mLocalPlayer:Landroid/media/MediaPlayer;

.field private mLock:Ljava/lang/Object;

.field private final mRemotePlayer:Landroid/media/IRingtonePlayer;

.field private final mRemoteToken:Landroid/os/Binder;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "allowRemote"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mLock:Ljava/lang/Object;

    .line 481
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 95
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 97
    iput-boolean p2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    .line 98
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    .line 99
    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :cond_0
    iput-object v1, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    .line 100
    return-void

    :cond_1
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private destroyLocalPlayer()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Landroid/media/Ringtone;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 328
    iget-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 330
    monitor-exit v1

    .line 332
    :cond_0
    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getActualMediaContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .parameter "uri"

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 444
    const/4 v1, 0x0

    .line 447
    .local v1, settingsType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    :goto_0
    if-eqz v1, :cond_0

    .line 453
    const-string/jumbo v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 463
    .end local v1           #settingsType:Ljava/lang/String;
    .end local p1
    :cond_0
    :goto_1
    return-object p1

    .line 448
    .restart local v1       #settingsType:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 456
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 459
    :cond_2
    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1
.end method

.method private getDefaultTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "actualTitle"

    .prologue
    .line 502
    const-string v1, ""

    .line 503
    .local v1, title:Ljava/lang/String;
    const/4 v0, -0x1

    .line 509
    .local v0, prefix:I
    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 510
    const v0, 0x4070035

    .line 519
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    :goto_1
    return-object v1

    .line 511
    :cond_1
    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 512
    const v0, 0x4070036

    goto :goto_0

    .line 513
    :cond_2
    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 516
    const-string v2, "Ringtone"

    const-string v3, "No prefix"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 522
    :cond_3
    move-object v1, p2

    goto :goto_1
.end method

.method private getDefaultUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 391
    .local v0, returnUri:Landroid/net/Uri;
    iget-object v1, p0, Landroid/media/Ringtone;->mDefaultUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 392
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->getSettingsDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 398
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->getFactoryDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 401
    :cond_0
    return-object v0

    .line 394
    :cond_1
    iget-object v0, p0, Landroid/media/Ringtone;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getFactoryDefaultUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 405
    const-string v0, "/system/media/audio/"

    .line 407
    .local v0, returnUri:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ringtones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x4070038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 409
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "alarms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x407003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    goto :goto_0

    .line 412
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x4070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    goto :goto_0

    .line 407
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSettingsDefaultUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "streamType"

    .prologue
    .line 421
    packed-switch p1, :pswitch_data_0

    .line 427
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 423
    :pswitch_0
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 425
    :pswitch_1
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"

    .prologue
    const/4 v4, 0x0

    .line 136
    const/4 v9, 0x0

    .line 137
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 141
    .local v11, title:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 142
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTitle from uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, authority:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/media/audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, actualTitle:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-direct {p0, v1, v2}, Landroid/media/Ringtone;->getDefaultTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    .end local v6           #actualTitle:[Ljava/lang/String;
    .end local v8           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 149
    .restart local v8       #authority:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 150
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "Ringtone"

    const-string/jumbo v2, "there is no actual static file in system storage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v10           #e:Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v1, "settings"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    if-eqz p3, :cond_2

    .line 156
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 158
    .local v7, actualUri:Landroid/net/Uri;
    invoke-direct {p0, p1, v7, v4}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, actualTitle:Ljava/lang/String;
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v6}, Landroid/media/Ringtone;->getDefaultTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 192
    .end local v6           #actualTitle:Ljava/lang/String;
    .end local v7           #actualUri:Landroid/net/Uri;
    .end local v8           #authority:Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v11, :cond_3

    .line 193
    const v1, 0x1040407

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 195
    if-nez v11, :cond_3

    .line 196
    const-string v11, ""

    :cond_3
    move-object v1, v11

    .line 200
    goto :goto_0

    .line 168
    .restart local v8       #authority:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v1, "drm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 169
    sget-object v2, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 178
    :cond_5
    :goto_2
    if-eqz v9, :cond_7

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 179
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 180
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 185
    if-eqz v9, :cond_0

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 170
    :cond_6
    :try_start_3
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    sget-object v2, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    goto :goto_2

    .line 182
    :cond_7
    :try_start_4
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 185
    if-eqz v9, :cond_2

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_8

    .line 186
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_8
    throw v1

    .line 173
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private isUriFromSettingsDB(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 434
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 439
    :goto_0
    return v0

    .line 436
    :catch_0
    move-exception v0

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidUri(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    .line 363
    const/4 v1, 0x0

    .line 364
    .local v1, fd:Landroid/content/res/AssetFileDescriptor;
    const/4 v2, 0x0

    .line 366
    .local v2, isValid:Z
    if-eqz p1, :cond_1

    .line 368
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 382
    .end local v3           #scheme:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 372
    .restart local v3       #scheme:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 373
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 377
    .end local v3           #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Ringtone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is invalid !!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getStreamType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v2, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 341
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    .line 351
    :goto_0
    return v1

    .line 342
    :cond_0
    iget-boolean v2, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v2, :cond_1

    .line 344
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->isPlaying(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "Ringtone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem checking ringtone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "Ringtone"

    const-string v3, "Neither local nor remote playback available"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public play()V
    .locals 5

    .prologue
    .line 272
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 283
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 285
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 286
    const-string v1, "Ringtone"

    const-string/jumbo v2, "there is no music for ringtone, even factory default one, ends with empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Landroid/media/Ringtone;->isLooping:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 293
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 295
    :cond_2
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_4

    .line 297
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 298
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 300
    :cond_3
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    iget v4, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem playing ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v1, "Ringtone"

    const-string v2, "Neither local nor remote playback available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDefaultUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 470
    iput-object p1, p0, Landroid/media/Ringtone;->mDefaultUri:Landroid/net/Uri;

    .line 471
    return-void
.end method

.method public setLooping(Z)V
    .locals 0
    .parameter "isLooping"

    .prologue
    .line 477
    iput-boolean p1, p0, Landroid/media/Ringtone;->isLooping:Z

    .line 478
    return-void
.end method

.method public setStreamType(I)V
    .locals 1
    .parameter "streamType"

    .prologue
    .line 108
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 112
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 113
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 356
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    .line 212
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 214
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 216
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->isUriFromSettingsDB(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->getActualMediaContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 225
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Landroid/media/Ringtone;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " set from AP is invalid, try fallback one"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 228
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    .line 237
    :try_start_0
    iget-object v2, p0, Landroid/media/Ringtone;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :try_start_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 239
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 240
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 241
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 256
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully created local player with uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/SecurityException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 244
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_3

    .line 245
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 249
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-nez v1, :cond_3

    .line 250
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote playback not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 258
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    const-string v1, "Ringtone"

    const-string v2, "Problem opening; delegating to remote player"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 313
    iget-object v1, p0, Landroid/media/Ringtone;->mLocalPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 314
    invoke-direct {p0}, Landroid/media/Ringtone;->destroyLocalPlayer()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-boolean v1, p0, Landroid/media/Ringtone;->mAllowRemote:Z

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mRemotePlayer:Landroid/media/IRingtonePlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->mRemoteToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Ringtone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem stopping ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
