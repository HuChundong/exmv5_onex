.class public Lcom/htc/videowidget/videoDMC/DMCHelper;
.super Ljava/lang/Object;
.source "DMCHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CLASS_DMC:Ljava/lang/String; = "com.htc.dmc.HtcDMCAlbum"

.field public static final DMRSERVER_PICKPHOTO:I = 0x1

.field public static final DMRSERVER_PICKVIDEO:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "DMCHelper"

.field public static final PACKAGE_DMC:Ljava/lang/String; = "com.htc.dmc"

.field private static gContainer:Ljava/lang/String;

.field private static gContent:Ljava/lang/String;

.field private static gCookie:I

.field private static gDMR:Ljava/lang/String;

.field private static gDMS:Ljava/lang/String;

.field private static gDuration:Ljava/lang/Long;

.field private static gFilePathName:Ljava/lang/String;

.field private static gFileSize:Ljava/lang/String;

.field private static gFilterCap:I

.field private static gInDirect:Z

.field private static gModifiedDate:Ljava/lang/String;

.field private static gPathName:Ljava/lang/String;

.field private static gPickDMRParam:Ljava/lang/Object;

.field private static gServer:Ljava/lang/String;

.field private static gSourceType:I

.field private static gStatus:Ljava/lang/String;

.field private static gType:Ljava/lang/String;

.field private static gUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 27
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    .line 28
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    .line 29
    sput v3, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/videowidget/videoDMC/DMCHelper;->gInDirect:Z

    .line 31
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    .line 32
    sput v3, Lcom/htc/videowidget/videoDMC/DMCHelper;->gCookie:I

    .line 33
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gServer:Ljava/lang/String;

    .line 34
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContainer:Ljava/lang/String;

    .line 35
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContent:Ljava/lang/String;

    .line 36
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPathName:Ljava/lang/String;

    .line 37
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilePathName:Ljava/lang/String;

    .line 38
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gModifiedDate:Ljava/lang/String;

    .line 39
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFileSize:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDuration:Ljava/lang/Long;

    .line 41
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gType:Ljava/lang/String;

    .line 42
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gStatus:Ljava/lang/String;

    .line 43
    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    .line 44
    sput v3, Lcom/htc/videowidget/videoDMC/DMCHelper;->gSourceType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContainer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 514
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 515
    const/4 v1, 0x0

    .line 522
    :goto_0
    return-object v1

    .line 517
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 518
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContainer:Ljava/lang/String;

    goto :goto_0

    .line 520
    :cond_1
    const-string v1, "Container"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContainer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContainer:Ljava/lang/String;

    .line 522
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContainer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 545
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 546
    const/4 v1, 0x0

    .line 553
    :goto_0
    return-object v1

    .line 548
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContent:Ljava/lang/String;

    goto :goto_0

    .line 551
    :cond_1
    const-string v1, "Content"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContent:Ljava/lang/String;

    .line 553
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCookie(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 453
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 454
    const/4 v1, -0x1

    .line 460
    :goto_0
    return v1

    .line 456
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gCookie:I

    goto :goto_0

    .line 459
    :cond_1
    const-string v1, "Cookie"

    sget v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gCookie:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gCookie:I

    .line 460
    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gCookie:I

    goto :goto_0
.end method

.method public static getDMR(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 354
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 355
    const/4 v1, 0x0

    .line 364
    :goto_0
    return-object v1

    .line 357
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 360
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_2
    const-string v1, "DMR"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    .line 364
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDMS(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 387
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 388
    const/4 v1, 0x0

    .line 397
    :goto_0
    return-object v1

    .line 390
    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 392
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0

    .line 395
    :cond_2
    const-string v1, "DMS"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    .line 397
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDuration(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 700
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 701
    const-wide/16 v1, -0x1

    .line 708
    :goto_0
    return-wide v1

    .line 703
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 704
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDuration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 706
    :cond_1
    const-string v1, "Duration"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDuration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDuration:Ljava/lang/Long;

    .line 708
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDuration:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getFilePathName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 607
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 608
    const/4 v1, 0x0

    .line 615
    :goto_0
    return-object v1

    .line 610
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 611
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilePathName:Ljava/lang/String;

    goto :goto_0

    .line 613
    :cond_1
    const-string v1, "FilePathName"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilePathName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilePathName:Ljava/lang/String;

    .line 615
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilePathName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFileSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 669
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 670
    const/4 v1, 0x0

    .line 677
    :goto_0
    return-object v1

    .line 672
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 673
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFileSize:Ljava/lang/String;

    goto :goto_0

    .line 675
    :cond_1
    const-string v1, "FileSize"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFileSize:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFileSize:Ljava/lang/String;

    .line 677
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFileSize:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getFilterCap(Landroid/content/Context;Z)I
    .locals 3
    .parameter "context"
    .parameter "bRefresh"

    .prologue
    .line 420
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 421
    const/4 v1, -0x1

    .line 430
    :goto_0
    return v1

    .line 423
    :cond_0
    if-nez p1, :cond_1

    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 425
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 426
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_2

    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    goto :goto_0

    .line 428
    :cond_2
    const-string v1, "FilterCap"

    sget v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    .line 430
    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    goto :goto_0
.end method

.method public static getModifiedDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 638
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 639
    const/4 v1, 0x0

    .line 646
    :goto_0
    return-object v1

    .line 641
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 642
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gModifiedDate:Ljava/lang/String;

    goto :goto_0

    .line 644
    :cond_1
    const-string v1, "ModifiedDate"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gModifiedDate:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gModifiedDate:Ljava/lang/String;

    .line 646
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gModifiedDate:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPathName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 576
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 577
    const/4 v1, 0x0

    .line 584
    :goto_0
    return-object v1

    .line 579
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 580
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPathName:Ljava/lang/String;

    goto :goto_0

    .line 582
    :cond_1
    const-string v1, "PathName"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPathName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPathName:Ljava/lang/String;

    .line 584
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPathName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPickDMRParam()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    return-object v0
.end method

.method public static getServer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 484
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, 0x0

    .line 491
    :goto_0
    return-object v1

    .line 487
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 488
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gServer:Ljava/lang/String;

    goto :goto_0

    .line 490
    :cond_1
    const-string v1, "Server"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gServer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gServer:Ljava/lang/String;

    .line 491
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gServer:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSourceType(Landroid/content/Context;)B
    .locals 3
    .parameter "context"

    .prologue
    .line 825
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 826
    const/4 v1, -0x1

    .line 833
    :goto_0
    return v1

    .line 828
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 829
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gSourceType:I

    int-to-byte v1, v1

    goto :goto_0

    .line 831
    :cond_1
    const-string v1, "SourceType"

    sget v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gSourceType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gSourceType:I

    .line 833
    sget v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gSourceType:I

    int-to-byte v1, v1

    goto :goto_0
.end method

.method public static getStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 762
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 763
    const/4 v1, 0x0

    .line 770
    :goto_0
    return-object v1

    .line 765
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 766
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gStatus:Ljava/lang/String;

    goto :goto_0

    .line 768
    :cond_1
    const-string v1, "Status"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gStatus:Ljava/lang/String;

    .line 770
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 731
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 732
    const/4 v1, 0x0

    .line 739
    :goto_0
    return-object v1

    .line 734
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 735
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gType:Ljava/lang/String;

    goto :goto_0

    .line 737
    :cond_1
    const-string v1, "Type"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gType:Ljava/lang/String;

    .line 739
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 793
    sget-boolean v1, Lcom/htc/videowidget/common/Constants;->DISABLE_DLNA:Z

    if-eqz v1, :cond_0

    .line 794
    const/4 v1, 0x0

    .line 802
    :goto_0
    return-object v1

    .line 796
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 797
    .local v0, sr:Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    goto :goto_0

    .line 799
    :cond_1
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 800
    const-string v1, "Uri"

    sget-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    .line 802
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static launchDMCInternetPushVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "content"
    .parameter "strFilePath"
    .parameter "params"

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 331
    const-string v5, "com.htc.album/video"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/videowidget/videoDMC/DMCHelper;->launchInternetPushDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static launchDMCLocalVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/net/Uri;)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "filePath"
    .parameter "mimetype"
    .parameter "params"
    .parameter "iPlyaingTime"
    .parameter "uri"

    .prologue
    .line 309
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 313
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/htc/videowidget/videoDMC/DMCHelper;->launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public static launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "params"
    .parameter "iPlayingTime"

    .prologue
    .line 318
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/htc/videowidget/videoDMC/DMCHelper;->setFilterCap(Landroid/content/Context;I)V

    .line 322
    const-string v5, "com.htc.album/video"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/htc/videowidget/videoDMC/DMCHelper;->launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V

    goto :goto_0
.end method

.method private static launchInternetPushDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 18
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "content"
    .parameter "strFilePath"
    .parameter "type"
    .parameter "mode"
    .parameter "params"

    .prologue
    .line 238
    const-string v15, "DMCHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "launch internet push DMC. dmr: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", server "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", content "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    const/4 v10, 0x3

    .line 244
    .local v10, interval:I
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "slide_show_duration_setting"

    const-string v17, "3"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 251
    :goto_0
    const-wide/16 v13, -0x1

    .local v13, startIdx:J
    const-wide/16 v7, -0x1

    .line 252
    .local v7, endIdx:J
    const/4 v5, 0x0

    .line 253
    .local v5, direction:I
    const/4 v11, 0x0

    .line 255
    .local v11, location:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 257
    const-string v15, "startIdx"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 258
    const-string v15, "endIdx"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 259
    const-string v15, "direction"

    const/16 v16, 0x0

    move-object/from16 v0, p7

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 260
    const-string v15, "filepath"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 262
    invoke-static/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v12

    .line 263
    .local v12, res:Landroid/content/res/Resources;
    if-nez v12, :cond_2

    .line 264
    const-string v15, "DMCHelper"

    const-string v16, "[launchInternetPushDMC] res is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .end local v12           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-class v15, Lcom/htc/videowidget/videoDMC/DMCFgm;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v9, intent:Landroid/content/Intent;
    const-string v15, "Render"

    move-object/from16 v0, p1

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v15, "Server"

    move-object/from16 v0, p2

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v15, "cookie"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v15, "dmc_mode"

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v15, "filepath"

    move-object/from16 v0, p4

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v15, "Mode"

    move/from16 v0, p6

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v15, "content"

    move-object/from16 v0, p3

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v15, "startIdx"

    invoke-virtual {v9, v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 279
    const-string v15, "endIdx"

    invoke-virtual {v9, v15, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 280
    const-string v15, "direction"

    invoke-virtual {v9, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string v15, "Extras"

    move-object/from16 v0, p7

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    const-string v15, "interval"

    invoke-virtual {v9, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const/high16 v15, 0x400

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    const-string v15, "DMCHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Finish activity "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 302
    .local v3, actParent:Landroid/app/Activity;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    .line 303
    .local v4, actTop:Landroid/app/Activity;
    :goto_2
    if-nez v4, :cond_4

    if-nez v3, :cond_1

    move-object/from16 v3, p0

    .line 304
    :cond_1
    :goto_3
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 305
    .end local v3           #actParent:Landroid/app/Activity;
    .end local v4           #actTop:Landroid/app/Activity;
    :goto_4
    return-void

    .line 266
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v12       #res:Landroid/content/res/Resources;
    :cond_2
    const-string v15, "tab_default"

    const v16, 0x6090010

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    .end local v12           #res:Landroid/content/res/Resources;
    .restart local v9       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 294
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "DMCHelper"

    const-string v16, "start dmc activity fail"

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 302
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #actParent:Landroid/app/Activity;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .restart local v4       #actTop:Landroid/app/Activity;
    :cond_4
    move-object v3, v4

    .line 303
    goto :goto_3

    .line 246
    .end local v3           #actParent:Landroid/app/Activity;
    .end local v4           #actTop:Landroid/app/Activity;
    .end local v5           #direction:I
    .end local v7           #endIdx:J
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #location:Ljava/lang/String;
    .end local v13           #startIdx:J
    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method

.method private static launchLocalDMC(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILandroid/net/Uri;)V
    .locals 10
    .parameter "activity"
    .parameter "dmr"
    .parameter "mode"
    .parameter "filePath"
    .parameter "content"
    .parameter "type"
    .parameter "params"
    .parameter "iPlyaingTime"
    .parameter "uri"

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, idArray:[I
    if-eqz p6, :cond_0

    .line 110
    const-string v7, "DLNA_IDLIST"

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 112
    :cond_0
    const-string v8, "DMCHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launch local DMC. dmr: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", filePath "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", list "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v4, :cond_4

    const-string v7, "None"

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v6, 0x3

    .line 118
    .local v6, interval:I
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "slide_show_duration_setting"

    const-string v9, "3"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 125
    :goto_1
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/htc/videowidget/videoDMC/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/htc/videowidget/videoDMC/DMCFgm;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "Render"

    invoke-virtual {v5, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v7, "dmc_mode"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v7, "cookie"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v7, "Mode"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v7, "filepath"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v7, "content"

    invoke-virtual {v5, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v7, "Extras"

    move-object/from16 v0, p6

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    const-string v7, "interval"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v7, "playingtime"

    move/from16 v0, p7

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    if-eqz p8, :cond_1

    .line 138
    const-string v7, "uri"

    invoke-virtual/range {p8 .. p8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_1
    if-eqz v4, :cond_2

    .line 140
    const-string v7, "pushlist"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 142
    :cond_2
    invoke-virtual {v5, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v7, 0x400

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    :try_start_1
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    const-string v7, "DMCHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finish activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 159
    .local v1, actParent:Landroid/app/Activity;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v2

    .line 160
    .local v2, actTop:Landroid/app/Activity;
    :goto_2
    if-nez v2, :cond_6

    if-nez v1, :cond_3

    move-object v1, p0

    .line 161
    :cond_3
    :goto_3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 162
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    :goto_4
    return-void

    .line 112
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #interval:I
    :cond_4
    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto/16 :goto_0

    .line 149
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v6       #interval:I
    :catch_0
    move-exception v3

    .line 151
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "DMCHelper"

    const-string v8, "start dmc activity fail"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 159
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #actParent:Landroid/app/Activity;
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2       #actTop:Landroid/app/Activity;
    :cond_6
    move-object v1, v2

    .line 160
    goto :goto_3

    .line 120
    .end local v1           #actParent:Landroid/app/Activity;
    .end local v2           #actTop:Landroid/app/Activity;
    .end local v5           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method private static launchServerDMC(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 18
    .parameter "activity"
    .parameter "dmr"
    .parameter "server"
    .parameter "container"
    .parameter "content"
    .parameter "type"
    .parameter "mode"
    .parameter "params"
    .parameter "iPlyaingTime"

    .prologue
    .line 166
    const-string v15, "DMCHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "launch server DMC. dmr: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", server "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", content "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/DMCHelper;->setDMS(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    const/4 v10, 0x3

    .line 172
    .local v10, interval:I
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "slide_show_duration_setting"

    const-string v17, "3"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 179
    :goto_0
    const-wide/16 v13, -0x1

    .local v13, startIdx:J
    const-wide/16 v7, -0x1

    .line 180
    .local v7, endIdx:J
    const/4 v5, 0x0

    .line 181
    .local v5, direction:I
    const/4 v11, 0x0

    .line 183
    .local v11, location:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 185
    const-string v15, "startIdx"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 186
    const-string v15, "endIdx"

    const-wide/16 v16, -0x1

    move-object/from16 v0, p7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 187
    const-string v15, "direction"

    const/16 v16, 0x0

    move-object/from16 v0, p7

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 188
    const-string v15, "location"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v12

    .line 191
    .local v12, res:Landroid/content/res/Resources;
    if-nez v12, :cond_3

    .line 192
    const-string v15, "DMCHelper"

    const-string v16, "[launchServerDMC] res is null"

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v12           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-class v15, Lcom/htc/videowidget/videoDMC/DMCFgm;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v9, intent:Landroid/content/Intent;
    const-string v15, "Render"

    move-object/from16 v0, p1

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v15, "Server"

    move-object/from16 v0, p2

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v15, "container"

    move-object/from16 v0, p3

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v15, "cookie"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v15, "dmc_mode"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const-string v15, "Mode"

    move/from16 v0, p6

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v15, "content"

    move-object/from16 v0, p4

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v15, "startIdx"

    invoke-virtual {v9, v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    const-string v15, "endIdx"

    invoke-virtual {v9, v15, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 208
    const-string v15, "direction"

    invoke-virtual {v9, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v15, "Extras"

    move-object/from16 v0, p7

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    const-string v15, "interval"

    invoke-virtual {v9, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v15, "playingtime"

    move/from16 v0, p8

    invoke-virtual {v9, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    if-eqz v11, :cond_1

    .line 213
    const-string v15, "filepath"

    invoke-virtual {v9, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_1
    const/high16 v15, 0x400

    invoke-virtual {v9, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    const-string v15, "DMCHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Finish activity "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    .line 231
    .local v3, actParent:Landroid/app/Activity;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    .line 232
    .local v4, actTop:Landroid/app/Activity;
    :goto_2
    if-nez v4, :cond_5

    if-nez v3, :cond_2

    move-object/from16 v3, p0

    .line 233
    :cond_2
    :goto_3
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 234
    .end local v3           #actParent:Landroid/app/Activity;
    .end local v4           #actTop:Landroid/app/Activity;
    :goto_4
    return-void

    .line 194
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v12       #res:Landroid/content/res/Resources;
    :cond_3
    const-string v15, "tab_default"

    const v16, 0x6090010

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 221
    .end local v12           #res:Landroid/content/res/Resources;
    .restart local v9       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 223
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "DMCHelper"

    const-string v16, "start dmc activity fail"

    invoke-static/range {v15 .. v16}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 231
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #actParent:Landroid/app/Activity;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .restart local v4       #actTop:Landroid/app/Activity;
    :cond_5
    move-object v3, v4

    .line 232
    goto :goto_3

    .line 174
    .end local v3           #actParent:Landroid/app/Activity;
    .end local v4           #actTop:Landroid/app/Activity;
    .end local v5           #direction:I
    .end local v7           #endIdx:J
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #location:Ljava/lang/String;
    .end local v13           #startIdx:J
    :catch_1
    move-exception v15

    goto/16 :goto_0
.end method

.method public static pickDMR(Landroid/app/Activity;IILjava/lang/Object;)V
    .locals 5
    .parameter "activity"
    .parameter "serverType"
    .parameter "resultMsgId"
    .parameter "param"

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_0
    sput-object p3, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, filter:I
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 80
    or-int/lit8 v1, v1, 0x2

    .line 81
    :cond_1
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 82
    or-int/lit8 v1, v1, 0x4

    .line 84
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.htc.dmc"

    const-string v4, "com.htc.dmc.DmrListActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v3, "cookie"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v3, "filter"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMCHelper"

    const-string v4, "start DMR list activity fail"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pickDefaultDMR(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 5
    .parameter "activity"
    .parameter "param"

    .prologue
    const/4 v4, 0x0

    .line 52
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_0
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPickDMRParam:Ljava/lang/Object;

    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.dmc.ACTION_AUTO_SEARCH_RENDERER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "cookie"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v2, "filter"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v2, "directmode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const/16 v2, 0x1398

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DMCHelper"

    const-string v3, "start DMR list activity fail"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setContainer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "container"

    .prologue
    .line 496
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContainer:Ljava/lang/String;

    .line 498
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 502
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 504
    if-nez p1, :cond_2

    .line 505
    const-string v2, "Container"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 507
    :cond_2
    const-string v2, "Container"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "content"

    .prologue
    .line 527
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gContent:Ljava/lang/String;

    .line 529
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 530
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 533
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 535
    if-nez p1, :cond_2

    .line 536
    const-string v2, "Content"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 540
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 538
    :cond_2
    const-string v2, "Content"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setCookie(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 435
    sput p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gCookie:I

    .line 437
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 438
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 443
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 444
    const-string v2, "Cookie"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 448
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 446
    :cond_2
    const-string v2, "Cookie"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setDMR(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dmr"

    .prologue
    .line 336
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMR:Ljava/lang/String;

    .line 338
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 344
    if-nez p1, :cond_2

    .line 345
    const-string v2, "DMR"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 347
    :cond_2
    const-string v2, "DMR"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setDMS(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "dms"

    .prologue
    .line 369
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDMS:Ljava/lang/String;

    .line 371
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 372
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 377
    if-nez p1, :cond_2

    .line 378
    const-string v2, "DMS"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 380
    :cond_2
    const-string v2, "DMS"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setDuration(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "duration"

    .prologue
    .line 682
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/htc/videowidget/videoDMC/DMCHelper;->gDuration:Ljava/lang/Long;

    .line 684
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 685
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 688
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 690
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 691
    const-string v2, "Duration"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 695
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 693
    :cond_2
    const-string v2, "Duration"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setFilePathName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filePathName"

    .prologue
    .line 589
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilePathName:Ljava/lang/String;

    .line 591
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 592
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 597
    if-nez p1, :cond_2

    .line 598
    const-string v2, "FilePathName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 600
    :cond_2
    const-string v2, "FilePathName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setFileSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "fileSize"

    .prologue
    .line 651
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFileSize:Ljava/lang/String;

    .line 653
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 654
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 659
    if-nez p1, :cond_2

    .line 660
    const-string v2, "FileSize"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 664
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 662
    :cond_2
    const-string v2, "FileSize"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setFilterCap(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "filterCap"

    .prologue
    .line 402
    sput p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gFilterCap:I

    .line 404
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 405
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 410
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 411
    const-string v2, "FilterCap"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 413
    :cond_2
    const-string v2, "FilterCap"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setModifiedDate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "modifiedDate"

    .prologue
    .line 620
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gModifiedDate:Ljava/lang/String;

    .line 622
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 623
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 626
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 628
    if-nez p1, :cond_2

    .line 629
    const-string v2, "ModifiedDate"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 633
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 631
    :cond_2
    const-string v2, "ModifiedDate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setPathName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pathName"

    .prologue
    .line 558
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gPathName:Ljava/lang/String;

    .line 560
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 561
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 564
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 566
    if-nez p1, :cond_2

    .line 567
    const-string v2, "PathName"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 571
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 569
    :cond_2
    const-string v2, "PathName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setServer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "server"

    .prologue
    .line 466
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gServer:Ljava/lang/String;

    .line 468
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 469
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 472
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 474
    if-nez p1, :cond_2

    .line 475
    const-string v2, "Server"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 479
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 477
    :cond_2
    const-string v2, "Server"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setSourceType(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "sourceType"

    .prologue
    .line 807
    sput p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gSourceType:I

    .line 809
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 810
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 813
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 815
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 816
    const-string v2, "SourceType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 820
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 818
    :cond_2
    const-string v2, "SourceType"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "status"

    .prologue
    .line 744
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gStatus:Ljava/lang/String;

    .line 746
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 747
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 750
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 752
    if-nez p1, :cond_2

    .line 753
    const-string v2, "Status"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 757
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 755
    :cond_2
    const-string v2, "Status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 713
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gType:Ljava/lang/String;

    .line 715
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 716
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 719
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 721
    if-nez p1, :cond_2

    .line 722
    const-string v2, "Type"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 726
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 724
    :cond_2
    const-string v2, "Type"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static setUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 775
    sput-object p1, Lcom/htc/videowidget/videoDMC/DMCHelper;->gUri:Landroid/net/Uri;

    .line 777
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 778
    .local v1, sr:Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 781
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 783
    if-nez p1, :cond_2

    .line 784
    const-string v2, "Uri"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 786
    :cond_2
    const-string v2, "Uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
