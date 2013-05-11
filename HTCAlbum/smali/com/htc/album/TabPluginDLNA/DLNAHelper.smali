.class public Lcom/htc/album/TabPluginDLNA/DLNAHelper;
.super Ljava/lang/Object;
.source "DLNAHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/DLNAHelper$DLNAPlayingReceiver;
    }
.end annotation


# static fields
.field public static final CLASS_PHOTO_DMC:Ljava/lang/String; = "com.htc.album.TabPluginDLNA.ActivityPhotoDMC"

.field public static final DMC_MODE_FROM_LOCAL:I = 0x0

.field public static final DMC_MODE_FROM_MEDIA_SERVICE:I = 0x1

.field public static final DMC_MODE_FROM_ONLINE:I = 0x2

.field public static final DMRSERVER_PICKPHOTO:I = 0x1

.field public static final DMRSERVER_PICKVIDEO:I = 0x2

.field public static final INTENT_KEY_VIDEO_THUMB_URI:Ljava/lang/String; = "VideoThumbUri"

.field public static final INTENT_KEY_VIDEO_URI:Ljava/lang/String; = "filepath"

.field public static final KEY_DLNA_PLAYING:Ljava/lang/String; = "key_dlna_playing"

.field public static final LOG_TAG:Ljava/lang/String; = "DMCHelper"

.field public static final PACKAGE_PHOTO_DMC:Ljava/lang/String; = "com.htc.album"

.field private static final PROVIDER_RESULT_FAILED:Ljava/lang/String; = "false"

.field private static final PROVIDER_RESULT_OK:Ljava/lang/String; = "true"

.field public static final VIDEO_DMC_CLASS_NAME:Ljava/lang/String; = "com.htc.video.dmc.VideoDMC"

.field public static final VIDEO_DMC_PACKAGE_NAME:Ljava/lang/String; = "com.htc.video.dmc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 417
    return-void
.end method

.method public static addTVDisplayMenu(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 5
    .parameter "context"
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0a0183

    const/4 v2, 0x1

    .line 257
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->ENABLE_TV_BUTTON:Z

    if-nez v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isReadyDongleNearBy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, item:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    const v1, 0x7f0a0184

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 271
    :cond_2
    invoke-interface {p1, v4, v3, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 272
    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public static getRunningDMR(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 347
    .local v0, dmr:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getCurrentDmrUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    .line 349
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRunningDMRRes(Landroid/content/Context;Ljava/lang/String;)J
    .locals 6
    .parameter "context"
    .parameter "renderer"

    .prologue
    .line 326
    const-wide/16 v1, 0x2

    .line 329
    .local v1, nRet:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getCurrentDmrPhotoRes(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 331
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 332
    const-wide/16 v1, 0x2

    .line 339
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v1

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, ex:Ljava/lang/Exception;
    const-wide/16 v1, 0x2

    goto :goto_0
.end method

.method public static isDLNAPlaying(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 371
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_dlna_playing"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 372
    .local v1, isPlaying:Z
    if-eqz v1, :cond_0

    .line 374
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->getRunningDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isValidateDMR(Ljava/lang/String;)Z

    move-result v0

    .line 375
    .local v0, isDLNARunning:Z
    if-nez v0, :cond_0

    .line 377
    const/4 v1, 0x0

    .line 378
    invoke-static {p0, v4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->setDLNAPlayingState(Landroid/content/Context;Z)V

    .line 382
    .end local v0           #isDLNARunning:Z
    :cond_0
    return v1
.end method

.method public static isFromDMC(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 394
    if-nez p0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    const-string v1, "com.htc.album.action.DLNA_VIEW_ONLINE_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_VIEW_ONLINE_BROWSE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_VIEW_SERVER_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_BROWSE_DMS"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 408
    .local v0, isFromDMC:Z
    :cond_3
    const-string v1, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DMCHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFromDMC]: back to local FullScreenView, Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "position"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isValidateDMR(Ljava/lang/String;)Z
    .locals 2
    .parameter "renderer"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, bRet:Z
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 366
    :cond_0
    return v0
.end method

.method public static launchBurstShotDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter "renderer"
    .parameter "startPhotoID"
    .parameter "collection"

    .prologue
    .line 57
    if-nez p3, :cond_0

    .line 70
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.LAUNCH_LOCAL_BURSTSHOT_PHOTO_DMC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, callDMC:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "from_gallery"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v2, "Render"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "photoId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "collection_info"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 67
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->saveToPerference()V

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 69
    const v2, 0x330010

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchLocalPhotoDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V
    .locals 4
    .parameter "activity"
    .parameter "renderer"
    .parameter "startPhotoID"
    .parameter "collection"

    .prologue
    .line 74
    if-nez p3, :cond_0

    .line 90
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.action.LAUNCH_LOCAL_PHOTO_DMC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, callDMC:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "folder_type"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "key_folder_name"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "key_bucket_id"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "collection_info"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 83
    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->saveToPerference()V

    .line 85
    const-string v2, "from_gallery"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v2, "Render"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "photoId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    const v2, 0x330010

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static launchLocalVideoDMC(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/collection/Collection;)V
    .locals 7
    .parameter "activity"
    .parameter "renderer"
    .parameter "image"
    .parameter "collection"

    .prologue
    .line 94
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.htc.video.dmc.VideoDMC"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, callDMC:Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v3, extras:Landroid/os/Bundle;
    const-string v4, "folder_type"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "key_folder_name"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v4, "key_bucket_id"

    invoke-virtual {p3}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v4, "Extras"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    new-instance v3, Landroid/os/Bundle;

    .end local v3           #extras:Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    .restart local v3       #extras:Landroid/os/Bundle;
    const-string v4, "dmc_mode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v4, "filepath"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "from_gallery"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const-string v4, "Render"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v4, "photoId"

    invoke-interface {p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 116
    .local v0, actParent:Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 117
    .local v1, actTop:Landroid/app/Activity;
    :goto_1
    if-nez v1, :cond_4

    if-nez v0, :cond_2

    move-object v0, p0

    .line 118
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    .end local v1           #actTop:Landroid/app/Activity;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1       #actTop:Landroid/app/Activity;
    :cond_4
    move-object v0, v1

    .line 117
    goto :goto_2
.end method

.method public static launchMediaServerDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/TabPluginDLNA/DLNAServerInfo;Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;)V
    .locals 20
    .parameter "activity"
    .parameter "renderer"
    .parameter "startIndex"
    .parameter "serverInfo"
    .parameter "adapter"

    .prologue
    .line 124
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v12

    check-cast v12, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 130
    .local v12, itemInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    if-eqz v12, :cond_0

    .line 133
    iget-object v7, v12, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 134
    .local v7, contentID:Ljava/lang/String;
    const-string v17, "4"

    iget-object v0, v12, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 135
    .local v11, isVideo:Z
    const-string v17, "2"

    iget-object v0, v12, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 137
    .local v10, isImage:Z
    if-nez v11, :cond_2

    if-eqz v10, :cond_0

    .line 140
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getDirectoryInfo()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .line 141
    .local v8, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v15

    .line 146
    .local v15, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v15, :cond_0

    .line 149
    invoke-virtual/range {p4 .. p4}, Lcom/htc/album/TabPluginDLNA/AdapterDlnaMediumItem;->getServiceDirectory()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 150
    .local v16, serviceDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    if-eqz v16, :cond_0

    .line 153
    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectories()Ljava/util/ArrayList;

    move-result-object v14

    .line 155
    .local v14, objList:Ljava/util/ArrayList;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v9, dmcExtras:Landroid/os/Bundle;
    const-string v17, "server_name"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v17, "container"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mMediumID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v17, "startIdx"

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 159
    const-string v17, "endIdx"

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    const-string v17, "direction"

    invoke-virtual {v15}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v17, "directory_info"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v14}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    const-string v17, "from_gallery"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v17, "itemIndex"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v17, "Render"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x0

    .line 168
    .local v6, callDMC:Landroid/content/Intent;
    if-eqz v11, :cond_5

    .line 170
    new-instance v6, Landroid/content/Intent;

    .end local v6           #callDMC:Landroid/content/Intent;
    const-string v17, "com.htc.video.dmc.VideoDMC"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v6       #callDMC:Landroid/content/Intent;
    const-string v17, "com.htc.video.dmc.VideoDMC"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v17, "dmc_mode"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-static {v14}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->exportDirectoriesToStringURI(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, location:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 175
    const-string v17, "filepath"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_3
    const-string v17, "Server"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v17, "content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v5, bundle:Landroid/os/Bundle;
    const-string v17, "folder_type"

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v17, "key_bucket_id"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v17, "key_folder_name"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v17, "location"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v17, "directory_info"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v14}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    const-string v17, "Extras"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 194
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v13           #location:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    const/high16 v17, 0x400

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 207
    .local v3, actParent:Landroid/app/Activity;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    .line 208
    .local v4, actTop:Landroid/app/Activity;
    :goto_3
    if-nez v4, :cond_7

    if-nez v3, :cond_4

    move-object/from16 v3, p0

    .line 209
    :cond_4
    :goto_4
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 189
    .end local v3           #actParent:Landroid/app/Activity;
    .end local v4           #actTop:Landroid/app/Activity;
    :cond_5
    new-instance v6, Landroid/content/Intent;

    .end local v6           #callDMC:Landroid/content/Intent;
    const-string v17, "com.htc.album.action.LAUNCH_MEDIASERVER_PHOTO_DMC"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v6       #callDMC:Landroid/content/Intent;
    const-string v17, "server_id"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v17, "content_id"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    .restart local v3       #actParent:Landroid/app/Activity;
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .restart local v4       #actTop:Landroid/app/Activity;
    :cond_7
    move-object v3, v4

    .line 208
    goto :goto_4

    .line 201
    .end local v3           #actParent:Landroid/app/Activity;
    .end local v4           #actTop:Landroid/app/Activity;
    :catch_0
    move-exception v17

    goto :goto_2
.end method

.method public static launchSelectPlayer(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "autoSearch"

    .prologue
    const/4 v4, 0x0

    .line 281
    const-string v2, "DMCHelper"

    const-string v3, "[launchSelectPlayer]"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    if-nez p0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 286
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 287
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :goto_1
    const-string v2, "cookie"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v2, "filter"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v2, "directmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const/16 v2, 0x1398

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMCHelper"

    const-string v3, "[launchSelectPlayer]: start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "com.htc.dmc"

    const-string v3, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static setDLNAPlayingState(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "playing"

    .prologue
    .line 387
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 388
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_dlna_playing"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    return-void
.end method

.method public static setRunningDMRRes(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4
    .parameter "context"
    .parameter "renderer"
    .parameter "res"

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 313
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setCurrentDmrPhotoRes(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, result:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 321
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return v0

    .line 316
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static shouldPlayOnTV(Landroid/content/Context;Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)Z
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 216
    :try_start_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "DMCHelper"

    const-string v2, "[shouldPlayOnTV] TV alreay on, launch DMC now!!"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;->onTVReadyToPlay()V

    .line 220
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->shouldPlayOnTV(Landroid/content/Context;)Z

    move-result v0

    .line 224
    .local v0, bRet:Z
    const-string v1, "DMCHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[shouldPlayOnTV] Check should play on TV, bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0           #bRet:Z
    :catch_0
    move-exception v1

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static turnOnTV(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 239
    :try_start_0
    const-string v1, "DMCHelper"

    const-string v2, "[turnOnTV] mirrorNow"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 244
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->mirrorNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v1, 0x1

    .line 252
    .end local v0           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v1

    .line 247
    :catch_0
    move-exception v1

    .line 252
    const/4 v1, 0x0

    goto :goto_0
.end method
