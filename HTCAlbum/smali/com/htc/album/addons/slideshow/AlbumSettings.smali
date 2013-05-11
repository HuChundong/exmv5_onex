.class public Lcom/htc/album/addons/slideshow/AlbumSettings;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "AlbumSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;,
        Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;
    }
.end annotation


# static fields
.field public static final LAUNCH_SLIDE_SHOW_SETTINGS:I = 0x180d9

.field public static final LOG_TAG:Ljava/lang/String; = "AlbumSettings"

.field public static final SLIDE_SHOW_ASK_MUSIC_KEY:Ljava/lang/String; = "slide_show_ask_music_setting"

.field public static final SLIDE_SHOW_FOLDER_PICKER_KEY:Ljava/lang/String; = "slide_show_folder_picker_setting"

.field public static final SLIDE_SHOW_MUSIC_DISPLAY_KEY:Ljava/lang/String; = "slide_show_music_display"

.field public static final SLIDE_SHOW_MUSIC_ENABLE_KEY:Ljava/lang/String; = "slide_show_music_enable_setting"

.field public static final SLIDE_SHOW_MUSIC_FILE_PATH_KEY:Ljava/lang/String; = "slide_show_music_file_path"

.field public static final SLIDE_SHOW_MUSIC_PICKER_KEY:Ljava/lang/String; = "slide_show_music_picker_setting"

.field public static final SLIDE_SHOW_ORIENTATION_KEY:Ljava/lang/String; = "slide_show_orientation_setting"

.field public static final SLIDE_SHOW_REPEAT_KEY:Ljava/lang/String; = "slide_show_repeat_setting"

.field public static final SLIDE_SHOW_SHUFFLE_KEY:Ljava/lang/String; = "slide_show_shuffle_setting"

.field public static final SLIDE_SHOW_SPEED_KEY:Ljava/lang/String; = "slide_show_duration_setting"

.field public static final SLIDE_SHOW_TRANS_KEY:Ljava/lang/String; = "slide_show_transition_setting"

.field private static final TAG:Ljava/lang/String; = "AlbumSettings"

.field private static final mFolderPickerRequestCode:I = 0xd673


# instance fields
.field private final SLIDESHOW_DURATION_OPTION_COUNTS:I

.field private final SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

.field private final SLIDESHOW_DURATION_OPTION_VALUES:[Ljava/lang/String;

.field private final SLIDESHOW_ORIENTATION_DEFAULT_VALUE:Ljava/lang/String;

.field private final SLIDESHOW_ORIENTATION_OPTION_COUNTS:I

.field private final SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

.field private final SLIDESHOW_ORIENTATION_OPTION_VALUES:[Ljava/lang/String;

.field private final SLIDESHOW_SPEED_DEFAULT_VALUE:Ljava/lang/String;

.field private final SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

.field private final SLIDESHOW_TRANSITION_OPTION_COUNTS:I

.field private final SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

.field private final SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

.field private final SLIDESHOW_TRANSITION_OPTION_VALUES:[Ljava/lang/String;

.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mCurrentMode:Ljava/lang/String;

.field private mFolderPicker:Lcom/htc/preference/HtcPreference;

.field private mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mMusicPickerPre:Lcom/htc/preference/HtcPreference;

.field private mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

.field private mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

.field private mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

.field private mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

.field private mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 27
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 64
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v0, v1

    const-string v3, "1"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_VALUES:[Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_COUNTS:I

    .line 76
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

    .line 82
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "3"

    aput-object v3, v0, v1

    const-string v3, "5"

    aput-object v3, v0, v2

    const-string v3, "8"

    aput-object v3, v0, v5

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_VALUES:[Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_COUNTS:I

    .line 91
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

    .line 101
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "-2"

    aput-object v3, v0, v1

    const-string v3, "6"

    aput-object v3, v0, v2

    const-string v3, "8"

    aput-object v3, v0, v5

    const-string v3, "0"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "1"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "5"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "7"

    aput-object v4, v0, v3

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_VALUES:[Ljava/lang/String;

    .line 111
    new-array v3, v7, [Z

    aput-boolean v2, v3, v1

    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v3, v2

    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_1

    :goto_1
    aput-boolean v1, v3, v5

    aput-boolean v2, v3, v6

    const/4 v0, 0x4

    aput-boolean v2, v3, v0

    const/4 v0, 0x5

    aput-boolean v2, v3, v0

    const/4 v0, 0x6

    aput-boolean v2, v3, v0

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

    .line 121
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_COUNTS:I

    .line 123
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_DEFAULT_VALUE:Ljava/lang/String;

    .line 124
    sget-boolean v0, Lcom/htc/sunnyCore/common/Constants;->FLAG_SENSE40a:Z

    if-eqz v0, :cond_2

    const-string v0, "7"

    :goto_2
    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    .line 125
    const-string v0, "3"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_SPEED_DEFAULT_VALUE:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 416
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 124
    :cond_2
    const-string v0, "6"

    goto :goto_2

    .line 64
    :array_0
    .array-data 0x4
        0x34t 0x0t 0xat 0x7ft
        0x35t 0x0t 0xat 0x7ft
    .end array-data

    .line 76
    :array_1
    .array-data 0x4
        0x30t 0x0t 0xat 0x7ft
        0x31t 0x0t 0xat 0x7ft
        0x32t 0x0t 0xat 0x7ft
    .end array-data

    .line 91
    :array_2
    .array-data 0x4
        0x28t 0x0t 0xat 0x7ft
        0x29t 0x0t 0xat 0x7ft
        0x2at 0x0t 0xat 0x7ft
        0x2bt 0x0t 0xat 0x7ft
        0x2ct 0x0t 0xat 0x7ft
        0x2dt 0x0t 0xat 0x7ft
        0x2et 0x0t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/album/addons/slideshow/SlideshowSetingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/slideshow/AlbumSettings;)Lcom/htc/preference/HtcPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    return-object v0
.end method

.method public static getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "activity"
    .parameter "contentUri"

    .prologue
    .line 342
    if-nez p1, :cond_1

    const/4 v11, 0x0

    .line 388
    :cond_0
    :goto_0
    return-object v11

    .line 343
    :cond_1
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 344
    .local v2, proj:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 345
    .local v12, strFilePath:Ljava/lang/String;
    const/4 v11, 0x0

    .line 346
    .local v11, strDisplay:Ljava/lang/String;
    const/4 v13, 0x0

    .line 348
    .local v13, strTemp:Ljava/lang/String;
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor start !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 352
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 354
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 357
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 358
    .local v6, column_index:I
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 359
    if-eqz v13, :cond_2

    move-object v12, v13

    .line 363
    :cond_2
    const/4 v13, 0x0

    .line 364
    const-string v0, "album"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 365
    .local v7, column_index_album:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 367
    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 368
    .local v8, column_index_title:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 369
    if-eqz v13, :cond_3

    move-object v11, v13

    .line 372
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v6           #column_index:I
    .end local v7           #column_index_album:I
    .end local v8           #column_index_title:I
    :cond_4
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: Query Cursor end !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-eqz v11, :cond_5

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    :cond_5
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString NG !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 375
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 376
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "AlbumSettings"

    const-string v1, "[HTCAlbum][AlbumSetting][getRealPathFromURI]: cursor.getString Exception !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "prefernce"
    .parameter "value"

    .prologue
    .line 438
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 439
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 440
    invoke-virtual {p1}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 441
    .local v1, seq:[Ljava/lang/CharSequence;
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    .end local v1           #seq:[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public getFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strFolderType"

    .prologue
    const/4 v4, 0x2

    .line 520
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 535
    :goto_0
    return-object v2

    .line 522
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 523
    .local v0, ret:[Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 525
    .local v1, type:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 526
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 528
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 530
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_1

    .line 535
    :cond_3
    aget-object v2, v0, v4

    goto :goto_0
.end method

.method public initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 589
    :goto_0
    return-object v1

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 567
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 569
    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;

    invoke-direct {v1, p0, v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 570
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpEnabled(Z)V

    .line 573
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a00ab

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 575
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    new-instance v2, Lcom/htc/album/addons/slideshow/AlbumSettings$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/slideshow/AlbumSettings$1;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    goto :goto_0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 309
    if-ne v6, p2, :cond_2

    const v5, 0x18605

    if-ne p1, v5, :cond_2

    .line 310
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 311
    .local v1, selectSoundUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, csValue:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 314
    .local v2, strFileName:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 317
    if-eqz v2, :cond_1

    .line 319
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_music_picker_setting"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local v0       #csValue:Ljava/lang/CharSequence;
    .restart local v1       #selectSoundUri:Landroid/net/Uri;
    .restart local v2       #strFileName:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0

    .line 330
    .end local v0           #csValue:Ljava/lang/CharSequence;
    .end local v1           #selectSoundUri:Landroid/net/Uri;
    .end local v2           #strFileName:Ljava/lang/String;
    :cond_2
    if-ne v6, p2, :cond_0

    const v5, 0xd673

    if-ne p1, v5, :cond_0

    .line 331
    const-string v5, "folder_type"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, strFolderType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 334
    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    const-string v6, "slide_show_folder_picker_setting"

    invoke-virtual {v5, v6, v4}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    invoke-virtual {p0, v4}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, strFolderName:Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 134
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->requestWindowFeature(I)Z

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->initActionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 136
    invoke-super/range {p0 .. p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "slideshow_setting_mode"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    .line 140
    new-instance v21, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    invoke-direct/range {v21 .. v21}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->initSlideshowSetting(Landroid/content/Context;Ljava/lang/String;)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "album_mode"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 144
    const v21, 0x7f050001

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    .line 155
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_repeat_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, strKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 158
    .local v7, entries:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 160
    .local v8, entryValues:[Ljava/lang/String;
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_shuffle_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 163
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowShufflePref:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_orientation_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 166
    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_COUNTS:I

    move/from16 v20, v0

    .line 168
    .local v20, validEntryCount:I
    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_VALUES:[Ljava/lang/String;

    .line 171
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v9, v0, :cond_6

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_ORIENTATION_OPTION_ENTRY_IDS:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v9

    .line 171
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 145
    .end local v7           #entries:[Ljava/lang/String;
    .end local v8           #entryValues:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v17           #strKey:Ljava/lang/String;
    .end local v20           #validEntryCount:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mCurrentMode:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "dock_mode"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 146
    const v21, 0x7f050002

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 149
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->finish()V

    .line 150
    const-string v21, "AlbumSettings"

    const-string v22, "[HTCAlbum][AlbumSetting][onCreate]: unknow mode !"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_5
    :goto_2
    return-void

    .line 176
    .restart local v7       #entries:[Ljava/lang/String;
    .restart local v8       #entryValues:[Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v17       #strKey:Ljava/lang/String;
    .restart local v20       #validEntryCount:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_7

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 184
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_transition_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 185
    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_COUNTS:I

    move/from16 v20, v0

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

    .local v3, arr$:[Z
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v13, :cond_a

    aget-boolean v4, v3, v10

    .line 190
    .local v4, b:Z
    if-nez v4, :cond_9

    .line 192
    add-int/lit8 v20, v20, -0x1

    .line 188
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 195
    .end local v4           #b:Z
    :cond_a
    sget-boolean v21, Lcom/htc/sunnyCore/common/Constants;->DEBUG:Z

    if-eqz v21, :cond_b

    const-string v21, "AlbumSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[HTCAlbum][AlbumSetting][onCreate]validEntryCount = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_b
    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    .line 197
    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/String;

    .line 199
    const/4 v9, 0x0

    const/4 v12, 0x0

    .local v12, j:I
    :goto_4
    move/from16 v0, v20

    if-ge v9, v0, :cond_d

    .line 201
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_INCLUDE_TABLE:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v12

    if-nez v21, :cond_c

    .line 203
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 205
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_ENTRY_IDS:[I

    move-object/from16 v22, v0

    aget v22, v22, v12

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v9

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_OPTION_VALUES:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v12

    aput-object v21, v8, v9

    .line 207
    add-int/lit8 v12, v12, 0x1

    .line 199
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 209
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_e

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 216
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_duration_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 217
    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcListPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    .line 218
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_COUNTS:I

    move/from16 v20, v0

    .line 219
    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_VALUES:[Ljava/lang/String;

    .line 222
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v9, v0, :cond_10

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_DURATION_OPTION_ENTRY_IDS:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v9

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 227
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_11

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    const-string v22, "3"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 235
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_music_enable_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    check-cast v21, Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_music_picker_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_folder_picker_setting"

    invoke-virtual/range {v21 .. v22}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getCurModeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicEnableClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    new-instance v22, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceFolderPickerClick;-><init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 257
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v21, v0

    :goto_7
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v21, v0

    :goto_8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateRepeatPref(I)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->SLIDESHOW_TRANSITION_DEFAULT_VALUE:Ljava/lang/String;

    move-object/from16 v21, v0

    :goto_9
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updatePlaybackSpeedPref(I)V

    .line 266
    const/16 v18, 0x0

    .line 267
    .local v18, strSunnary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_music_picker_setting"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 268
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 269
    .local v19, uriTemp:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 270
    .local v14, strFilename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    const/4 v11, 0x1

    .line 274
    .local v11, isEnableMusic:Z
    :goto_a
    if-eqz v11, :cond_13

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_music_enable_setting"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 277
    .local v5, bEnableMusic:Z
    if-eqz v14, :cond_18

    const/4 v6, 0x1

    .line 278
    .local v6, bMusicSelected:Z
    :goto_b
    if-eqz v5, :cond_19

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 289
    :goto_c
    if-eqz v6, :cond_1a

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    .end local v5           #bEnableMusic:Z
    .end local v6           #bMusicSelected:Z
    :cond_13
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSettingMgr:Lcom/htc/album/addons/slideshow/SlideshowSetingManager;

    move-object/from16 v21, v0

    const-string v22, "slide_show_folder_picker_setting"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/htc/album/addons/slideshow/SlideshowSetingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 303
    .local v16, strFolderType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->getFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 304
    .local v15, strFolderName:Ljava/lang/String;
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mFolderPicker:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 257
    .end local v11           #isEnableMusic:Z
    .end local v14           #strFilename:Ljava/lang/String;
    .end local v15           #strFolderName:Ljava/lang/String;
    .end local v16           #strFolderType:Ljava/lang/String;
    .end local v18           #strSunnary:Ljava/lang/String;
    .end local v19           #uriTemp:Landroid/net/Uri;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_7

    .line 260
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_8

    .line 263
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_9

    .line 273
    .restart local v14       #strFilename:Ljava/lang/String;
    .restart local v18       #strSunnary:Ljava/lang/String;
    .restart local v19       #uriTemp:Landroid/net/Uri;
    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 277
    .restart local v5       #bEnableMusic:Z
    .restart local v11       #isEnableMusic:Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_b

    .line 285
    .restart local v6       #bMusicSelected:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicEnablePre:Lcom/htc/preference/HtcCheckBoxPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_c

    .line 295
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mMusicPickerPre:Lcom/htc/preference/HtcPreference;

    move-object/from16 v21, v0

    const v22, 0x7f0a0021

    invoke-virtual/range {v21 .. v22}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_d
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 452
    return-void
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 467
    const-string v0, "AlbumSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 471
    check-cast v0, Lcom/htc/preference/HtcListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowTrans:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 475
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateOrientationPref(I)V

    move-object v0, p2

    .line 476
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updateRepeatPref(I)V

    .line 477
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->updatePlaybackSpeedPref(I)V

    .line 480
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 457
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 458
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 463
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onStop()V

    .line 464
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateOrientationPref(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 485
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mPhotoOriPref:Lcom/htc/preference/HtcListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updatePlaybackSpeedPref(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 506
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 508
    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, FAST:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    invoke-direct {p0, v1, v0}, Lcom/htc/album/addons/slideshow/AlbumSettings;->setSummary(Lcom/htc/preference/HtcListPreference;Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 517
    .end local v0           #FAST:Ljava/lang/String;
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideShowSpeed:Lcom/htc/preference/HtcListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateRepeatPref(I)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 493
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 496
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings;->mSlideshowRepeatPref:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
