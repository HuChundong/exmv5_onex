.class public Lcom/htc/album/helper/MenuManager;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;,
        Lcom/htc/album/helper/MenuManager$RotateThread;,
        Lcom/htc/album/helper/MenuManager$SetAsFavorThread;,
        Lcom/htc/album/helper/MenuManager$RotateCallbackListener;,
        Lcom/htc/album/helper/MenuManager$RotateStateListener;,
        Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;,
        Lcom/htc/album/helper/MenuManager$DecodeThumbTask;,
        Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;,
        Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    }
.end annotation


# static fields
.field public static final ACTION_SET_AS_CONTACTICON:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_SET_AS_FAVORITES:Ljava/lang/String; = "com.htc.HTCAlbum.MY_FAVORITES"

.field public static final ACTION_SET_AS_FOOTPRINTS:Ljava/lang/String; = "com.htc.android.setasFootprint"

.field public static final ACTION_SET_AS_LOCATIONS:Ljava/lang/String; = "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

.field public static final ACTION_SET_AS_WALLPAPER:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final DEFAULT_SHOW_TAG:Z = true

.field public static final DEFAULT_TAG_FIRSTTIME:Z = true

#the value of this static final field might be set in the static constructor
.field public static final DISABLE_GEOCODE_RELEATE_FUNCTION:Z = false

.field public static final EXCLUDE_ALL:I = -0x1

.field public static final EXCLUDE_BURSTSHOT_MODE:I = 0x200000

.field public static final EXCLUDE_COMMENT:I = 0x8000

.field public static final EXCLUDE_COPY_TO_MENU:I = 0x800000

.field public static final EXCLUDE_CROP_MENU:I = 0x8

.field public static final EXCLUDE_DELETE_MENU:I = 0x10

.field public static final EXCLUDE_DETAILS_MENU:I = 0x40

.field public static final EXCLUDE_EDIT_PHOTO_MENU:I = 0x40000

.field public static final EXCLUDE_MOVE_TO_MENU:I = 0x400000

.field public static final EXCLUDE_NONE:I = 0x0

.field public static final EXCLUDE_PRINT_MENU:I = 0x80000

.field public static final EXCLUDE_PROTECTION_MENU:I = 0x80

.field public static final EXCLUDE_REFRESH:I = 0x1000

.field public static final EXCLUDE_RENAME_MENU:I = 0x1000000

.field public static final EXCLUDE_ROTATE_MENU:I = 0x20

.field public static final EXCLUDE_SELECT_PLAYER:I = 0x20000

.field public static final EXCLUDE_SETTING_MENU:I = 0x100

.field public static final EXCLUDE_SET_AS_FAVORITE:I = 0x200

.field public static final EXCLUDE_SET_MENU:I = 0x4

.field public static final EXCLUDE_SHARELINK:I = 0x2000

.field public static final EXCLUDE_SHARE_MENU:I = 0x2

.field public static final EXCLUDE_SHOWHIDE_CAPTION:I = 0x4000

.field public static final EXCLUDE_SHOW_ON_MAP:I = 0x400

.field public static final EXCLUDE_SLIDESHOW_MENU:I = 0x1

.field public static final EXCLUDE_TAG:I = 0x10000

.field public static final EXCLUDE_TAG_HIDE:I = 0x100000

.field public static final EXCLUDE_VIEW_FULL:I = 0x800

.field private static final LOG_TAG:Ljava/lang/String; = "MenuManager"

.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final PERF_TAG_TABLET_DETAILS:Ljava/lang/String; = "[showTabletItemDetails]"

.field public static final PKG_NAME_BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PKG_NAME_HTC_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final PKG_NAME_HTC_FLICKR:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final PKG_NAME_HTC_MAIL:Ljava/lang/String; = "com.htc.android.mail"

.field public static final PKG_NAME_HTC_MESSAGES:Ljava/lang/String; = "com.android.mms"

.field public static final PKG_NAME_HTC_RENREN:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final PKG_NAME_HTC_SINA:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final PKG_NAME_HTC_SINAWEIBO:Ljava/lang/String; = "com.htc.friendstream.sinaweiboplugin"

.field public static final PKG_NAME_HTC_TWITTER:Ljava/lang/String; = "com.htc.htctwitter"

.field private static final sDateFormat:Ljava/lang/CharSequence;


# instance fields
.field private final EDIT_MENU_ID_ADJUST_3D_ALIGNMENT:I

.field private final EDIT_MENU_ID_CROP:I

.field private final EDIT_MENU_ID_EFFECTS:I

.field private final EDIT_MENU_ID_ROTATE_LEFT:I

.field private final EDIT_MENU_ID_ROTATE_RIGHT:I

.field private final EDIT_MENU_ID_SAVE_AS_2D:I

.field private detailThumb:Landroid/graphics/Bitmap;

.field private imgName:Ljava/lang/String;

.field private imgSubName:Ljava/lang/String;

.field private mCustomChooser:Landroid/app/AlertDialog;

.field private mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

.field private mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

.field public mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

.field private mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field private mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

.field private mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

.field private mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

.field private mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

.field private mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

.field public mbAllowEdit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 190
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    .line 5360
    const-string v0, "yyyy-MM-dd"

    sput-object v0, Lcom/htc/album/helper/MenuManager;->sDateFormat:Ljava/lang/CharSequence;

    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 181
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 183
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_SAVE_AS_2D:I

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ADJUST_3D_ALIGNMENT:I

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_CROP:I

    .line 186
    iput v2, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_EFFECTS:I

    .line 187
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ROTATE_RIGHT:I

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/helper/MenuManager;->EDIT_MENU_ID_ROTATE_LEFT:I

    .line 194
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    .line 196
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 199
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 202
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 221
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    .line 5354
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    .line 5355
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    .line 5356
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 5357
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    .line 5358
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    .line 5366
    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 5367
    iput-boolean v2, p0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    .line 234
    return-void
.end method

.method public static CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "act"
    .parameter "sData"
    .parameter "type"

    .prologue
    .line 1101
    const-string v4, "MenuManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CallPrintDialog2]+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1104
    :cond_0
    const-string v4, "MenuManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CallPrintDialog2]-:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    :goto_0
    return-void

    .line 1110
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1112
    .local v1, data:Landroid/net/Uri;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.westtek.jcp"

    const-string v5, "com.westtek.jcp.JCPRINT"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .local v0, component:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1116
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1118
    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1124
    .local v2, extras:Landroid/os/Bundle;
    const-string v4, "password"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1127
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1129
    const-string v4, "MenuManager"

    const-string v5, "[CallPrintDialog2]-"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetDataPathByUri0(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 1136
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    .line 1137
    .local v2, columns:[Ljava/lang/String;
    const-string v7, ""

    .line 1138
    .local v7, dataPath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1142
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1144
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1156
    :cond_0
    if-eqz v6, :cond_1

    .line 1158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1159
    const/4 v6, 0x0

    .line 1163
    :cond_1
    :goto_0
    return-object v7

    .line 1150
    :catch_0
    move-exception v8

    .line 1152
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MenuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    if-eqz v6, :cond_1

    .line 1158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1159
    const/4 v6, 0x0

    goto :goto_0

    .line 1156
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1159
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static GetDataPathByUri1(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 14
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1168
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const-string v0, "mime_type"

    aput-object v0, v2, v3

    const-string v0, "_size"

    aput-object v0, v2, v4

    const-string v0, "date_modified"

    aput-object v0, v2, v5

    .line 1171
    .local v2, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1174
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1176
    if-nez v6, :cond_0

    .line 1177
    const-string v0, ""

    .line 1210
    :goto_0
    return-object v0

    .line 1179
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1182
    .local v10, x:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1183
    .local v11, y:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v12, v0

    .line 1184
    .local v12, z:J
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v7, v0

    .line 1186
    .local v7, d:J
    const-string v0, "MenuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1190
    .end local v7           #d:J
    .end local v10           #x:Ljava/lang/String;
    .end local v11           #y:Ljava/lang/String;
    .end local v12           #z:J
    :catch_0
    move-exception v9

    .line 1192
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "MenuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .end local v9           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz v6, :cond_2

    .line 1199
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1200
    const/4 v6, 0x0

    .line 1210
    :cond_2
    :goto_2
    const-string v0, ""

    goto :goto_0

    .line 1203
    :catch_1
    move-exception v9

    .line 1205
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v0, "MenuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GetDataPathByUri][Exception][close]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$DecodeThumbTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$RotateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/album/helper/MenuManager$RotateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/helper/MenuManager;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/album/helper/MenuManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p7}, Lcom/htc/album/helper/MenuManager;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 118
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    .locals 5
    .parameter "context"
    .parameter "detailsContainer"
    .parameter "resID"
    .parameter "value"
    .parameter "bFirstRowAdded"

    .prologue
    .line 3706
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3708
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[addRowToDetailsContainer] Null context or detailsContainer found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3709
    const/4 v3, 0x0

    .line 3723
    :goto_0
    return v3

    .line 3712
    :cond_1
    const v3, 0x7f030007

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 3713
    .local v0, rowLayout:Landroid/widget/LinearLayout;
    invoke-static {v0, p4}, Lcom/htc/album/helper/MenuManager;->setItemDetailsShadowBg(Landroid/view/View;Z)V

    .line 3715
    const v3, 0x7f09001c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3716
    .local v1, textNameView:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3718
    const v3, 0x7f09001d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3719
    .local v2, textValueView:Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3721
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3723
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static callFileOperationFolderSelector(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4
    .parameter "activity"
    .parameter "albumBucketID"
    .parameter "clickButtonID"

    .prologue
    .line 5196
    if-nez p0, :cond_0

    .line 5198
    const-string v2, "MenuManager"

    const-string v3, "[callFileOperationFolderSelector] Null activity"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5212
    :goto_0
    return-void

    .line 5201
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5202
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5204
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "com.htc.album.ACTION_PICK_FOLDER_CREATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5205
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5207
    const-string v2, "filter_folder_bucketid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5208
    const-string v2, "fileop_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5209
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5211
    const/16 v2, 0x1458

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static callFileOperationMultiItemPicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Ljava/lang/Object;)V
    .locals 4
    .parameter "activity"
    .parameter "collectionInfo"
    .parameter "objExtra"

    .prologue
    .line 5216
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5218
    :cond_0
    const-string v2, "MenuManager"

    const-string v3, "[callFileOperationMultiItemPicker] illegal parameters"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5233
    :goto_0
    return-void

    .line 5222
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5223
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5226
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5227
    const-string v2, "show_drm_shareable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5228
    const-string v2, "disable_2d_conversion"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5229
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 5230
    const-string v2, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5232
    const/16 v2, 0x1457

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static callSharePicker(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;Ljava/lang/Object;)V
    .locals 10
    .parameter "activity"
    .parameter "collectionInfo"
    .parameter "ri"
    .parameter "objExtra"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1257
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1259
    :cond_0
    const-string v5, "MenuManager"

    const-string v6, "[callSharePicker] Null activity or adapter or IComparableRI found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    .end local p3
    :cond_1
    :goto_0
    return-void

    .line 1263
    .restart local p3
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1264
    .local v3, share:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getSupportType()I

    move-result v4

    .line 1265
    .local v4, supportType:I
    const-string v7, "MenuManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][ShareMenuManager][callSharePicker]: type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const/high16 v7, 0x2

    and-int/2addr v7, v4

    if-eqz v7, :cond_7

    move v1, v5

    .line 1269
    .local v1, multiPicker:Z
    :goto_1
    if-eqz v1, :cond_8

    .line 1270
    const-string v7, "com.htc.album.ACTION_PICK_NF_MULTIPLE_ITEM"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    :goto_2
    invoke-interface {p2}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1275
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1278
    const-string v7, "com.htc.android.mail"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.android.bluetooth"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1280
    :cond_3
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1327
    :goto_3
    const-string v7, "com.htc.socialnetwork.flickr"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.htc.socialnetwork.facebook"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1329
    :cond_4
    const-string v7, "request_htc_upload_list"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1333
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1334
    .local v0, extras:Landroid/os/Bundle;
    const-string v7, "collection_info"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1335
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1337
    if-eqz p3, :cond_6

    .line 1339
    instance-of v7, p3, [I

    if-eqz v7, :cond_6

    .line 1340
    const-string v7, "photoIds"

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v3, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1343
    :cond_6
    const-string v7, "do_share"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1344
    const-string v7, "force_2d_result"

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->support3DShare(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    :goto_4
    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1348
    if-eqz v1, :cond_11

    .line 1350
    const-string v5, "request_3d_list"

    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->show3DVirtualFolder()Z

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1351
    const/high16 v5, 0x22

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #multiPicker:Z
    .end local v2           #pkgName:Ljava/lang/String;
    .restart local p3
    :cond_7
    move v1, v6

    .line 1267
    goto/16 :goto_1

    .line 1272
    .restart local v1       #multiPicker:Z
    :cond_8
    const-string v7, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1283
    .restart local v2       #pkgName:Ljava/lang/String;
    :cond_9
    const-string v7, "com.android.mms"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1285
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 1288
    :cond_a
    const-string v7, "com.htc.mmsmediaproxy"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1290
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1293
    :cond_b
    const-string v7, "com.htc.customizepkg1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1295
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1306
    :cond_c
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_d

    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_d

    .line 1308
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1311
    :cond_d
    and-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_e

    .line 1313
    const-string v7, "image/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1316
    :cond_e
    and-int/lit8 v7, v4, 0x2

    if-eqz v7, :cond_f

    .line 1318
    const-string v7, "video/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v7, "show_drm_shareable"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1323
    :cond_f
    const-string v5, "MenuManager"

    const-string v6, "[callSharePicker] Unsupported type found!!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local p3
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_10
    move v5, v6

    .line 1344
    goto/16 :goto_4

    .line 1355
    :cond_11
    const/high16 v5, 0x11

    invoke-virtual {p0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static callSharePickerForPrint(Landroid/app/Activity;Lcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter "collectionInfo"

    .prologue
    .line 1215
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1217
    :cond_0
    const-string v2, "MenuManager"

    const-string v3, "[callSharePickerForPrint] Null activity or collectionInfo not found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :goto_0
    return-void

    .line 1221
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1223
    .local v1, share:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1224
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "collection_info"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1225
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1227
    const-string v2, "com.htc.album.ACTION_PICK_NF_SINGLE_ITEM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1230
    const-string v2, "MimeTypeFilter"

    sget-object v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->sPrintSupport:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    const-string v2, "show_drm_shareable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1232
    const-string v2, "disable_2d_conversion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1234
    const/high16 v2, 0x55

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "act"
    .parameter "sData"

    .prologue
    .line 2325
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[callTrimApplication]+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.muvee.video.trimer"

    const-string v4, "com.muvee.video.trimer.MainActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    .local v0, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2337
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2339
    const-string v3, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2341
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2343
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2347
    const/16 v3, 0x13ba

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2348
    return-void
.end method

.method public static doSetAsMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1402
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1404
    :cond_0
    const-string v2, "MenuManager"

    const-string v3, "[doSetAsMultiMedia] Null activity or pickerResult found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    .end local p0
    :goto_0
    return-void

    .line 1408
    .restart local p0
    :cond_1
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1410
    .local v0, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v1, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v1}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 1411
    .local v1, menuMgr:Lcom/htc/album/helper/MenuManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {v1, p0, v0}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static doSetAsSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "isDRM"

    .prologue
    .line 1362
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1364
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[doSetAsSingleMedia] Null activity or shareIntent or imageUri found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    .end local p0
    :goto_0
    return-void

    .line 1368
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, action:Ljava/lang/String;
    const-string v3, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, className:Ljava/lang/String;
    const-string v3, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1373
    new-instance v2, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v2}, Lcom/htc/album/helper/MenuManager;-><init>()V

    .line 1374
    .local v2, menuMgr:Lcom/htc/album/helper/MenuManager;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {v2, p0, p2}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1376
    .end local v2           #menuMgr:Lcom/htc/album/helper/MenuManager;
    .restart local p0
    :cond_2
    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1379
    const-class v3, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1381
    invoke-static {p0, p2, p3, p4}, Lcom/htc/album/helper/MenuManager;->setWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1385
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    const-string v3, "mimeType"

    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1390
    :cond_4
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1392
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-static {p0, p2}, Lcom/htc/album/helper/MenuManager;->setLocations(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 1396
    .restart local p0
    :cond_5
    const-string v3, "MenuManager"

    const-string v4, "[doSetAsMedia] Not supported!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "shareIntent"
    .parameter "pickerResult"

    .prologue
    .line 1679
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1681
    :cond_0
    const-string v10, "MenuManager"

    const-string v11, "[doShareMultiMedia] Error..."

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    :cond_1
    :goto_0
    return-void

    .line 1685
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1686
    .local v0, action:Ljava/lang/String;
    const-string v10, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1687
    .local v8, sharedPkgName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1689
    .local v6, mime:Ljava/lang/String;
    const-string v10, "SharedAdapter.KEY_SHARE_TO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    .line 1690
    .local v7, shareItemGroup:Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
    if-eqz v7, :cond_3

    .line 1691
    const-string v10, "SharedAdapter.KEY_SHARE_TO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1693
    :cond_3
    sget-object v10, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    invoke-static {v10, v8}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1694
    const-string v10, "com.htc.socialnetwork.facebook"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.htc.socialnetwork.flickr"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1697
    :cond_4
    const-string v10, "MenuManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias]: Facebook / Flickr, (sharedPkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " )"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1701
    .local v5, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 1703
    :cond_5
    const-string v10, "MenuManager"

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: mediaList is null or empty !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1708
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1709
    .local v3, intentShare:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v8, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    .local v2, conpont:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1712
    const-string v10, "com.htc.socialnetwork.facebook"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1713
    .local v4, isFacebook:Z
    if-eqz v4, :cond_7

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v9, v10, v11

    .line 1716
    .local v9, strServiceName:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1717
    if-eqz v3, :cond_8

    .line 1719
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1720
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1721
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1723
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1713
    .end local v9           #strServiceName:Ljava/lang/String;
    :cond_7
    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v11, 0x1

    aget-object v9, v10, v11

    goto :goto_1

    .line 1727
    .restart local v9       #strServiceName:Ljava/lang/String;
    :cond_8
    const-string v10, "MenuManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMultiMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1730
    .end local v2           #conpont:Landroid/content/ComponentName;
    .end local v3           #intentShare:Landroid/content/Intent;
    .end local v4           #isFacebook:Z
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v9           #strServiceName:Ljava/lang/String;
    :cond_9
    invoke-static {v8}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1734
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1736
    .restart local v5       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_b

    .line 1738
    :cond_a
    const-string v10, "MenuManager"

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: mediaList is null or empty !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1743
    :cond_b
    const-string v10, "MenuManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias][]: +, Sina - sharedPkgName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1747
    .restart local v3       #intentShare:Landroid/content/Intent;
    invoke-static {p0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 1749
    if-nez v3, :cond_c

    .line 1751
    const-string v10, "MenuManager"

    const-string v11, "[HTCAlbum][MenuManager][doShareMultiMedia]: can\'t get conponet name !"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1755
    :cond_c
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1756
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1757
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1758
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1759
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1760
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1763
    const-string v10, "MenuManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][MenuManager][doShareMedias]: -, Sina medialist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1766
    .end local v3           #intentShare:Landroid/content/Intent;
    .end local v5           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_d
    const-string v10, "com.htc.android.mail"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1769
    const-string v10, "MenuManager"

    const-string v11, "[HTCAlbum][MenuManager][doShareMedias]: Package = com.htc.android.mail"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1772
    .local v1, andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1774
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1776
    .end local v1           #andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_e
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "com.htc.vmm.SEND_MULTIPLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1778
    :cond_f
    const-string v10, "MenuManager"

    const-string v11, "[HTCAlbum][MenuManager][doShareMedias]: Intent.ACTION_SEND_MULTIPLE"

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1781
    .restart local v1       #andList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1782
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "shareIntent"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 1473
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    const-string v15, "SharedAdapter.KEY_PACKAGE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1479
    .local v11, sharedPkgName:Ljava/lang/String;
    const-string v15, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1480
    .local v12, sharedPkgNameForOther:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1482
    .local v8, selectSharePkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1484
    .local v4, fromAlbum:Z
    const-string v15, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;

    .line 1485
    .local v10, shareItemGroup:Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;
    if-eqz v10, :cond_2

    .line 1486
    const-string v15, "SharedAdapter.KEY_SHARE_TO"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1488
    :cond_2
    if-eqz v11, :cond_5

    .line 1490
    const/4 v4, 0x1

    .line 1491
    move-object v8, v11

    .line 1499
    :cond_3
    :goto_1
    sget-object v15, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    invoke-static {v15, v8}, Lcom/htc/album/helper/UserProfilingLog;->logUserAccessCount(Lcom/htc/album/helper/UserProfilingLog$PROFILE;Ljava/lang/Object;)V

    .line 1500
    if-eqz v8, :cond_0

    .line 1502
    const-string v15, "com.htc.socialnetwork.facebook"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "com.htc.socialnetwork.flickr"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1505
    :cond_4
    if-eqz v4, :cond_8

    .line 1509
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1510
    .local v5, intentShare:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v11, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    .local v3, conpont:Landroid/content/ComponentName;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1513
    const-string v15, "com.htc.socialnetwork.facebook"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1514
    .local v6, isFacebook:Z
    if-eqz v6, :cond_6

    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v13, v15, v16

    .line 1517
    .local v13, strServiceName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1519
    if-eqz v5, :cond_7

    .line 1521
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v7, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v14, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1525
    .local v2, bundle:Landroid/os/Bundle;
    const-string v15, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v15, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const-string v15, "com.htc.opensense.upload.TITLE"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    const-string v15, "com.htc.opensense.upload.DESCRIPTION"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1532
    const-string v15, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    const-string v15, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v5, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1534
    const-string v15, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1535
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1493
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #conpont:Landroid/content/ComponentName;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v6           #isFacebook:Z
    .end local v7           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v13           #strServiceName:Ljava/lang/String;
    .end local v14           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_5
    if-eqz v12, :cond_3

    .line 1495
    const/4 v4, 0x0

    .line 1496
    move-object v8, v12

    goto/16 :goto_1

    .line 1514
    .restart local v3       #conpont:Landroid/content/ComponentName;
    .restart local v5       #intentShare:Landroid/content/Intent;
    .restart local v6       #isFacebook:Z
    :cond_6
    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v13, v15, v16

    goto :goto_2

    .line 1538
    .restart local v13       #strServiceName:Ljava/lang/String;
    :cond_7
    const-string v15, "MenuManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][MenuManager][doShareSingleMedia]: setScanIntent NG ! strServiceName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1542
    .end local v3           #conpont:Landroid/content/ComponentName;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v6           #isFacebook:Z
    .end local v13           #strServiceName:Ljava/lang/String;
    :cond_8
    const-string v15, "MenuManager"

    const-string v16, "[HTCAlbum][MenuManager][doShareSingleMedia]: com.htc.socialnetwork.facebook or com.htc.socialnetwork.flickr"

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    .restart local v7       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1546
    .restart local v14       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1547
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v15, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v15, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    const-string v15, "com.htc.opensense.upload.TITLE"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    const-string v15, "com.htc.opensense.upload.DESCRIPTION"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1554
    .restart local v5       #intentShare:Landroid/content/Intent;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    const-string v15, "SharedAdapter.KEY_CLASS_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v12, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v15, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v15, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v5, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1558
    const-string v15, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1559
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1562
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v7           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v14           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_9
    invoke-static {v11}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1566
    const-string v15, "MenuManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][MenuManager][doShareSingleMedia]: +, sharedPkgName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1571
    .restart local v5       #intentShare:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v11, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    .restart local v3       #conpont:Landroid/content/ComponentName;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1574
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1576
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .restart local v7       #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .restart local v14       #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1580
    .restart local v2       #bundle:Landroid/os/Bundle;
    const-string v15, "com.htc.opensense.upload.URI"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    const-string v15, "com.htc.opensense.upload.MIMETYPE"

    move-object/from16 v0, p3

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v15, "com.htc.opensense.upload.TITLE"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const-string v15, "com.htc.opensense.upload.DESCRIPTION"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1587
    const-string v15, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    const-string v15, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v5, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1589
    const-string v15, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1591
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1594
    const-string v15, "MenuManager"

    const-string v16, "[HTCAlbum][MenuManager][doShareSingleMedia]: -"

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1596
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #conpont:Landroid/content/ComponentName;
    .end local v5           #intentShare:Landroid/content/Intent;
    .end local v7           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v14           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_a
    const-string v15, "com.android.mms"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1598
    const-string v15, "com.htc.intent.action.SEND_MSG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1602
    :cond_b
    const-string v15, "com.htc.vmm.SEND"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1604
    const-string v15, "MenuManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][MenuManager][doShareSingleVMMMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->isGroupItem()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1607
    const/4 v9, 0x0

    .line 1608
    .local v9, shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const-string v15, "image"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1609
    const v15, 0x10001

    invoke-virtual {v10, v15}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v9

    .line 1613
    :cond_c
    :goto_3
    if-eqz v9, :cond_d

    .line 1615
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1616
    const-string v15, "MenuManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][MenuManager][doShareSingleVMMMedia]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    .end local v9           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_d
    const-string v15, "com.htc.vmm.SEND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string v15, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1623
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1610
    .restart local v9       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_e
    const-string v15, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1611
    const v15, 0x10002

    invoke-virtual {v10, v15}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v9

    goto :goto_3

    .line 1627
    .end local v9           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_f
    const-string v15, "com.htc.mmsmediaproxy"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1629
    const-string v15, "MenuManager"

    const-string v16, "[HTCAlbum][MenuManager][doShareSingleMedia]: com.htc.mmsmediaproxy"

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p1 .. p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    const/high16 v15, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1632
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1636
    :cond_10
    const-string v15, "MenuManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][MenuManager][doShareSingleMedia]: Intent.ACTION_SEND: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->isGroupItem()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1639
    const/4 v9, 0x0

    .line 1640
    .restart local v9       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const-string v15, "image"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1641
    const v15, 0x10001

    invoke-virtual {v10, v15}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v9

    .line 1645
    :cond_11
    :goto_4
    if-eqz v9, :cond_12

    .line 1647
    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1648
    const-string v15, "MenuManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[HTCAlbum][MenuManager][doShareSingleMedia]: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v9}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->getActivityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    .end local v9           #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_12
    const-string v15, "android.intent.action.SEND"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1654
    const-string v15, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1655
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1656
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1642
    .restart local v9       #shareItem:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_13
    const-string v15, "video"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1643
    const v15, 0x10002

    invoke-virtual {v10, v15}, Lcom/htc/opensense2/album/SocialNetwork/ComparableRI;->getGroupItem(I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v9

    goto :goto_4
.end method

.method private static excludeItem(Landroid/view/Menu;I)V
    .locals 2
    .parameter "menu"
    .parameter "id"

    .prologue
    .line 633
    if-nez p0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 637
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 638
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public static exclusionSlideShow(Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 7
    .parameter "image"
    .parameter "exclusion"

    .prologue
    const/4 v4, 0x1

    .line 254
    if-nez p0, :cond_1

    .line 256
    const-string v5, "MenuManager"

    const-string v6, "[exclusionSlideShow] Null image found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local p0
    :cond_1
    invoke-interface {p0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    .line 263
    .local v2, isDRM:Z
    if-eqz v2, :cond_3

    check-cast p0, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p0
    move-object v1, p0

    .line 265
    .local v1, drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v0

    .line 266
    .local v0, drmType:I
    :goto_2
    if-ne v0, v4, :cond_5

    move v3, v4

    .line 268
    .local v3, isDRMFL:Z
    :goto_3
    if-eqz v2, :cond_2

    move v4, v3

    .line 269
    .local v4, showSlideShow:Z
    :cond_2
    if-nez v4, :cond_0

    .line 270
    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 263
    .end local v0           #drmType:I
    .end local v1           #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    .end local v3           #isDRMFL:Z
    .end local v4           #showSlideShow:Z
    .restart local p0
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 265
    .end local p0
    .restart local v1       #drmfile:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 266
    .restart local v0       #drmType:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "activity"
    .parameter "durationMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4061
    if-nez p0, :cond_0

    .line 4063
    const-string v5, "MenuManager"

    const-string v6, "[formatDuration] Null activity found!!"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4066
    :cond_0
    const-string v5, "fullscreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "durationMs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    div-int/lit16 v0, p1, 0x3e8

    .line 4068
    .local v0, duration:I
    div-int/lit16 v2, v0, 0xe10

    .line 4069
    .local v2, h:I
    mul-int/lit16 v5, v2, 0xe10

    sub-int v5, v0, v5

    div-int/lit8 v3, v5, 0x3c

    .line 4070
    .local v3, m:I
    mul-int/lit16 v5, v2, 0xe10

    mul-int/lit8 v6, v3, 0x3c

    add-int/2addr v5, v6

    sub-int v4, v0, v5

    .line 4072
    .local v4, s:I
    if-nez v2, :cond_1

    .line 4073
    const v5, 0x7f0a008e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4080
    .local v1, durationValue:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4076
    .end local v1           #durationValue:Ljava/lang/String;
    :cond_1
    const v5, 0x7f0a008f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #durationValue:Ljava/lang/String;
    goto :goto_0
.end method

.method public static isCHSCustomerUploadPkgName(Ljava/lang/String;)Z
    .locals 2
    .parameter "strPkgName"

    .prologue
    const/4 v0, 0x0

    .line 1243
    if-nez p0, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return v0

    .line 1246
    :cond_1
    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMMSUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 4821
    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V
    .locals 5
    .parameter "activity"
    .parameter "aPhoto"
    .parameter "bundle"

    .prologue
    .line 4639
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4641
    :cond_0
    const-string v2, "MenuManager"

    const-string v3, "[launchComments] null dispMgrListener or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4659
    :cond_1
    :goto_0
    return-void

    .line 4645
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4646
    .local v0, callerIntent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 4649
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4650
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/album/SocialNetwork/ActivityMainComments;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4651
    const-string v2, "service_name"

    const-string v3, "service_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4652
    const-string v2, "user_id"

    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4653
    const-string v2, "photo_id"

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4654
    const-string v2, "album_name"

    const-string v3, "album_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4655
    const-string v2, "album_id"

    const-string v3, "album_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4656
    const-string v2, "from_outside"

    const-string v3, "from_outside"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4658
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "type"
    .parameter "extras"

    .prologue
    const/4 v1, 0x0

    .line 4547
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4549
    :cond_0
    const-string v1, "MenuManager"

    const-string v2, "[launchCropMode] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4563
    :goto_0
    return-void

    .line 4553
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4554
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4555
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4556
    const-string v2, "cropType"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4558
    const-string v2, "toast_crop_result"

    if-eqz p4, :cond_2

    const-string v3, "toast_crop_result"

    invoke-virtual {p4, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4560
    if-eqz p4, :cond_3

    .line 4561
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4562
    :cond_3
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "degreesRotated"

    .prologue
    .line 4578
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 4579
    return-void
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"
    .parameter "dataPath"
    .parameter "degreesRotated"
    .parameter "extras"

    .prologue
    .line 4585
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 4587
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[launchEnhancerMode] null activity or error on image info"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4607
    :goto_0
    return-void

    .line 4591
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4592
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.photoenhancer"

    const-string v4, "com.htc.photoenhancer.PhotoEnhancer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4593
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4594
    const-string v3, "filePath"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4595
    const-string v3, "degree"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4597
    if-eqz p5, :cond_2

    .line 4599
    const-string v3, "output"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4600
    .local v2, mOutputPath:Ljava/lang/String;
    const-string v3, "externalGivenOutputPath"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4603
    .end local v2           #mOutputPath:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x7f08

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4604
    :catch_0
    move-exception v0

    .line 4605
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[launchEnhancerMode] Launch Effects failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static launchEnhancerMode(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 6
    .parameter "activity"
    .parameter "image"

    .prologue
    .line 4567
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4569
    :cond_0
    const-string v0, "MenuManager"

    const-string v1, "[launchEnhancerMode] null activity or null IImage"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    :goto_0
    return-void

    .line 4572
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->launchEnhancerMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V
    .locals 5
    .parameter "activity"
    .parameter "image"
    .parameter "imageList"
    .parameter "params"

    .prologue
    .line 2010
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2012
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[launchGif] null activity or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    :goto_0
    return-void

    .line 2016
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2017
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/htc/album/TabPluginDevice/GifPlayer;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2019
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 2020
    .local v2, uri:Landroid/net/Uri;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, dataPath:Ljava/lang/String;
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2023
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2034
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2025
    :cond_2
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2027
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 2031
    :cond_3
    const-string v3, "path"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static launchSettings(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 4338
    return-void
.end method

.method public static launchSlideShow(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILjava/lang/Object;)V
    .locals 8
    .parameter "activity"
    .parameter "adapter"
    .parameter "posStart"
    .parameter "objExtra"

    .prologue
    .line 1925
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1927
    :cond_0
    const-string v6, "MenuManager"

    const-string v7, "[launchSlideShow] null activity or adapter found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    .end local p3
    :goto_0
    return-void

    .line 1931
    .restart local p3
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1932
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1933
    const-string v6, "MenuManager"

    const-string v7, "[launchSlideShow] null image at 0 found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1936
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 1938
    .local v4, startTarget:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 1939
    .local v5, strPath:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v6, :cond_3

    .line 1941
    invoke-virtual {p1, p2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    .line 1944
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v0

    .line 1946
    .local v0, collection:Lcom/htc/album/modules/collection/Collection;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1947
    .local v3, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/album/addons/slideshow/SlideshowFusion;

    invoke-virtual {v3, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1948
    const-string v6, "key_bucket_id"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1949
    const-string v6, "itemIndex"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1950
    const-string v6, "itemfullpath"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    const-string v6, "slideshow_setting_mode"

    const-string v7, "album_mode"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1952
    const-string v6, "folder_type"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    const-string v6, "key_folder_name"

    invoke-virtual {v0}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1955
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "collection_info"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1956
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1958
    if-eqz p3, :cond_4

    .line 1960
    instance-of v6, p3, [I

    if-eqz v6, :cond_4

    .line 1961
    const-string v6, "photoIds"

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1964
    :cond_4
    const v6, 0x7f090085

    invoke-virtual {p0, v3, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V
    .locals 6
    .parameter "activity"
    .parameter "selectedImage"
    .parameter "params"

    .prologue
    .line 1969
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1970
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[launchVideo] null activity or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    :goto_0
    return-void

    .line 1974
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1976
    const-string v3, "MenuManager"

    const-string v4, "[launchVideo] isCorrupted!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1980
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 1982
    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->setDrmStateToNonCheck()V

    .line 1985
    :cond_3
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 1987
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1990
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][launchVideo]: Launch Video Player "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][launchVideo]: Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "index_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    const-string v3, "com.htc.video"

    const-string v4, "com.htc.video.ViewVideo"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1993
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1994
    const-string v3, "Extras"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1997
    const-string v3, "dmc_mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1999
    const/16 v3, 0x13bb

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2001
    :catch_0
    move-exception v0

    .line 2003
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launch Video player failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "clickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const/4 v6, 0x0

    .line 1813
    if-nez p1, :cond_0

    .line 1815
    const-string v7, "MenuManager"

    const-string v8, "You must specify first parameter"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :goto_0
    return-object v6

    .line 1819
    :cond_0
    if-nez p3, :cond_1

    .line 1821
    const-string v7, "MenuManager"

    const-string v8, "The share list is null"

    invoke-static {v7, v8}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1824
    :cond_1
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v6, 0x1

    invoke-direct {v0, p1, p3, v6}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1825
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {}, Lcom/htc/album/helper/ShareMenuManager;->getShareMultipleAdapter()Lcom/htc/widget/HtcShareViaMultipleAdapter;

    move-result-object v4

    .line 1827
    .local v4, shareViaAdapter:Lcom/htc/widget/HtcShareViaMultipleAdapter;
    new-instance v5, Lcom/htc/widget/HtcShareViaDialogOnClickListener;

    iget-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    new-instance v7, Lcom/htc/album/helper/MenuManager$4;

    invoke-direct {v7, p0, v4, v0, p4}, Lcom/htc/album/helper/MenuManager$4;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/widget/HtcShareViaMultipleAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)V

    invoke-direct {v5, v6, v4, v7}, Lcom/htc/widget/HtcShareViaDialogOnClickListener;-><init>(Landroid/app/AlertDialog;Lcom/htc/widget/IHtcShareViaAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1847
    .local v5, shareViaListener:Lcom/htc/widget/HtcShareViaDialogOnClickListener;
    invoke-static {p1, v0}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1848
    invoke-static {p1, p2, v4, v5}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1853
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_2

    .line 1855
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 1857
    :cond_2
    iget-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v6, :cond_4

    .line 1859
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I

    move-result v3

    .line 1860
    .local v3, resId:I
    iget-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1861
    .local v2, dialogLView:Landroid/widget/ListView;
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1862
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 1864
    :cond_3
    iget-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1865
    iget-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 1868
    .end local v2           #dialogLView:Landroid/widget/ListView;
    .end local v3           #resId:I
    :cond_4
    iget-object v6, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static playVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "activity"
    .parameter "image"
    .parameter "imageList"
    .parameter "params"

    .prologue
    .line 2039
    const/4 v0, 0x0

    .line 2041
    .local v0, bPlayed:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2043
    :cond_0
    const-string v1, "MenuManager"

    const-string v2, "[playVideo] null activity or image found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    const/4 v1, 0x0

    .line 2063
    :goto_0
    return v1

    .line 2047
    :cond_1
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2049
    invoke-static {p0, p1, p3}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 2050
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 2063
    goto :goto_0

    .line 2052
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 2055
    invoke-static {p0, p1, p2, p3}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 2056
    const/4 v0, 0x1

    goto :goto_1

    .line 2060
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "adapter"
    .parameter "pos"
    .parameter "curImage"
    .parameter "oldName"
    .parameter "newName"
    .parameter "subFileName"

    .prologue
    .line 4153
    const/4 v10, 0x0

    .line 4154
    .local v10, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-nez v10, :cond_1

    .line 4281
    :cond_0
    :goto_0
    return-void

    .line 4158
    :cond_1
    if-nez p2, :cond_2

    .line 4160
    const-string v0, "MenuManager"

    const-string v1, "null adapter"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4164
    :cond_2
    if-nez p4, :cond_3

    .line 4166
    const-string v0, "MenuManager"

    const-string v1, "[renameFile] null image found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4170
    :cond_3
    const/4 v0, 0x0

    const v1, 0x7f0a0051

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v2, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    .local v3, dialog:Lcom/htc/app/HtcProgressDialog;
    move-object v9, p1

    .line 4176
    check-cast v9, Landroid/app/Activity;

    .line 4177
    .local v9, activity:Landroid/app/Activity;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/album/helper/MenuManager$15;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/album/helper/MenuManager$15;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/app/HtcProgressDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4280
    .local v11, th:Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static setFootprint(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 8
    .parameter "activity"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4708
    if-eqz p0, :cond_0

    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    if-nez p2, :cond_1

    .line 4710
    :cond_0
    const-string v6, "MenuManager"

    const-string v7, "[setFootprint] Null activity or data or result not OK"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4725
    :goto_0
    return-void

    .line 4714
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.htc.android.setasFootprint"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4715
    .local v1, footprint:Landroid/content/Intent;
    const-string v6, "com.htc.android.footprints"

    const-string v7, "com.htc.android.footprints.activity.FootprintDetailEditActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4716
    const-string v6, "filepath"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4717
    .local v5, path:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 4718
    invoke-static {v5}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 4719
    .local v0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4720
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4721
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 4723
    .end local v0           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4724
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static setItemDetailsShadowBg(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "bFirstRowAdded"

    .prologue
    .line 3728
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    .line 3732
    :cond_0
    return-void
.end method

.method public static setLocations(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .parameter "activity"
    .parameter "imageUri"

    .prologue
    .line 4729
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4737
    :cond_0
    :goto_0
    return-void

    .line 4732
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4733
    .local v1, footprint:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4734
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "FILE_URI"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4735
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4736
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setLockScreen(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "activity"
    .parameter "image"

    .prologue
    .line 4674
    return-void
.end method

.method private setTabletLatLngDetails(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 7
    .parameter "context"
    .parameter "detailsContainer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v4, 0x437f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4128
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 4130
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[setTabletLatLngDetails] Null context or detailsContainer or exifData found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4149
    :cond_1
    :goto_0
    return-void

    .line 4134
    :cond_2
    invoke-static {p3}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v2

    .line 4135
    .local v2, latlng:[F
    if-eqz v2, :cond_1

    sget-boolean v3, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-nez v3, :cond_1

    .line 4137
    aget v3, v2, v6

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    aget v3, v2, v5

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 4141
    const v3, 0x7f0a009c

    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    .line 4142
    const v3, 0x7f0a009d

    aget v4, v2, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v3, v4, v5}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    .line 4145
    new-instance v0, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v3, v4}, Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    .line 4146
    .local v0, cb:Lcom/htc/album/helper/MenuManager$UpdateTabletLocationCallback;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 4147
    .local v1, geocoder:Landroid/location/Geocoder;
    new-instance v3, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;

    invoke-direct {v3, v1, v2, v0}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;-><init>(Landroid/location/Geocoder;[FLcom/htc/album/AlbumUtility/ReverseGeocoderTask$Callback;)V

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/htc/album/AlbumUtility/ReverseGeocoderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "srcBmp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3736
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3738
    :cond_0
    const-string v1, "MenuManager"

    const-string v2, "[setThumbnailImageMask] Null context or srcBmp found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3739
    const/4 v1, 0x0

    .line 3747
    :goto_0
    return-object v1

    .line 3742
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3744
    .local v0, maskBmp:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v1, :cond_2

    .line 3745
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 3747
    :cond_2
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1, p2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmapWithCustomMask(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static setWallpaper(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "imageUri"
    .parameter "mime"
    .parameter "isDRM"

    .prologue
    .line 4694
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4696
    :cond_0
    const-string v1, "MenuManager"

    const-string v2, "[setWallpaper] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4704
    :goto_0
    return-void

    .line 4699
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4700
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/TabPluginDevice/Wallpaper;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4701
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4702
    const-string v1, "drm_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4703
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setWallpaperWithPreview(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mime"

    .prologue
    .line 4678
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4681
    :cond_0
    const-string v1, "MenuManager"

    const-string v2, "[setWallpaperWithPreview] null activity or imageUri or mime found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4690
    :goto_0
    return-void

    .line 4685
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4686
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4687
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4688
    const-string v1, "drm_content"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4689
    const/16 v1, 0x7f01

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static setupTabletVideoDetailRows(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V
    .locals 11
    .parameter "context"
    .parameter "detailsContainer"
    .parameter "video"

    .prologue
    .line 3927
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3929
    :cond_0
    const-string v9, "MenuManager"

    const-string v10, "[setupDefaultVideoDetailRows] Null context or detailsContainer or VideoObject found!!"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4057
    :goto_0
    return-void

    .line 3933
    :cond_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3937
    .local v8, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getDataPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3942
    const/4 v1, 0x0

    .line 3943
    .local v1, dimensionWidth:I
    const/4 v0, 0x0

    .line 3967
    .local v0, dimensionHeight:I
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->isDrm()Z

    move-result v9

    if-nez v9, :cond_2

    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 3968
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3969
    .local v7, resolution:Ljava/lang/String;
    const v9, 0x7f0a008a

    const/4 v10, 0x1

    invoke-static {p0, p1, v9, v7, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3974
    .end local v7           #resolution:Ljava/lang/String;
    :cond_2
    const/16 v9, 0x9

    :try_start_1
    invoke-virtual {v8, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3977
    .local v2, durationMs:I
    invoke-static {p0, v2}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3978
    .local v3, durationValue:Ljava/lang/String;
    const v9, 0x7f0a008b

    const/4 v10, 0x1

    invoke-static {p0, p1, v9, v3, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4033
    .end local v2           #durationMs:I
    .end local v3           #durationValue:Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v6, ""

    .line 4042
    .local v6, format:Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v9, ""

    if-ne v6, v9, :cond_4

    .line 4043
    :cond_3
    invoke-virtual {p2}, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 4045
    :cond_4
    const v9, 0x7f0a0098

    const/4 v10, 0x1

    invoke-static {p0, p1, v9, v6, v10}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4052
    :try_start_3
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 4053
    :catch_0
    move-exception v5

    .line 4054
    .local v5, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 3979
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .end local v6           #format:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 3980
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4047
    .end local v0           #dimensionHeight:I
    .end local v1           #dimensionWidth:I
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v5

    .line 4049
    .restart local v5       #ex:Ljava/lang/RuntimeException;
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4052
    :try_start_6
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 4053
    :catch_3
    move-exception v5

    .line 4054
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 4051
    .end local v5           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    .line 4052
    :try_start_7
    invoke-virtual {v8}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    .line 4055
    :goto_2
    throw v9

    .line 4053
    :catch_4
    move-exception v5

    .line 4054
    .restart local v5       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_2
.end method

.method public static showOnMap(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 12
    .parameter "context"
    .parameter "image"

    .prologue
    .line 4740
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4742
    :cond_0
    const-string v8, "MenuManager"

    const-string v9, "[showOnMap] null context or image found!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    :cond_1
    :goto_0
    return-void

    .line 4746
    :cond_2
    invoke-interface {p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 4747
    .local v2, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 4748
    invoke-static {v2}, Lcom/htc/album/AlbumUtility/ExifUtil;->getLatLng(Ljava/util/HashMap;)[F

    move-result-object v4

    .line 4749
    .local v4, latlng:[F
    if-nez v4, :cond_3

    .line 4751
    const-string v8, "MenuManager"

    const-string v9, "[showOnMap] NO LatLng found!!"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4754
    :cond_3
    const/4 v8, 0x0

    aget v3, v4, v8

    .line 4755
    .local v3, latitude:F
    const/4 v8, 0x1

    aget v5, v4, v8

    .line 4764
    .local v5, longitude:F
    :try_start_0
    const-string v8, "http://maps.google.com/maps?f=q&q=(%s,%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4765
    .local v7, url:Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.google.android.apps.maps"

    const-string v9, "com.google.android.maps.MapsActivity"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 4767
    .local v6, mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4768
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v6           #mapsIntent:Landroid/content/Intent;
    .end local v7           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4770
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "MenuManager"

    const-string v9, "GMM activity not found!"

    invoke-static {v8, v9, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4771
    const-string v8, "geo:%s,%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4772
    .restart local v7       #url:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4773
    .restart local v6       #mapsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showPhotoMenuOnline(Landroid/app/Activity;Landroid/view/Menu;I)V
    .locals 11
    .parameter "activity"
    .parameter "menu"
    .parameter "exclusion"

    .prologue
    const v10, 0x7f090095

    const v9, 0x7f090094

    const v8, 0x7f090088

    const v7, 0x7f090087

    const/4 v6, 0x1

    .line 684
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 686
    :cond_0
    const-string v4, "MenuManager"

    const-string v5, "[showPhotoMenuOnline] Null activity or menu found!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 690
    .local v1, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f0d0002

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 692
    and-int/lit16 v4, p2, 0x1000

    if-eqz v4, :cond_2

    .line 694
    const v4, 0x7f090092

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 696
    :cond_2
    const v4, 0x8000

    and-int/2addr v4, p2

    if-eqz v4, :cond_3

    .line 698
    const v4, 0x7f090093

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 700
    :cond_3
    and-int/lit16 v4, p2, 0x2000

    if-eqz v4, :cond_4

    .line 702
    const v4, 0x7f090091

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 704
    :cond_4
    and-int/lit16 v4, p2, 0x800

    if-eqz v4, :cond_5

    .line 706
    const v4, 0x7f09007c

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 708
    :cond_5
    and-int/lit16 v4, p2, 0x4000

    if-eqz v4, :cond_6

    .line 710
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 711
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 712
    const v4, 0x7f090096

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 713
    const v4, 0x7f090097

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 715
    :cond_6
    const/high16 v4, 0x1

    and-int/2addr v4, p2

    if-eqz v4, :cond_7

    .line 717
    invoke-static {p1, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 718
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 721
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "service_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, service:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 724
    .local v2, pref:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 726
    const v4, 0x7f090096

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 727
    const v4, 0x7f090097

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 729
    const/4 v0, 0x0

    .line 731
    .local v0, bShow:Z
    const-string v4, "showCaption"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 732
    if-eqz v0, :cond_9

    .line 733
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 737
    :goto_0
    const-string v4, "showTag"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 738
    if-eqz v0, :cond_a

    .line 739
    invoke-static {p1, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 793
    .end local v0           #bShow:Z
    :cond_8
    :goto_1
    return-void

    .line 735
    .restart local v0       #bShow:Z
    :cond_9
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_0

    .line 741
    :cond_a
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1

    .line 743
    .end local v0           #bShow:Z
    :cond_b
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 745
    invoke-static {p1, v9}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 746
    invoke-static {p1, v10}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 748
    const/4 v0, 0x0

    .line 750
    .restart local v0       #bShow:Z
    const-string v4, "showCaption"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 751
    if-eqz v0, :cond_c

    .line 752
    const v4, 0x7f090096

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 756
    :goto_2
    const-string v4, "showTag"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 757
    if-eqz v0, :cond_d

    .line 758
    invoke-static {p1, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1

    .line 754
    :cond_c
    const v4, 0x7f090097

    invoke-static {p1, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 760
    :cond_d
    invoke-static {p1, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_1
.end method

.method public static support3DShare(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 238
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.htctwitter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendSetAsAttachData(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsAttachData]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 892
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsAttachData] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 898
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v3, "mimeType"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 902
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 903
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.intent.action.ATTACH_DATA"

    const v4, 0x10001

    invoke-static {v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->makeComparableRIList(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public appendSetAsContactIcon(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 908
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsContactIcon]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 912
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsContactIcon] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_1
    :goto_0
    return-void

    .line 916
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 918
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    .local v0, contactIntent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 920
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 921
    .local v2, setAsContactList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    .line 922
    const-string v3, "com.android.contacts.action.ATTACH_IMAGE"

    const v4, 0x10001

    invoke-static {p3, v2, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public appendSetAsFavorite(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p2, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 929
    const-string v1, "MenuManager"

    const-string v2, "[appendSetAsFavorite] null context found!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string v1, "MenuManager"

    const-string v2, "[appendSetAsFavorite]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const v1, 0x7f0a0087

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v0

    .line 935
    .local v0, myFav:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v1, 0x20003

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setSupportType(I)V

    .line 936
    const-string v1, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;->setQueriedActionName(Ljava/lang/String;)V

    .line 937
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public appendSetAsFootprints(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 942
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsFootprints]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 946
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsFootprints] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :goto_0
    return-void

    .line 950
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 961
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 963
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "com.htc.laputa.lb.action.SET_AS_FOOTPRINT"

    const v4, 0x10001

    invoke-static {p3, v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p2, infoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const-string v0, "MenuManager"

    const-string v1, "[appendSetAsLockScreen]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    if-nez p1, :cond_0

    .line 994
    const-string v0, "MenuManager"

    const-string v1, "[appendSetAsLockScreen] null context found!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    const-string v0, "MenuManager"

    const-string v1, "[appendSetAsLockScreen] LiveWallpaper enabled, Set As LockScreen disabled!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendSetAsWallpaper(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter "curImage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p3, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsWallpaper]"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 974
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[appendSetAsWallpaper] null context or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :goto_0
    return-void

    .line 978
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 980
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 981
    .local v1, intent:Landroid/content/Intent;
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    const-string v3, "mimeType"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v3, "com.htc.album"

    const-string v4, "com.htc.album.TabPluginDevice.Wallpaper"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 985
    .local v0, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v3, "android.intent.action.ATTACH_DATA"

    const/high16 v4, 0x33

    invoke-static {p3, v0, v3, p1, v4}, Lcom/htc/opensense2/album/SocialNetwork/CompListUtil;->addComparableRIList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public dismissShowingDialog()V
    .locals 1

    .prologue
    .line 5237
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5239
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5242
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 5243
    return-void
.end method

.method public gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "nResTitle"
    .parameter "szUrlLink"

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 646
    const-string v4, "MenuManager"

    const-string v5, "[gotoShareLink] Null context found!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v4, 0x0

    .line 679
    :goto_0
    return-object v4

    .line 650
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v1, intentText:Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    move-object v3, p3

    .line 655
    .local v3, szWebLink:Ljava/lang/String;
    new-instance v0, Lcom/htc/album/helper/MenuManager$1;

    invoke-direct {v0, p0, v3, p1}, Lcom/htc/album/helper/MenuManager$1;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/lang/String;Landroid/content/Context;)V

    .line 677
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    invoke-static {p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 679
    .local v2, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0
.end method

.method public isPhotoHaveExifInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "strMimetype"

    .prologue
    const/4 v0, 0x0

    .line 618
    if-nez p1, :cond_1

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 621
    :cond_1
    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/jps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "image/mpo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public launchRotateMode(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;I)V
    .locals 9
    .parameter "activity"
    .parameter "adapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "custListener"
    .parameter "rotateDegrees"

    .prologue
    .line 5072
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 5116
    :cond_0
    :goto_0
    return-void

    .line 5076
    :cond_1
    const/16 v0, 0x5a

    if-eq p6, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p6, v0, :cond_0

    .line 5081
    :cond_2
    new-instance v8, Lcom/htc/album/helper/MenuManager$22;

    invoke-direct {v8, p0, p2, p1}, Lcom/htc/album/helper/MenuManager$22;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Landroid/app/Activity;)V

    .line 5110
    .local v8, listener:Lcom/htc/album/helper/MenuManager$RotateCallbackListener;
    move v5, p6

    .line 5111
    .local v5, rotation:I
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    if-eqz v0, :cond_3

    .line 5113
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 5115
    :cond_3
    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    if-nez p5, :cond_4

    move-object v6, v8

    :goto_1
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_0

    :cond_4
    move-object v6, p5

    goto :goto_1
.end method

.method public makeExclusion(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;ZZII)I
    .locals 9
    .parameter "context"
    .parameter "image"
    .parameter "viewFromOtherAp"
    .parameter "viewSingleImage"
    .parameter "canSetAsImageCount"
    .parameter "exclusion"

    .prologue
    .line 491
    sget-boolean v6, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-eqz v6, :cond_0

    .line 492
    or-int/lit16 p6, p6, 0x400

    .line 495
    :cond_0
    if-nez p2, :cond_1

    .line 497
    const-string v6, "MenuManager"

    const-string v7, "[makeExclusion] null image found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v6, -0x1

    .line 613
    :goto_0
    return v6

    .line 501
    :cond_1
    const/high16 v6, 0x20

    or-int/2addr p6, v6

    .line 503
    const-string v6, "video/x-wmv-drm"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 504
    .local v2, isWMDrm:Z
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v2, :cond_10

    :cond_2
    const/4 v1, 0x1

    .line 506
    .local v1, isDrm:Z
    :goto_1
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 512
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_3

    const-string v6, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "mms"

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 516
    or-int/lit8 p6, p6, 0x2

    .line 519
    or-int/lit16 p6, p6, 0x400

    .line 523
    :cond_3
    if-eqz p3, :cond_6

    .line 525
    const v6, 0x40738

    or-int/2addr p6, v6

    .line 532
    if-eqz p4, :cond_4

    .line 533
    or-int/lit16 p6, p6, 0x401

    .line 536
    :cond_4
    if-eqz v1, :cond_5

    .line 537
    if-eqz v2, :cond_11

    const/4 v4, 0x1

    .line 538
    .local v4, type:I
    :goto_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    .line 539
    or-int/lit8 p6, p6, 0x4

    .line 544
    .end local v4           #type:I
    :cond_5
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 545
    or-int/lit8 p6, p6, 0x40

    .line 549
    :cond_6
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, mimeType:Ljava/lang/String;
    if-nez v3, :cond_7

    const-string v3, "none"

    .line 553
    :cond_7
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 555
    or-int/lit16 p6, p6, 0x400

    .line 559
    :cond_8
    if-eqz v1, :cond_a

    .line 560
    const/high16 v6, 0x4

    or-int/2addr p6, v6

    .line 561
    or-int/lit8 p6, p6, 0x8

    .line 562
    or-int/lit8 p6, p6, 0x20

    .line 564
    or-int/lit16 p6, p6, 0x400

    .line 565
    if-eqz v2, :cond_12

    const/4 v4, 0x1

    .line 566
    .restart local v4       #type:I
    :goto_3
    const/4 v6, 0x3

    if-eq v4, v6, :cond_9

    .line 567
    or-int/lit8 p6, p6, 0x2

    .line 569
    :cond_9
    if-eqz v2, :cond_a

    .line 570
    or-int/lit16 p6, p6, 0x80

    .line 576
    .end local v4           #type:I
    :cond_a
    if-nez v1, :cond_c

    .line 578
    or-int/lit16 p6, p6, 0x80

    .line 579
    invoke-virtual {p0, v3}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 581
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/album/AlbumUtility/ExifUtil;->hasGpsInfo(Ljava/lang/String;)Z

    move-result v0

    .line 582
    .local v0, hasInfo:Z
    if-nez v0, :cond_b

    .line 584
    const-string v6, "MenuManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t have gps info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    or-int/lit16 p6, p6, 0x400

    .line 591
    .end local v0           #hasInfo:Z
    :cond_b
    invoke-static {p1, p2}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_c

    .line 593
    or-int/lit8 p6, p6, 0x20

    .line 598
    :cond_c
    const/4 v6, 0x1

    if-gt p5, v6, :cond_d

    .line 599
    or-int/lit8 p6, p6, 0x1

    .line 604
    :cond_d
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 605
    or-int/lit16 p6, p6, 0x200

    .line 608
    :cond_e
    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 609
    or-int/lit16 p6, p6, 0x800

    :cond_f
    move v6, p6

    .line 613
    goto/16 :goto_0

    .line 504
    .end local v1           #isDrm:Z
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1

    .restart local v1       #isDrm:Z
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_11
    move-object v6, p2

    .line 537
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto/16 :goto_2

    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_12
    move-object v6, p2

    .line 565
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v4

    goto :goto_3
.end method

.method public menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter
    .parameter "clickListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;",
            ">;",
            "Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;",
            ")",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 1873
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez p1, :cond_0

    .line 1875
    const-string v4, "MenuManager"

    const-string v5, "You must specify first parameter"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const/4 v4, 0x0

    .line 1913
    :goto_0
    return-object v4

    .line 1879
    :cond_0
    new-instance v0, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p3, v4}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 1880
    .local v0, adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;
    invoke-static {p1, v0}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->rearrangeListItem(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    .line 1881
    new-instance v4, Lcom/htc/album/helper/MenuManager$5;

    invoke-direct {v4, p0, p4, v0}, Lcom/htc/album/helper/MenuManager$5;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V

    invoke-static {p1, p2, v0, v4}, Lcom/htc/album/Customizable/CustHtcAlertDialog;->createAlertDialogBuilder(Landroid/content/Context;ILandroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1897
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_1

    .line 1899
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    .line 1900
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1902
    :cond_1
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    .line 1904
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListSelectorHighlightedColor(Landroid/content/Context;)I

    move-result v3

    .line 1905
    .local v3, resId:I
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 1906
    .local v2, dialogLView:Landroid/widget/ListView;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1907
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 1910
    :cond_2
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1913
    .end local v2           #dialogLView:Landroid/widget/ListView;
    .end local v3           #resId:I
    :cond_3
    iget-object v4, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onclickImageRotate(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;IILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 8
    .parameter "activity"
    .parameter "adapter"
    .parameter "nIndex"
    .parameter "nRotate"
    .parameter "custListener"
    .parameter "rotateStateListener"
    .parameter "pluginWarningMessage"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    .line 4490
    invoke-virtual {p2, p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4492
    .local v4, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v0, :cond_1

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4494
    const-string v0, "MenuManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MenuManager][onclickImageRotate!]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4495
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-ne p4, v3, :cond_0

    const/4 v0, 0x6

    :goto_0
    invoke-interface {v1, v0, p3, v7}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(IILandroid/content/Intent;)V

    .line 4544
    :goto_1
    return-void

    .line 4495
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 4499
    :cond_1
    if-ne p4, v3, :cond_3

    const/16 v5, 0x5a

    .line 4500
    .local v5, rotation:I
    :goto_2
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    if-eqz v0, :cond_2

    .line 4501
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->cancel()V

    .line 4503
    :cond_2
    if-nez p7, :cond_5

    .line 4504
    new-instance v0, Lcom/htc/album/helper/MenuManager$RotateThread;

    if-nez p5, :cond_4

    move-object v6, p6

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager$RotateThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginRotateIBT;)V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mRotateThread:Lcom/htc/album/helper/MenuManager$RotateThread;

    goto :goto_1

    .line 4499
    .end local v5           #rotation:I
    :cond_3
    const/16 v5, 0x10e

    goto :goto_2

    .restart local v5       #rotation:I
    :cond_4
    move-object v6, p5

    .line 4504
    goto :goto_3

    .line 4507
    :cond_5
    new-instance v1, Lcom/htc/album/helper/MenuManager$17;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/htc/album/helper/MenuManager$17;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/helper/MenuManager$RotateStateListener;)V

    invoke-interface {p7, v1}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->setListenerOK(Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;)V

    .line 4533
    new-instance v0, Lcom/htc/album/helper/MenuManager$18;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/MenuManager$18;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-interface {p7, v0}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->setListenerCancel(Lcom/htc/album/AlbumUtility/IPluginButtonStateListener;)V

    .line 4541
    invoke-interface {p7}, Lcom/htc/album/AlbumUtility/IPluginWarningMessage;->show()V

    goto :goto_1
.end method

.method public preDoPrintSingleMedia(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "activity"
    .parameter "imageUri"
    .parameter "mimeType"

    .prologue
    .line 1664
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v1, :cond_0

    .line 1666
    const-string v1, "MenuManager"

    const-string v2, "[preDoPrintSingleMedia]"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1668
    .local v0, tempIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1669
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;->OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V

    .line 1675
    .end local v0           #tempIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1673
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/htc/album/helper/MenuManager;->CallPrintDialog2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFavorite(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .parameter "activity"
    .parameter "imageUri"

    .prologue
    .line 4780
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4786
    :cond_0
    :goto_0
    return-void

    .line 4783
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4784
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4785
    invoke-virtual {p0, p1, v0}, Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4790
    .local p2, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4792
    :cond_0
    const-string v2, "MenuManager"

    const-string v3, "[setFavorite] null activity or image found!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4815
    :goto_0
    return-void

    .line 4796
    :cond_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4797
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 4798
    const v2, 0x7f0a0051

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4799
    .local v1, loggingStr1:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4800
    new-instance v2, Lcom/htc/album/helper/MenuManager$19;

    invoke-direct {v2, p0}, Lcom/htc/album/helper/MenuManager$19;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4808
    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 4810
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4811
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->cancel()V

    .line 4813
    :cond_2
    new-instance v2, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/htc/app/HtcProgressDialog;)V

    iput-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    .line 4814
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    invoke-virtual {v2}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->start()V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    .line 229
    return-void
.end method

.method public setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    .line 250
    return-void
.end method

.method public showDefaultItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2599
    return-void
.end method

.method public showDefaultProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2194
    return-void
.end method

.method public showEditPhotoMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 18
    .parameter "activity"
    .parameter "mainAdapter"
    .parameter "position"
    .parameter "custListener"
    .parameter "pluginWarningMessage"

    .prologue
    .line 4382
    if-nez p2, :cond_0

    .line 4384
    const-string v3, "MenuManager"

    const-string v4, "[HTCAlbum][MenuManager][showEditPhotoMenu]: no adapter..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    :goto_0
    return-void

    .line 4387
    :cond_0
    invoke-virtual/range {p2 .. p3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 4388
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v5, :cond_1

    .line 4390
    const-string v3, "MenuManager"

    const-string v4, "[HTCAlbum][MenuManager][showEditPhotoMenu]: no item..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4396
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4397
    .local v11, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v3, :cond_2

    invoke-interface {v5}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4399
    const v3, 0x7f0a00e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v16

    .line 4400
    .local v16, menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4402
    .end local v16           #menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    const v3, 0x2040215

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v12

    .line 4403
    .local v12, menu_crop:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0a00e5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v13

    .line 4404
    .local v13, menu_enhance:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0a0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v15

    .line 4405
    .local v15, menu_rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v3, 0x7f0a0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v14

    .line 4406
    .local v14, menu_rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4407
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4409
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 4411
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4412
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4416
    :cond_3
    const v17, 0x7f0a00e6

    new-instance v3, Lcom/htc/album/helper/MenuManager$16;

    move-object/from16 v4, p0

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/htc/album/helper/MenuManager$16;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public showFolderMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/album/TabPluginDevice/AlbumCollection;)V
    .locals 9
    .parameter "context"
    .parameter "menuInflater"
    .parameter "menu"
    .parameter "collection"

    .prologue
    const v8, 0x7f09007a

    const/high16 v7, 0x100

    .line 276
    if-eqz p1, :cond_0

    if-nez p4, :cond_2

    .line 278
    :cond_0
    const-string v6, "MenuManager"

    const-string v7, "[showFolderMenu] null activity or image found!!"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    const/high16 v6, 0x7f0d

    invoke-virtual {p2, v6, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 283
    invoke-virtual {p4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, collectionType:Ljava/lang/String;
    invoke-virtual {p4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, bucketID:Ljava/lang/String;
    const/4 v4, 0x0

    .line 286
    .local v4, exclusion:I
    const/4 v0, 0x1

    .line 289
    .local v0, bExcludeRenameItem:Z
    const-string v6, "com.htc.HTCAlbum.LOCAL_FOLDER"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 291
    invoke-static {v2}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isStorageRootBucketID(Ljava/lang/String;)Z

    move-result v1

    .line 293
    .local v1, bIsStorageRoot:Z
    if-nez v1, :cond_3

    .line 294
    const/4 v0, 0x0

    .line 303
    .end local v1           #bIsStorageRoot:Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 305
    or-int/2addr v4, v7

    .line 308
    :cond_4
    and-int/lit8 v6, v4, 0x10

    if-eqz v6, :cond_5

    .line 310
    invoke-static {p3, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 312
    :cond_5
    and-int v6, v4, v7

    if-eqz v6, :cond_1

    .line 314
    const v6, 0x7f09007b

    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_0

    .line 296
    :cond_6
    const-string v6, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    invoke-interface {p3, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 300
    .local v5, item:Landroid/view/MenuItem;
    const v6, 0x2040272

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public showImageRotateMenu(Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V
    .locals 10
    .parameter "activity"
    .parameter "position"
    .parameter "curImage"
    .parameter "listener"

    .prologue
    .line 4993
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 5012
    :cond_0
    :goto_0
    return-void

    .line 4996
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4997
    .local v6, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const v0, 0x7f0a0004

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v8

    .line 4998
    .local v8, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    const v0, 0x7f0a0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v7

    .line 4999
    .local v7, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5000
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5001
    const v9, 0x2040213

    new-instance v0, Lcom/htc/album/helper/MenuManager$21;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$21;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/app/Activity;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;)V

    invoke-virtual {p0, p1, v9, v6, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)V
    .locals 8
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3752
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager;->showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)V

    .line 3755
    return-void
.end method

.method public showItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)V
    .locals 8
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"
    .parameter "callback"
    .parameter "isEditable"

    .prologue
    .line 3764
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v0, :cond_0

    .line 3765
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 3767
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromLocal(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ZLcom/htc/album/helper/MenuManager$IEndDlgCallBack;Z)Z

    .line 3768
    return-void
.end method

.method public showItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)V
    .locals 2
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v0, :cond_0

    .line 2369
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 2371
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromDetailDlg(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Z

    .line 2374
    return-void
.end method

.method public showPhotoEditMenu(Landroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/helper/MenuManager$RotateCallbackListener;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V
    .locals 19
    .parameter "activity"
    .parameter "mainAdapter"
    .parameter "position"
    .parameter "curImage"
    .parameter "cusListener"
    .parameter "pluginWarningMessage"

    .prologue
    .line 4834
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 4988
    :cond_0
    :goto_0
    return-void

    .line 4860
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4862
    .local v12, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-interface/range {p4 .. p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnMenuItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;

    if-eqz v3, :cond_2

    .line 4865
    const v3, 0x7f0a00e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v14

    .line 4866
    .local v14, menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4868
    .end local v14           #menu_save_as_2d:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_2
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/helper/MenuManager;->mOnItemSelectedListener:Lcom/htc/album/helper/MenuManager$OnItemSelectedListener;

    if-eqz v3, :cond_3

    .line 4869
    const v3, 0x7f0a0128

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v13

    .line 4870
    .local v13, menu_adjust_3d_alignment:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4874
    .end local v13           #menu_adjust_3d_alignment:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_3
    const v3, 0x2040215

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v10

    .line 4875
    .local v10, crop:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4877
    const v3, 0x7f0a00e5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v11

    .line 4878
    .local v11, enhance:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4880
    const/4 v15, 0x0

    .line 4881
    .local v15, nCount:I
    invoke-interface/range {p4 .. p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4883
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v15

    .line 4886
    :cond_4
    const/4 v3, 0x1

    if-lt v3, v15, :cond_5

    .line 4888
    const v3, 0x7f0a0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v17

    .line 4889
    .local v17, rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4891
    const v3, 0x7f0a0003

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/htc/album/helper/ComparableFakeRI;->getInstance(Ljava/lang/String;I)Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;

    move-result-object v16

    .line 4892
    .local v16, rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4895
    .end local v16           #rotateLeft:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    .end local v17           #rotateRight:Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;
    :cond_5
    const v18, 0x7f0a00e6

    new-instance v3, Lcom/htc/album/helper/MenuManager$20;

    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move/from16 v6, p3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/htc/album/helper/MenuManager$20;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/util/ImageManager$IImage;ILandroid/app/Activity;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/AlbumUtility/IPluginWarningMessage;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/helper/MenuManager;->mCustomChooser:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method public showPhotoMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 9
    .parameter "context"
    .parameter "menuInflater"
    .parameter "menu"
    .parameter "image"
    .parameter "exclusion"

    .prologue
    const v8, 0x7f090088

    const v7, 0x7f090087

    const v6, 0x7f09007d

    const v4, 0x7f09007c

    const v5, 0x7f09007a

    .line 320
    if-eqz p1, :cond_0

    if-nez p4, :cond_2

    .line 322
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[showPhotoMenu] null activity or image found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    const v3, 0x7f0d0001

    invoke-virtual {p2, v3, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 328
    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 330
    invoke-interface {p3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 331
    .local v1, item:Landroid/view/MenuItem;
    const v3, 0x2040272

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 334
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    and-int/lit16 v3, p5, 0x800

    if-eqz v3, :cond_20

    .line 335
    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 336
    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 343
    :goto_1
    const/high16 v3, 0x20

    and-int/2addr v3, p5

    if-eqz v3, :cond_4

    .line 344
    const v3, 0x7f09007e

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 347
    :cond_4
    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_5

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    :cond_5
    const v3, 0x7f090085

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 350
    :cond_6
    and-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_7

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/album/helper/MenuManager;->isMMSUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "video/x-wmv-drm"

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 351
    :cond_7
    const v3, 0x7f09008b

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 353
    :cond_8
    and-int/lit8 v3, p5, 0x4

    if-nez v3, :cond_9

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 354
    :cond_9
    const v3, 0x7f090081

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 356
    :cond_a
    and-int/lit8 v3, p5, 0x8

    if-nez v3, :cond_b

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 357
    :cond_b
    const v3, 0x7f090084

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 359
    :cond_c
    and-int/lit8 v3, p5, 0x10

    if-eqz v3, :cond_d

    .line 360
    invoke-static {p3, v5}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 362
    :cond_d
    and-int/lit8 v3, p5, 0x20

    if-nez v3, :cond_e

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 363
    :cond_e
    const v3, 0x7f090083

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 365
    :cond_f
    and-int/lit8 v3, p5, 0x40

    if-eqz v3, :cond_10

    .line 366
    const v3, 0x7f090090

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 368
    :cond_10
    and-int/lit16 v3, p5, 0x80

    if-eqz v3, :cond_11

    .line 369
    const v3, 0x7f09008f

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 371
    :cond_11
    and-int/lit16 v3, p5, 0x100

    if-eqz v3, :cond_12

    .line 372
    const v3, 0x7f09008e

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 374
    :cond_12
    and-int/lit16 v3, p5, 0x200

    if-nez v3, :cond_13

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_14

    .line 375
    :cond_13
    const v3, 0x7f090082

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 377
    :cond_14
    and-int/lit16 v3, p5, 0x400

    if-nez v3, :cond_15

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_15

    sget-boolean v3, Lcom/htc/album/helper/MenuManager;->DISABLE_GEOCODE_RELEATE_FUNCTION:Z

    if-eqz v3, :cond_16

    .line 378
    :cond_15
    const v3, 0x7f09008d

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 380
    :cond_16
    const/high16 v3, 0x2

    and-int/2addr v3, p5

    if-eqz v3, :cond_17

    .line 381
    const v3, 0x7f090086

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 384
    :cond_17
    const/high16 v3, 0x40

    and-int/2addr v3, p5

    if-nez v3, :cond_18

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 385
    :cond_18
    const v3, 0x7f090089

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 387
    :cond_19
    const/high16 v3, 0x80

    and-int/2addr v3, p5

    if-nez v3, :cond_1a

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 388
    :cond_1a
    const v3, 0x7f09008a

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 391
    :cond_1b
    const/high16 v3, 0x4

    and-int/2addr v3, p5

    if-nez v3, :cond_1c

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 392
    :cond_1c
    const v3, 0x7f09007f

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 395
    :cond_1d
    const/high16 v3, 0x8

    and-int/2addr v3, p5

    if-nez v3, :cond_1e

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 396
    :cond_1e
    const v3, 0x7f09008c

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 399
    :cond_1f
    const/high16 v3, 0x10

    and-int/2addr v3, p5

    if-eqz v3, :cond_22

    .line 401
    invoke-static {p3, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 402
    invoke-static {p3, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    .line 414
    :goto_2
    const/high16 v3, 0x1

    and-int/2addr v3, p5

    if-eqz v3, :cond_1

    .line 416
    const v3, 0x7f090080

    invoke-static {p3, v3}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_0

    .line 337
    :cond_20
    invoke-interface {p4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 338
    invoke-static {p3, v4}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_1

    .line 340
    :cond_21
    invoke-static {p3, v6}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto/16 :goto_1

    .line 406
    :cond_22
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 407
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "showTag"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 408
    .local v0, bShow:Z
    if-eqz v0, :cond_23

    .line 409
    invoke-static {p3, v7}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2

    .line 411
    :cond_23
    invoke-static {p3, v8}, Lcom/htc/album/helper/MenuManager;->excludeItem(Landroid/view/Menu;I)V

    goto :goto_2
.end method

.method public showProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 1
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    if-nez v0, :cond_0

    .line 2313
    new-instance v0, Lcom/htc/album/helper/DetailsViewHelper;

    invoke-direct {v0}, Lcom/htc/album/helper/DetailsViewHelper;-><init>()V

    iput-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    .line 2315
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager;->mDetailsViewHelper:Lcom/htc/album/helper/DetailsViewHelper;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/helper/DetailsViewHelper;->showImageDetails_FromDRMProtectInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z

    .line 2316
    return-void
.end method

.method public showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
    .locals 1
    .parameter "context"
    .parameter "image"
    .parameter "position"

    .prologue
    .line 797
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/album/helper/MenuManager;->showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public showSetAsMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;IZ)Landroid/app/AlertDialog;
    .locals 9
    .parameter "context"
    .parameter "image"
    .parameter "position"
    .parameter "viewSingle"

    .prologue
    const/4 v8, 0x1

    .line 802
    const-string v6, "MenuManager"

    const-string v7, "[MenuManager][showSetAsMenu]"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 806
    :cond_0
    const-string v6, "MenuManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[showSetAsMenu] null context or image found, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const/4 v6, 0x0

    .line 883
    :goto_0
    return-object v6

    .line 810
    :cond_1
    move-object v1, p2

    .line 812
    .local v1, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v3

    .line 813
    .local v3, isDrm:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v5, realInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 815
    .local v2, fakeInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-nez v3, :cond_5

    .line 817
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsAttachData(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 820
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsContactIcon(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 823
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 838
    :cond_2
    :goto_1
    if-nez p4, :cond_3

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isFavorite()Z

    move-result v6

    if-nez v6, :cond_3

    .line 839
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsFavorite(Landroid/content/Context;Ljava/util/List;)V

    .line 841
    :cond_3
    if-nez v3, :cond_4

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v6

    if-nez v6, :cond_4

    .line 842
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsFootprints(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 844
    :cond_4
    new-instance v0, Lcom/htc/album/helper/MenuManager$2;

    invoke-direct {v0, p0, p3, p1, v1}, Lcom/htc/album/helper/MenuManager$2;-><init>(Lcom/htc/album/helper/MenuManager;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 878
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v4, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 880
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 881
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 883
    const v6, 0x2040210

    invoke-virtual {p0, p1, v6, v4, v0}, Lcom/htc/album/helper/MenuManager;->menuListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    .line 825
    .end local v0           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    .end local v4           #mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    :cond_5
    instance-of v6, v1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 826
    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 828
    invoke-virtual {p0, p1, v1, v5}, Lcom/htc/album/helper/MenuManager;->appendSetAsWallpaper(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/util/List;)V

    .line 831
    invoke-virtual {p0, p1, v2}, Lcom/htc/album/helper/MenuManager;->appendSetAsLockScreen(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public showShareMediaFolderMenu(Landroid/content/Context;IIZLcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "shareImagesCount"
    .parameter "shareVideosCount"
    .parameter "allDRM"
    .parameter "clickListener"

    .prologue
    const/4 v1, 0x0

    .line 1795
    if-nez p1, :cond_1

    .line 1797
    const-string v2, "MenuManager"

    const-string v3, "[MenuManager][showShareMediaFolderMenu] Null context"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    :cond_0
    :goto_0
    return-object v1

    .line 1801
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/album/helper/ShareMenuManager;->createLocalFolderShareList(Landroid/content/Context;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1802
    .local v0, shareList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    const-string v2, "MenuManager"

    const-string v3, "[HTCAlbum][MenuManager][shareItems]: Ends"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1809
    const v1, 0x20400a1

    invoke-direct {p0, p1, v1, v0, p5}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public showShareMediaMenu(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;I)Landroid/app/AlertDialog;
    .locals 6
    .parameter "context"
    .parameter "image"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1017
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1019
    :cond_0
    const-string v3, "MenuManager"

    const-string v4, "[showShareMediaMenu] null context or adapter found!!"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    return-object v1

    .line 1023
    :cond_1
    move-object v5, p2

    .line 1025
    .local v5, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {p1, v5}, Lcom/htc/album/helper/ShareMenuManager;->createLocalSingleShareList(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1028
    .local v2, mergedComparableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetwork/IComparableRI;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1030
    new-instance v0, Lcom/htc/album/helper/MenuManager$3;

    move-object v1, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager$3;-><init>(Lcom/htc/album/helper/MenuManager;Ljava/util/ArrayList;ILandroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 1062
    .local v0, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    const v1, 0x20400a1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1065
    .end local v0           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    :cond_2
    const v3, 0x7f0a000d

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showTabletItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 49
    .parameter "context"
    .parameter "pos"
    .parameter "curImage"
    .parameter "adapter"
    .parameter "viewSingle"

    .prologue
    .line 3303
    if-nez p3, :cond_0

    .line 3305
    const-string v4, "MenuManager"

    const-string v5, "[showItemDetails] null image found!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    const/16 v20, 0x0

    .line 3701
    :goto_0
    return-object v20

    .line 3309
    :cond_0
    const v4, 0x7f030008

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    .line 3310
    .local v14, d:Landroid/widget/ScrollView;
    const v4, 0x7f090020

    invoke-virtual {v14, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 3313
    .local v21, detailsContainer:Landroid/view/ViewGroup;
    const v4, 0x7f090023

    invoke-virtual {v14, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 3316
    .local v28, imageView:Landroid/widget/ImageView;
    new-instance v4, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    move-object/from16 v3, p3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 3317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v4, v5}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3319
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    .line 3321
    .local v6, isDrm:Z
    const v4, 0x7f090025

    invoke-virtual {v14, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 3322
    .local v7, editText:Landroid/widget/EditText;
    const v4, 0x7f090024

    invoke-virtual {v14, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 3323
    .local v43, textView:Landroid/widget/TextView;
    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3324
    const/4 v4, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 3325
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3327
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setLines(I)V

    .line 3328
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 3329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v42

    .line 3330
    .local v42, subFileIndex:I
    const/4 v4, -0x1

    move/from16 v0, v42

    if-eq v0, v4, :cond_12

    .line 3331
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v44

    .line 3332
    .local v44, tmpSubName:Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    .line 3333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    const/4 v5, 0x0

    move/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 3337
    .end local v44           #tmpSubName:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3341
    const/4 v12, 0x0

    .line 3344
    .local v12, bFirstRowAdded:Z
    if-eqz p5, :cond_1

    const-string v4, "file"

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3349
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v26

    .line 3350
    .local v26, fullPathName:Ljava/lang/String;
    const/16 v37, 0x0

    .line 3351
    .local v37, pathName:Ljava/lang/String;
    if-eqz v26, :cond_2

    .line 3352
    const/16 v34, 0x0

    .line 3353
    .local v34, nStart:I
    const/16 v4, 0x2f

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v33

    .line 3354
    .local v33, nLastIndex:I
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_2

    .line 3355
    move-object/from16 v0, v26

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 3358
    .end local v33           #nLastIndex:I
    .end local v34           #nStart:I
    :cond_2
    if-eqz v37, :cond_3

    .line 3360
    const v4, 0x7f0a0089

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3365
    .end local v26           #fullPathName:Ljava/lang/String;
    .end local v37           #pathName:Ljava/lang/String;
    :cond_3
    if-nez p5, :cond_5

    .line 3367
    const-string v19, ""

    .line 3368
    .local v19, dateString:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSortBase()J

    move-result-wide v17

    .line 3369
    .local v17, dateSort:J
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-nez v4, :cond_4

    .line 3371
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v17

    .line 3372
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-nez v4, :cond_4

    .line 3374
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateAdded()J

    move-result-wide v17

    .line 3377
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-eqz v4, :cond_5

    .line 3379
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    .line 3380
    .local v16, date:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 3381
    .local v13, cal:Ljava/util/Calendar;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3383
    sget-object v4, Lcom/htc/album/helper/MenuManager;->sDateFormat:Ljava/lang/CharSequence;

    move-wide/from16 v0, v17

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3386
    const/16 v4, 0xb

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v27

    .line 3387
    .local v27, hour:I
    const/16 v4, 0xc

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v32

    .line 3391
    .local v32, min:I
    const/16 v4, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_13

    .line 3392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3396
    :goto_2
    const/16 v4, 0xa

    move/from16 v0, v32

    if-ge v0, v4, :cond_14

    .line 3397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3403
    :goto_3
    const v4, 0x7f0a0093

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3408
    .end local v13           #cal:Ljava/util/Calendar;
    .end local v16           #date:Ljava/util/Date;
    .end local v17           #dateSort:J
    .end local v19           #dateString:Ljava/lang/String;
    .end local v27           #hour:I
    .end local v32           #min:I
    :cond_5
    const-string v31, ""

    .line 3411
    .local v31, lengthString:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v39

    .line 3412
    .local v39, recordLength:J
    const-wide/16 v4, -0x1

    cmp-long v4, v39, v4

    if-nez v4, :cond_6

    .line 3413
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v45

    .line 3415
    .local v45, uri:Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3417
    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v36

    .line 3419
    .local v36, path:Ljava/lang/String;
    :try_start_0
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3420
    .local v25, file:Ljava/io/File;
    const-string v4, "[showTabletItemDetails]"

    move-object/from16 v0, v25

    invoke-static {v0, v4}, Lcom/htc/sunny2/common/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3422
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v39

    .line 3429
    .end local v25           #file:Ljava/io/File;
    .end local v36           #path:Ljava/lang/String;
    .end local v45           #uri:Landroid/net/Uri;
    :cond_6
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v4, v39, v4

    if-lez v4, :cond_7

    .line 3430
    move-object/from16 v0, p1

    move-wide/from16 v1, v39

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v31

    .line 3433
    :cond_7
    const-string v4, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3434
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageData()Ljava/io/InputStream;

    move-result-object v15

    .line 3436
    .local v15, data:Ljava/io/InputStream;
    if-eqz v15, :cond_8

    .line 3437
    :try_start_1
    invoke-virtual {v15}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v29, v0

    .line 3438
    .local v29, length:J
    move-object/from16 v0, p1

    move-wide/from16 v1, v29

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v31

    .line 3440
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3448
    .end local v15           #data:Ljava/io/InputStream;
    .end local v29           #length:J
    :cond_8
    :goto_5
    const-string v4, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 3449
    const v4, 0x7f0a0097

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v31

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3453
    :cond_9
    if-nez v6, :cond_a

    .line 3454
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 3456
    .local v41, resolution:Ljava/lang/String;
    const v4, 0x7f0a008a

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v41

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3461
    .end local v41           #resolution:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p3

    instance-of v4, v0, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    if-eqz v4, :cond_15

    move-object/from16 v4, p3

    .line 3462
    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$VideoObject;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/htc/album/helper/MenuManager;->setupTabletVideoDetailRows(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/htc/opensense2/album/util/ImageManager$VideoObject;)V

    .line 3471
    :goto_6
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "video/x-wmv-drm"

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3472
    :cond_b
    const v4, 0x7f0a0094

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0096

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4, v5, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3484
    :goto_7
    const/16 v24, 0x0

    .line 3486
    .local v24, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/album/helper/MenuManager;->isPhotoHaveExifInfo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3487
    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/AlbumUtility/ExifUtil;->getExifData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v24

    .line 3489
    :cond_c
    if-eqz v24, :cond_11

    .line 3491
    const-string v4, "Make"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 3492
    .local v46, value:Ljava/lang/String;
    if-eqz v46, :cond_d

    .line 3493
    const v4, 0x7f0a0099

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3496
    :cond_d
    const-string v4, "Model"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .end local v46           #value:Ljava/lang/String;
    check-cast v46, Ljava/lang/String;

    .line 3497
    .restart local v46       #value:Ljava/lang/String;
    if-eqz v46, :cond_e

    .line 3498
    const v4, 0x7f0a009a

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3501
    :cond_e
    const-string v4, "WhiteBalance"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .end local v46           #value:Ljava/lang/String;
    check-cast v46, Ljava/lang/String;

    .line 3502
    .restart local v46       #value:Ljava/lang/String;
    if-eqz v46, :cond_f

    .line 3503
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/htc/album/AlbumUtility/ExifUtil;->whiteBalanceToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v46

    .line 3505
    :cond_f
    if-eqz v46, :cond_10

    const-string v4, ""

    move-object/from16 v0, v46

    if-eq v0, v4, :cond_10

    .line 3506
    const v4, 0x7f0a009b

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v46

    invoke-static {v0, v1, v4, v2, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    .line 3509
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/album/helper/MenuManager;->setTabletLatLngDetails(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 3514
    .end local v46           #value:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3516
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 3335
    .end local v12           #bFirstRowAdded:Z
    .end local v24           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v31           #lengthString:Ljava/lang/String;
    .end local v39           #recordLength:J
    :cond_12
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;

    goto/16 :goto_1

    .line 3394
    .restart local v12       #bFirstRowAdded:Z
    .restart local v13       #cal:Ljava/util/Calendar;
    .restart local v16       #date:Ljava/util/Date;
    .restart local v17       #dateSort:J
    .restart local v19       #dateString:Ljava/lang/String;
    .restart local v27       #hour:I
    .restart local v32       #min:I
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 3399
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    .line 3424
    .end local v13           #cal:Ljava/util/Calendar;
    .end local v16           #date:Ljava/util/Date;
    .end local v17           #dateSort:J
    .end local v19           #dateString:Ljava/lang/String;
    .end local v27           #hour:I
    .end local v32           #min:I
    .restart local v31       #lengthString:Ljava/lang/String;
    .restart local v36       #path:Ljava/lang/String;
    .restart local v39       #recordLength:J
    .restart local v45       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v22

    .line 3425
    .local v22, e:Ljava/lang/Exception;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 3442
    .end local v22           #e:Ljava/lang/Exception;
    .end local v36           #path:Ljava/lang/String;
    .end local v45           #uri:Landroid/net/Uri;
    .restart local v15       #data:Ljava/io/InputStream;
    :catch_1
    move-exception v23

    .line 3443
    .local v23, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 3444
    .end local v23           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4

    .line 3467
    .end local v15           #data:Ljava/io/InputStream;
    :cond_15
    const v4, 0x7f0a0098

    invoke-interface/range {p3 .. p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4, v5, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    goto/16 :goto_6

    .line 3474
    :cond_16
    const v4, 0x7f0a0094

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0095

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4, v5, v12}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v12

    goto/16 :goto_7

    .line 3522
    .restart local v24       #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0017

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v47

    const v48, 0x2040174

    new-instance v4, Lcom/htc/album/helper/MenuManager$12;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v4 .. v11}, Lcom/htc/album/helper/MenuManager$12;-><init>(Lcom/htc/album/helper/MenuManager;ZLandroid/widget/EditText;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v0, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401ee

    new-instance v8, Lcom/htc/album/helper/MenuManager$11;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/album/helper/MenuManager$11;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20401ee

    new-instance v8, Lcom/htc/album/helper/MenuManager$10;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/album/helper/MenuManager$10;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v4, v5, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 3580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->mShowItemDetails_DetailDlg:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v20, v0

    .line 3583
    .local v20, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3588
    const/4 v4, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v38

    .line 3589
    .local v38, positiveBtn:Landroid/widget/Button;
    if-eqz v38, :cond_18

    const/4 v4, 0x4

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3591
    :cond_18
    const/4 v4, -0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v35

    .line 3592
    .local v35, negativeBtn:Landroid/widget/Button;
    if-eqz v35, :cond_19

    const/4 v4, 0x4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3594
    :cond_19
    if-nez v6, :cond_1a

    if-nez p5, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/album/helper/MenuManager;->mbAllowEdit:Z

    if-eqz v4, :cond_1a

    .line 3598
    new-instance v4, Lcom/htc/album/helper/MenuManager$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v43

    invoke-direct {v4, v0, v1, v2, v7}, Lcom/htc/album/helper/MenuManager$13;-><init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/widget/HtcAlertDialog;Landroid/widget/TextView;Landroid/widget/EditText;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3682
    :cond_1a
    new-instance v4, Lcom/htc/album/helper/MenuManager$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/htc/album/helper/MenuManager$14;-><init>(Lcom/htc/album/helper/MenuManager;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3698
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 3699
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showTabletItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Lcom/htc/widget/HtcAlertDialog;
    .locals 24
    .parameter "context"
    .parameter "callback"
    .parameter "detailParams"
    .parameter "viewSingle"

    .prologue
    .line 2605
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2607
    :cond_0
    const-string v17, "MenuManager"

    const-string v18, "[showTabletItemDetails_FromDetailDlgParams] null context or DetailDlgParams found!!"

    invoke-static/range {v17 .. v18}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    const/4 v9, 0x0

    .line 2731
    :goto_0
    return-object v9

    .line 2615
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    .line 2617
    const v17, 0x7f030008

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    .line 2618
    .local v8, d:Landroid/widget/ScrollView;
    const v17, 0x7f090020

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 2620
    .local v10, detailsContainer:Landroid/view/ViewGroup;
    const v17, 0x7f090023

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2626
    .local v14, imageView:Landroid/widget/ImageView;
    new-instance v17, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/album/DetailDlgParams;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 2627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2629
    const v17, 0x7f090025

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 2630
    .local v13, editText:Landroid/widget/EditText;
    const v17, 0x7f090024

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2631
    .local v16, textView:Landroid/widget/TextView;
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2632
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2633
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2635
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setLines(I)V

    .line 2636
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2641
    const/4 v4, 0x0

    .line 2644
    .local v4, bFirstRowAdded:Z
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_2

    .line 2645
    const v17, 0x7f0a0089

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getPathName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2648
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_3

    .line 2649
    const v17, 0x7f0a0093

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDateString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2652
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/album/DetailDlgParams;->getSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 2653
    .local v15, sSize:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_4

    .line 2654
    const v17, 0x7f0a0097

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v10, v1, v15, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2658
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_5

    .line 2659
    const v17, 0x7f0a008a

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2662
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->isVideio()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2665
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_6

    .line 2666
    const v17, 0x7f0a008a

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getResolution()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2669
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_7

    .line 2670
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getDuration()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    mul-int/lit16 v11, v0, 0x3e8

    .line 2671
    .local v11, durationMs:I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/htc/album/helper/MenuManager;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    .line 2672
    .local v12, durationValue:Ljava/lang/String;
    const v17, 0x7f0a008b

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v10, v1, v12, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2675
    .end local v11           #durationMs:I
    .end local v12           #durationValue:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_8

    .line 2676
    const v17, 0x7f0a008c

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getFramerate()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2679
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_9

    .line 2680
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getBitrate()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2682
    .local v5, bitRate:J
    const-wide/32 v17, 0xf4240

    cmp-long v17, v5, v17

    if-gez v17, :cond_b

    .line 2683
    const v17, 0x7f0a0091

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-wide/16 v20, 0x3e8

    div-long v20, v5, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2688
    .local v7, bps:Ljava/lang/String;
    :goto_1
    const v17, 0x7f0a008d

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v10, v1, v7, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2692
    .end local v5           #bitRate:J
    .end local v7           #bps:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_a

    .line 2694
    const v17, 0x7f0a0098

    invoke-virtual/range {p3 .. p3}, Lcom/htc/album/DetailDlgParams;->getMimeType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2698
    :cond_a
    const v17, 0x7f0a0094

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0095

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v4}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v4

    .line 2702
    new-instance v17, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0a0017

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v17

    const v18, 0x2040174

    new-instance v19, Lcom/htc/album/helper/MenuManager$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/MenuManager$8;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual/range {v17 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v9

    .line 2713
    .local v9, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    new-instance v17, Lcom/htc/album/helper/MenuManager$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/MenuManager$9;-><init>(Lcom/htc/album/helper/MenuManager;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2728
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x400

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 2729
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2685
    .end local v9           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .restart local v5       #bitRate:J
    :cond_b
    const v17, 0x7f0a0092

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    long-to-double v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0x412e848000000000L

    div-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #bps:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public showTabletProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 18
    .parameter "context"
    .parameter "curImage"

    .prologue
    .line 2199
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2308
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2205
    .restart local p2
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2210
    const v14, 0x7f030008

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    .line 2211
    .local v7, d:Landroid/widget/ScrollView;
    const v14, 0x7f090020

    invoke-virtual {v7, v14}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 2214
    .local v9, detailsContainer:Landroid/view/ViewGroup;
    const v14, 0x7f090023

    invoke-virtual {v7, v14}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 2216
    .local v12, imageView:Landroid/widget/ImageView;
    const v14, 0x7f090025

    invoke-virtual {v7, v14}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 2217
    .local v11, editText:Landroid/widget/EditText;
    const v14, 0x7f090024

    invoke-virtual {v7, v14}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2218
    .local v13, titleText:Landroid/widget/TextView;
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2219
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2220
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2221
    const v14, 0x7f0a00b3

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 2223
    const/4 v3, 0x0

    .local v3, bFirstRowAdded:Z
    move-object/from16 v14, p2

    .line 2224
    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v10

    .line 2225
    .local v10, drmType:I
    const/4 v14, 0x3

    if-ne v10, v14, :cond_2

    .line 2226
    const v14, 0x7f0a00a7

    const v15, 0x7f0a00b5

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2231
    :goto_1
    new-instance v14, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v14, v0, v1, v12, v2}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;-><init>(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Landroid/widget/ImageView;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    .line 2232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2234
    const/4 v14, 0x1

    if-ne v10, v14, :cond_3

    .line 2237
    const v14, 0x7f0a00a8

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2238
    const v14, 0x7f0a00a9

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2239
    const v14, 0x7f0a00aa

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2277
    .end local p2
    :goto_2
    new-instance v14, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0a00a2

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v14

    const v15, 0x2040174

    new-instance v16, Lcom/htc/album/helper/MenuManager$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/helper/MenuManager$6;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual/range {v14 .. v16}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    .line 2288
    .local v4, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v4, :cond_0

    .line 2290
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 2291
    .local v8, detailDlg:Lcom/htc/widget/HtcAlertDialog;
    if-eqz v8, :cond_0

    .line 2293
    new-instance v14, Lcom/htc/album/helper/MenuManager$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/album/helper/MenuManager$7;-><init>(Lcom/htc/album/helper/MenuManager;)V

    invoke-virtual {v8, v14}, Lcom/htc/widget/HtcAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2305
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_0

    .line 2228
    .end local v4           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v8           #detailDlg:Lcom/htc/widget/HtcAlertDialog;
    .restart local p2
    :cond_2
    const v14, 0x7f0a00a7

    const v15, 0x7f0a00b4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_1

    .line 2244
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    if-nez v14, :cond_4

    .line 2245
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020029

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    .line 2247
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    invoke-static {v15}, Lcom/htc/opensense2/album/util/BitmapUtil2;->isUsableBitmap(Landroid/graphics/Bitmap;)Z

    move-result v15

    if-ne v14, v15, :cond_5

    .line 2249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/helper/MenuManager;->detailThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v15, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v14, v15, v2}, Lcom/htc/album/helper/MenuManager;->setThumbnailImageMask(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2252
    :cond_5
    const/4 v14, 0x2

    new-array v5, v14, [Ljava/lang/String;

    .line 2253
    .local v5, constraints:[Ljava/lang/String;
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v5}, Lcom/htc/opensense2/album/util/DrmManager;->getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I

    move-result v6

    .line 2254
    .local v6, constriantType:I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    .line 2255
    const v14, 0x7f0a00a8

    const-string v15, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2256
    const v14, 0x7f0a00a9

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2257
    const v14, 0x7f0a00aa

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_2

    .line 2259
    :cond_6
    if-nez v6, :cond_7

    .line 2260
    const v14, 0x7f0a00a8

    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2261
    const v14, 0x7f0a00a9

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2262
    const v14, 0x7f0a00aa

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_2

    .line 2264
    :cond_7
    const/4 v14, 0x2

    if-ne v6, v14, :cond_8

    .line 2265
    const v14, 0x7f0a00a8

    const-string v15, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2266
    const v14, 0x7f0a00a9

    const/4 v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2267
    const v14, 0x7f0a00aa

    const/4 v15, 0x1

    aget-object v15, v5, v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_2

    .line 2269
    :cond_8
    const v14, 0x7f0a00a8

    const-string v15, "0"

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2270
    const v14, 0x7f0a00a9

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    .line 2271
    const v14, 0x7f0a00aa

    const v15, 0x7f0a00b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v9, v14, v15, v3}, Lcom/htc/album/helper/MenuManager;->addRowToDetailsContainer(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_2
.end method
