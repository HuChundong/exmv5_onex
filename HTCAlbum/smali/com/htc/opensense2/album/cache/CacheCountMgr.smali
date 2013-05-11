.class public Lcom/htc/opensense2/album/cache/CacheCountMgr;
.super Ljava/lang/Object;
.source "CacheCountMgr.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/cache/ICacheClientMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    }
.end annotation


# static fields
.field public static final ACTION_DELETE_THUMBS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_DELETE_THUMBS"

.field public static final ACTION_PAUSE_GENTHUMBNAILS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_PAUSE_GENTHUMBNAILS"

.field public static final ACTION_RESUME_GENTHUMBNAILS:Ljava/lang/String; = "com.htc.MediaCacheService.ACTION_RESUEM_GENTHUMBNAILS"

.field public static final ARR_SUBFOLDER:[Ljava/lang/String; = null

.field public static final CACHE_FILE_EXT:Ljava/lang/String; = ".jpg"

.field public static final EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static EXTERNAL_THUMBNAIL_COUNT:[J = null

.field public static final EventView_PREFIX:Ljava/lang/String; = "13-"

.field public static final FILMSTRIP_PREFIX:Ljava/lang/String; = "11-"

.field public static final FullSCREEN_PREFIX:Ljava/lang/String; = "12-"

.field public static final GRID_PREFIX:Ljava/lang/String; = "XX-"

#the value of this static final field might be set in the static constructor
.field public static final IDX_FILMSTRIP:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final IDX_FULLSCREEN:I = 0x0

.field public static final INTENT_SCAN_FINISH:Ljava/lang/String; = "com.htc.intent.action.HTC_MEDIACACHE_SCANFINISH"

.field public static IsCheckPause:Z = false

.field public static IsMediaCachePause:Z = false

.field public static LOG_S:Ljava/lang/String; = null

.field public static LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_FILMSTRIPTHUMB:I = 0x12c

.field public static final MAX_FULLSCREENTHUMB:I = 0x32

.field public static final MAX_GRIDTHUMB:I = 0x7d0

#the value of this static final field might be set in the static constructor
.field public static final MAX_GRIDTHUMB_FOLDER:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAX_THUMB_FOLDER_COUNT:I = 0x0

.field private static MIN_SPACE_DIV_BLOCK_SIZE:[D = null

.field private static final PATTERN_NEW_BURST:Ljava/util/regex/Pattern; = null

.field public static final PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static PHONE_THUMBNAIL_COUNT:[J = null

.field public static final REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage; = null

.field private static REMOVALBE_THUMBNAIL_COUNT:[J = null

.field private static final STORAGE_MIN_SPACE:J = 0x100000L

.field public static final THUMBNAIL_VERSION:I = 0x64

.field public static final UNKNOW:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

.field public static final USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

.field private static USB_THUMBNAIL_COUNT:[J

.field public static bResetCalculate:Z

.field protected static mScreenlarge:I

.field private static m_szExternalPath:Ljava/lang/String;

.field private static m_szExternalThumbnailPath:Ljava/lang/String;

.field private static m_szPhoneStorage:Ljava/lang/String;

.field private static m_szPhoneThumbnailPath:Ljava/lang/String;

.field private static m_szRemovablePath:Ljava/lang/String;

.field private static m_szRemovealbeThumbnailPath:Ljava/lang/String;

.field private static m_szUsbPath:Ljava/lang/String;

.field private static m_szUsbThumbnailPath:Ljava/lang/String;

.field public static mbInitExternalFolder:Z

.field public static mbInitPhoneFolder:Z

.field public static mbInitRemoveableFolder:Z

.field public static mbInitUsblFolder:Z

.field protected static sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;


# instance fields
.field protected mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

.field private mCacheScanFinish:Landroid/content/BroadcastReceiver;

.field private mRegCacheScanFinish:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 35
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    .line 36
    const-string v0, "(.*IMAG\\d+_BURST)\\d+.*"

    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PATTERN_NEW_BURST:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "CacheCountMgr"

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    .line 54
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    .line 55
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    .line 56
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    .line 57
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    .line 248
    sput v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    .line 445
    new-array v0, v5, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    .line 587
    const-string v0, "CacheCountMgr"

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_S:Ljava/lang/String;

    .line 594
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsCheckPause:Z

    .line 595
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsMediaCachePause:Z

    .line 652
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 653
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 654
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 655
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 656
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-direct {v0, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;-><init>(I)V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->UNKNOW:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 659
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->ARR_SUBFOLDER:[Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    .line 661
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_GRIDTHUMB_FOLDER:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    .line 662
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->MAX_THUMB_FOLDER_COUNT:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    .line 663
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FILMSTRIP:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    .line 664
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountDef;->IDX_FULLSCREEN:I

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    .line 675
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    .line 676
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    .line 677
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    .line 678
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    .line 680
    sput-boolean v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    .line 1123
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 1124
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    .line 1125
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    .line 1126
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 1128
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    .line 1129
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    .line 1130
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    .line 1131
    sput-object v3, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    return-void

    .line 445
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0xbft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheInfo;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_EVENTTHUMBS"

    const-string v2, "CacheInfoEventView"

    sget-object v3, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_ARR_FOLDER:[Ljava/lang/String;

    sget v4, Lcom/htc/opensense2/album/cache/CacheCountDef;->EVENT_MAX_VIEWFOLDER:I

    const-wide/16 v5, 0x12c

    invoke-direct/range {v0 .. v6}, Lcom/htc/opensense2/album/cache/CacheInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    .line 693
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;-><init>(Lcom/htc/opensense2/album/cache/CacheCountMgr;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final CalcFolderCount(Ljava/lang/String;)V
    .locals 7
    .parameter "sData"

    .prologue
    .line 841
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v0

    .line 843
    .local v0, code:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v2

    .line 845
    .local v2, thumbnail_count:[J
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderIndex(Ljava/lang/String;)I

    move-result v1

    .line 847
    .local v1, nFolder:I
    const-wide/16 v3, 0x1

    aget-wide v5, v2, v1

    add-long/2addr v3, v5

    aput-wide v3, v2, v1

    .line 848
    sget-boolean v3, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 849
    const-string v3, "[CalcFolderCount]"

    invoke-static {v2, p0, v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_0
    return-void
.end method

.method public static final CalculateAll(Z)Z
    .locals 4
    .parameter "bForce"

    .prologue
    const/4 v3, 0x1

    .line 879
    if-eq p0, v3, :cond_0

    sget-boolean v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    if-ne v0, v3, :cond_1

    .line 881
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    .line 883
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 884
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 885
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 886
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V

    .line 889
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[EXTERNAL_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 890
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[REMOVALBE_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 891
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[USB_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 892
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    const-string v1, ""

    const-string v2, "[PHONE_THUMBNAIL_COUNT]="

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LogIt([JLjava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_1
    return v3
.end method

.method private static final CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 8
    .parameter "storage"

    .prologue
    const/4 v7, 0x1

    .line 1008
    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    .line 1009
    .local v2, sFolder:Ljava/lang/String;
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    .line 1011
    .local v0, arSubFolder:[Ljava/lang/String;
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    if-nez v6, :cond_0

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_0

    .line 1013
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isExternalStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_0

    .line 1015
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitExternalFolder:Z

    .line 1016
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, sExternal:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v1, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1021
    .end local v1           #sExternal:Ljava/lang/String;
    :cond_0
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    if-nez v6, :cond_1

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1023
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isRemovableStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetRemovableFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_1

    .line 1025
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitRemoveableFolder:Z

    .line 1026
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 1027
    .local v4, sRemovable:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v4, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1031
    .end local v4           #sRemovable:Ljava/lang/String;
    :cond_1
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 1033
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isUsbStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGetUsbFolderId()Z

    move-result v6

    if-ne v6, v7, :cond_2

    .line 1035
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitUsblFolder:Z

    .line 1036
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v5

    .line 1037
    .local v5, sUsb:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v5, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1042
    .end local v5           #sUsb:Ljava/lang/String;
    :cond_2
    sget-boolean v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    if-nez v6, :cond_3

    sget-object v6, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v6, :cond_3

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 1044
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isPhoneStorageMounted()Z

    move-result v6

    if-ne v6, v7, :cond_3

    .line 1046
    sput-boolean v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mbInitPhoneFolder:Z

    .line 1047
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, sPhone:Ljava/lang/String;
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    invoke-static {v3, v6, v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1052
    .end local v3           #sPhone:Ljava/lang/String;
    :cond_3
    return v7
.end method

.method public static final CreateThumbnailFolder(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "sBasePath"
    .parameter "sFolder"
    .parameter "arSubFolder"

    .prologue
    .line 959
    move-object v4, p0

    .line 961
    .local v4, path:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 963
    .local v5, root:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 964
    const/4 v7, 0x0

    .line 1002
    .end local v5           #root:Ljava/io/File;
    :goto_0
    return v7

    .line 967
    .restart local v5       #root:Ljava/io/File;
    :cond_0
    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, folders:[Ljava/lang/String;
    array-length v3, v1

    .line 970
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 972
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 974
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 977
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 970
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 981
    .end local v0           #f:Ljava/io/File;
    :cond_2
    array-length v3, p2

    .line 983
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 985
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p2, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 987
    .local v6, s:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 989
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 990
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 998
    .end local v0           #f:Ljava/io/File;
    .end local v1           #folders:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #n:I
    .end local v5           #root:Ljava/io/File;
    .end local v6           #s:Ljava/lang/String;
    :catchall_0
    move-exception v7

    throw v7

    .line 995
    :catch_0
    move-exception v7

    .line 1002
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static final GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 1
    .parameter "storage"

    .prologue
    .line 1057
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 1073
    :goto_0
    return-object v0

    .line 1061
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_1

    .line 1062
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1065
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_2

    .line 1066
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1069
    :cond_2
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v0, :cond_3

    .line 1070
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1073
    :cond_3
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 15
    .parameter "task"

    .prologue
    const/16 v14, 0xe

    const/16 v12, 0xd

    const/16 v13, 0x2d

    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x40

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v10, res:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 70
    .local v1, cacheset:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 71
    .local v4, filePath:Ljava/lang/String;
    iget-wide v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 72
    .local v7, modifyTime:J
    iget v11, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    int-to-long v2, v11

    .line 73
    .local v2, factor:J
    iget-wide v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 76
    .local v5, fileSize:J
    const/16 v11, 0x65

    if-ne v1, v11, :cond_0

    .line 78
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 79
    .local v9, n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 80
    .local v0, buf:[C
    const-string v11, "XX-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 150
    :goto_0
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x64

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 82
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_0
    const/16 v11, 0xa

    if-ne v1, v11, :cond_2

    .line 84
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 85
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 88
    .restart local v0       #buf:[C
    iget v11, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v11, :cond_1

    .line 92
    const-string v11, "13-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_1
    const-string v11, "XX-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 99
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_2
    const/16 v11, 0xb

    if-ne v1, v11, :cond_3

    .line 101
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 102
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 103
    .restart local v0       #buf:[C
    const-string v11, "11-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 105
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_3
    const/16 v11, 0xc

    if-ne v1, v11, :cond_4

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 108
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 109
    .restart local v0       #buf:[C
    const-string v11, "12-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 111
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_4
    if-eq v1, v12, :cond_5

    if-ne v1, v14, :cond_8

    .line 113
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 114
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 116
    .restart local v0       #buf:[C
    if-ne v1, v12, :cond_6

    .line 118
    const-string v11, "13-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 120
    :cond_6
    if-ne v1, v14, :cond_7

    .line 122
    const-string v11, "13-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "L-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 126
    :cond_7
    const-string v11, "13-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 131
    .end local v0           #buf:[C
    .end local v9           #n:I
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    .line 132
    .restart local v9       #n:I
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    invoke-static {v11}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 133
    .restart local v0       #buf:[C
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static final GetCacheTaskFactorParam(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 253
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    if-nez v0, :cond_0

    .line 255
    invoke-static {p0}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->GetCacheTaskFactorParam(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    .line 258
    :cond_0
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetCacheTaskFactorParam]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    sget v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mScreenlarge:I

    return v0
.end method

.method public static final GetDMCCachePath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 8
    .parameter "task"

    .prologue
    .line 266
    if-nez p0, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    const/4 v0, 0x0

    .line 272
    .local v0, cache_path:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v3

    .line 275
    .local v3, storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 277
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 278
    iget v5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetFolderName(J)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, subFolder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, fileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, cache_root:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_1
    sget-boolean v5, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 296
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GetDMCCachePath2]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #subFolder:Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 287
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 289
    .restart local v4       #subFolder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .restart local v2       #fileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static final GetFolderIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "sData"

    .prologue
    .line 854
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 856
    .local v1, s:[Ljava/lang/String;
    array-length v0, v1

    .line 858
    .local v0, n:I
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    const-string v3, "11-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    .line 867
    :goto_0
    return v2

    .line 863
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-object v2, v1, v2

    const-string v3, "12-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    goto :goto_0

    .line 867
    :cond_1
    add-int/lit8 v2, v0, -0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static final GetFolderName(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "thumbnail"
    .parameter "hashCode"

    .prologue
    .line 773
    if-nez p0, :cond_0

    .line 774
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 791
    :goto_0
    return-object v1

    .line 777
    :cond_0
    const-string v1, "11-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    aget-object v1, v1, v2

    goto :goto_0

    .line 781
    :cond_1
    const-string v1, "12-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    sget v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    aget-object v1, v1, v2

    goto :goto_0

    .line 785
    :cond_2
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    int-to-long v1, v1

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 787
    .local v0, idx:I
    if-gez v0, :cond_3

    .line 788
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    neg-int v2, v0

    aget-object v1, v1, v2

    goto :goto_0

    .line 791
    :cond_3
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private static final GetStorageThumbnailCount([JLcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)V
    .locals 9
    .parameter "thumbnail_count"
    .parameter "nWhichStorage"

    .prologue
    .line 917
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 919
    .local v4, root:Ljava/lang/String;
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_2

    .line 920
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v4

    .line 929
    :cond_0
    :goto_0
    const-string v6, "/Android/data/com.htc.album/.thumbnails/"

    .line 931
    .local v6, sFolder:Ljava/lang/String;
    array-length v2, p0

    .line 933
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_THUMB_FOLDER_COUNT:I

    if-ge v1, v7, :cond_5

    if-ge v1, v2, :cond_5

    .line 935
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ARR_SUBFOLDER:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, s:Ljava/lang/String;
    const-wide/16 v7, 0x0

    aput-wide v7, p0, v1

    .line 939
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 941
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 933
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    .end local v0           #f:Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #sFolder:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_3

    .line 923
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 925
    :cond_3
    sget-object v7, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p1, v7, :cond_0

    .line 926
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 945
    .restart local v0       #f:Ljava/io/File;
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v5       #s:Ljava/lang/String;
    .restart local v6       #sFolder:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, names:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 949
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    int-to-long v7, v7

    aput-wide v7, p0, v1

    goto :goto_2

    .line 952
    .end local v0           #f:Ljava/io/File;
    .end local v3           #names:[Ljava/lang/String;
    .end local v5           #s:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static final GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J
    .locals 2
    .parameter "whichstorage"

    .prologue
    .line 716
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL_THUMBNAIL_COUNT:[J

    .line 718
    .local v0, check_count:[J
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_1

    .line 719
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVALBE_THUMBNAIL_COUNT:[J

    .line 728
    :cond_0
    :goto_0
    return-object v0

    .line 721
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_2

    .line 722
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB_THUMBNAIL_COUNT:[J

    goto :goto_0

    .line 724
    :cond_2
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne p0, v1, :cond_0

    .line 725
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE_THUMBNAIL_COUNT:[J

    goto :goto_0
.end method

.method public static final GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;
    .locals 1
    .parameter "storage"

    .prologue
    .line 796
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_0

    .line 797
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 809
    :goto_0
    return-object v0

    .line 800
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_1

    .line 801
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v0, p0, :cond_2

    .line 805
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 809
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .locals 5
    .parameter "sData"

    .prologue
    .line 814
    if-nez p0, :cond_0

    .line 815
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    .line 836
    :goto_0
    return-object v4

    .line 818
    :cond_0
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, sPath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, removealbe:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportRemovalbeStorage()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 823
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    .line 826
    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, usbpath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportUsbStorage()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 828
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    .line 831
    :cond_2
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, phonepath:Ljava/lang/String;
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isSupportPhoneStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 833
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0

    .line 836
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    goto :goto_0
.end method

.method public static IsPauseFileExist()Z
    .locals 7

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 310
    .local v0, bRes:Z
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->EXTERNAL:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mediacach_pause"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 328
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 319
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IsPauseFileExist]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public static final LogIt([JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "arr"
    .parameter "sData"
    .parameter "s"

    .prologue
    .line 900
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-nez v2, :cond_0

    .line 910
    :goto_0
    return-void

    .line 904
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 905
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 906
    aget-wide v2, p0, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 909
    :cond_1
    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaCacheService]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final ResetCalculateAll(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 873
    sput-boolean p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->bResetCalculate:Z

    .line 874
    return-void
.end method

.method private static generateBurstValue(Ljava/lang/String;)[C
    .locals 6
    .parameter "sFilePath"

    .prologue
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v1, burstValuePattern:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getFileParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PATTERN_NEW_BURST:Ljava/util/regex/Pattern;

    .line 172
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 173
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-static {p0}, Lcom/htc/album/helper/FileOperationHelper;->getBurstGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 177
    .local v3, n:I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->toUpperCaseLength8([C)[C

    move-result-object v0

    .line 178
    .local v0, buf:[C
    return-object v0
.end method

.method public static final getExternalStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1179
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    .line 1185
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getExternalStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1136
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    .line 1141
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szExternalThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static getMgr()Lcom/htc/opensense2/album/cache/CacheCountMgr;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;

    invoke-direct {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    .line 44
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sCacheCountMgr:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    return-object v0
.end method

.method public static final getPhoneStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1221
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1223
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    .line 1227
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneStorage:Ljava/lang/String;

    return-object v1
.end method

.method private static final getPhoneStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1167
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    .line 1172
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szPhoneThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getRemovalbStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1147
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    .line 1152
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovealbeThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method public static final getRemovalbeStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1191
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1193
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1194
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    .line 1197
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szRemovablePath:Ljava/lang/String;

    return-object v1
.end method

.method public static final getUsbStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1202
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1209
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, path:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    .line 1216
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbPath:Ljava/lang/String;

    return-object v1
.end method

.method private static final getUsbStorageThumbnailPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1157
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.htc.album/.thumbnails/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, sPath:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    .line 1162
    :cond_0
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->m_szUsbThumbnailPath:Ljava/lang/String;

    return-object v1
.end method

.method private static isBurstImage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sFilePath"

    .prologue
    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, bIsBurst:Z
    invoke-static {p0, v2}, Lcom/htc/album/helper/FileOperationHelper;->isNewBurstImage(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v2}, Lcom/htc/album/helper/FileOperationHelper;->isOldBurstImage(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    const/4 v0, 0x1

    .line 164
    :cond_1
    return v0
.end method

.method public static final isExternalStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1281
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1288
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isFilmThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 5
    .parameter "whichstorage"

    .prologue
    .line 750
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 752
    .local v0, check_count:[J
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FILMSTRIP:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 753
    const/4 v1, 0x1

    .line 756
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isFullThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 5
    .parameter "whichstorage"

    .prologue
    .line 761
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 763
    .local v0, check_count:[J
    sget v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IDX_FULLSCREEN:I

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 764
    const/4 v1, 0x1

    .line 767
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isGetRemovableFolderId()Z
    .locals 7

    .prologue
    .line 1324
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, external:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 1327
    .local v1, id1:I
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 1328
    .local v3, remove:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 1330
    .local v2, id2:I
    if-ne v1, v2, :cond_0

    .line 1331
    const-string v4, "DeviceStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGetRemovableFolderId]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v4, 0x0

    .line 1335
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static final isGetUsbFolderId()Z
    .locals 7

    .prologue
    .line 1340
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, external:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v1

    .line 1343
    .local v1, id1:I
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v3

    .line 1344
    .local v3, usb:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    .line 1346
    .local v2, id2:I
    if-ne v1, v2, :cond_0

    .line 1347
    const-string v4, "DeviceStorageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[isGetUsbFolderId]-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    const/4 v4, 0x0

    .line 1351
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static final isGridThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z
    .locals 6
    .parameter "whichstorage"

    .prologue
    .line 733
    invoke-static {p0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetThumbnailCountArray(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)[J

    move-result-object v0

    .line 735
    .local v0, check_count:[J
    const-wide/16 v2, 0x0

    .line 737
    .local v2, total:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MAX_GRIDTHUMB_FOLDER:I

    if-ge v1, v4, :cond_0

    .line 738
    aget-wide v4, v0, v1

    add-long/2addr v2, v4

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    :cond_0
    const-wide/16 v4, 0x7d0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 742
    const/4 v4, 0x1

    .line 745
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isMediCacheServiceThumbnails(Ljava/lang/String;)Z
    .locals 5
    .parameter "cachePath"

    .prologue
    .line 1078
    const/4 v1, 0x0

    .line 1080
    .local v1, bRet:Z
    if-nez p0, :cond_0

    .line 1081
    const/4 v3, 0x0

    .line 1099
    :goto_0
    return v3

    .line 1084
    :cond_0
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, ar:[Ljava/lang/String;
    array-length v2, v0

    .line 1088
    .local v2, n:I
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "XX-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1089
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v3, v1

    .line 1099
    goto :goto_0

    .line 1091
    :cond_2
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "11-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1092
    const/4 v1, 0x1

    goto :goto_1

    .line 1094
    :cond_3
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    const-string v4, "12-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1095
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final isPhoneStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1267
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1274
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isRemovableStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1293
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isSupportPhoneStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1232
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportRemovalbeStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1241
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupportUsbStorage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1255
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasUsbDeviceSlot()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUsbStorageMounted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1310
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getUsbDeviceState()Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1319
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "volume"
    .parameter "thumbprefix"

    .prologue
    .line 628
    if-nez p0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_DELETE_THUMBS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static final sendPauseCacheIntent(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 616
    if-nez p0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 619
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_PAUSE_GENTHUMBNAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 622
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsCheckPause:Z

    goto :goto_0
.end method

.method public static final sendResumeCacheIntent(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 601
    if-nez p0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-boolean v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsMediaCachePause:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 605
    const/4 v1, 0x0

    sput-boolean v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsMediaCachePause:Z

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.MediaCacheService.ACTION_RESUEM_GENTHUMBNAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static final toUpperCaseLength8([C)[C
    .locals 6
    .parameter "h"

    .prologue
    const/16 v5, 0x8

    .line 1104
    array-length v2, p0

    .line 1106
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1108
    aget-char v3, p0, v1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    .line 1109
    aget-char v3, p0, v1

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    aput-char v3, p0, v1

    .line 1106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1113
    :cond_1
    if-le v2, v5, :cond_2

    .line 1119
    .end local p0
    :goto_1
    return-object p0

    .line 1117
    .restart local p0
    :cond_2
    new-array v0, v5, [C

    fill-array-data v0, :array_0

    .line 1118
    .local v0, buf:[C
    const/4 v3, 0x0

    rsub-int/lit8 v4, v2, 0x8

    invoke-static {p0, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 1119
    goto :goto_1

    .line 1117
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method


# virtual methods
.method public GetCacheFullPath(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 7
    .parameter "task"

    .prologue
    .line 193
    if-nez p1, :cond_1

    .line 195
    const/4 v0, 0x0

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    .line 200
    .local v0, cache_path:Ljava/lang/String;
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    .line 202
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->CreateDMCCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 203
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-boolean v4, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 211
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GetCacheFullPath][GetDMCCachePath1]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #subFolder:Ljava/lang/String;
    :cond_2
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 216
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-virtual {v5, v4}, Lcom/htc/opensense2/album/cache/CacheInfo;->CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 217
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfo;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3       #subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .restart local v2       #fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    goto/16 :goto_0

    .line 224
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #subFolder:Ljava/lang/String;
    :cond_3
    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    iget v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    const/16 v5, 0xe

    if-ne v4, v5, :cond_5

    .line 226
    :cond_4
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-virtual {v5, v4}, Lcom/htc/opensense2/album/cache/CacheInfo;->CreateCacheFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 227
    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    iget v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfo;->GetFolderName(J)Ljava/lang/String;

    move-result-object v3

    .line 229
    .restart local v3       #subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .restart local v2       #fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    goto/16 :goto_0

    .line 235
    .end local v1           #cache_root:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #subFolder:Ljava/lang/String;
    :cond_5
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CreateThumbnailFolder(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    .line 236
    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetFolderName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 238
    .restart local v3       #subFolder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .restart local v2       #fileName:Ljava/lang/String;
    iget-object v4, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v4, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    invoke-static {v4}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCachRoot(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .restart local v1       #cache_root:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;
    .locals 1
    .parameter "task"

    .prologue
    .line 62
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetCacheName1(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asynAddCache(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 8
    .parameter "filePath"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "cacheSize"
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 366
    :try_start_0
    sget-boolean v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsCheckPause:Z

    if-nez v5, :cond_0

    .line 367
    const/4 v5, 0x1

    sput-boolean v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsCheckPause:Z

    .line 368
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsPauseFileExist()Z

    move-result v5

    sput-boolean v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsMediaCachePause:Z

    .line 372
    :cond_0
    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->isDMCCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 374
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->calculateDMCFolder(Z)Z

    .line 376
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    .line 378
    .local v1, storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {p2, v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->addDMCFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J

    .line 380
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, volume:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_1

    .line 384
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->DMC720P:Ljava/lang/String;

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v1           #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .end local v4           #volume:Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez p5, :cond_2

    .line 441
    :cond_2
    return-void

    .line 387
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, p2}, Lcom/htc/opensense2/album/cache/CacheInfo;->isRightCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 389
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/cache/CacheInfo;->calculateFolder(Z)Z

    .line 391
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    .line 393
    .restart local v1       #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, p2, v1}, Lcom/htc/opensense2/album/cache/CacheInfo;->addFolderCount(Ljava/lang/String;Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)J

    .line 395
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    .line 397
    .restart local v4       #volume:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, v1}, Lcom/htc/opensense2/album/cache/CacheInfo;->IsCacheFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_1

    .line 399
    iget-object v5, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheInfoEventView:Lcom/htc/opensense2/album/cache/CacheInfo;

    invoke-virtual {v5, p5, v4}, Lcom/htc/opensense2/album/cache/CacheInfo;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v1           #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    .end local v4           #volume:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][asynAddCache]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    throw v5

    .line 404
    :cond_4
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalculateAll(Z)Z

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 407
    .local v2, t1:J
    invoke-static {p2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->CalcFolderCount(Ljava/lang/String;)V

    .line 409
    invoke-static {p1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v1

    .line 411
    .restart local v1       #storage:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetVolume(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .restart local v4       #volume:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isGridThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_5

    .line 415
    const-string v5, "XX-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_5
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isFilmThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_6

    .line 419
    const-string v5, "11-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_6
    invoke-static {v1}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->isFullThumbFull(Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;)Z

    move-result v5

    if-ne v7, v5, :cond_1

    .line 423
    const-string v5, "12-"

    invoke-static {p5, v4, v5}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->sendDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public asynUpdateCache(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 7
    .parameter "fileName"
    .parameter "cachePath"
    .parameter "cacheSet"
    .parameter "context"

    .prologue
    .line 337
    :try_start_0
    sget-boolean v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsCheckPause:Z

    if-nez v4, :cond_0

    .line 338
    const/4 v4, 0x1

    sput-boolean v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsCheckPause:Z

    .line 339
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsPauseFileExist()Z

    move-result v4

    sput-boolean v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->IsMediaCachePause:Z

    .line 343
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 344
    .local v2, t2:J
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1           #f:Ljava/io/File;
    .end local v2           #t2:J
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][asynUpdateCache]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public deInitCacheMgr(Landroid/content/Context;)V
    .locals 4
    .parameter "contex"

    .prologue
    .line 548
    :try_start_0
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deInitCacheMgr]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    if-eqz p1, :cond_1

    .line 553
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 555
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    .line 556
    iget-object v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    :cond_1
    :goto_0
    return-void

    .line 560
    :cond_2
    iget v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[deInitCacheMgr]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public initCacheMgr(Landroid/content/Context;)V
    .locals 5
    .parameter "contex"

    .prologue
    .line 512
    if-eqz p1, :cond_1

    .line 514
    :try_start_0
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initCacheMgr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    if-gtz v2, :cond_2

    .line 519
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ResetCalculateAll(Z)V

    .line 521
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.htc.intent.action.HTC_MEDIACACHE_SCANFINISH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, iFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mCacheScanFinish:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    .line 539
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 527
    :cond_2
    iget v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr;->mRegCacheScanFinish:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initCacheMgr]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public isStorageSpaceAvailable(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Z
    .locals 14
    .parameter "task"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 456
    .local v0, available:Z
    :try_start_0
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 459
    .local v2, idx:I
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->REMOVABLE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_4

    .line 460
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getRemovalbeStoragePath()Ljava/lang/String;

    move-result-object v7

    .line 461
    const/4 v2, 0x1

    .line 473
    :cond_0
    :goto_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 474
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    .line 475
    .local v5, nAvailableBlock:I
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    .line 476
    .local v6, nBlockSize:I
    mul-int v9, v5, v6

    int-to-long v3, v9

    .line 478
    .local v3, lFreeSpace:J
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 480
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[isStorageSpaceAvailable] Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Storage threshold = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v11, 0x100000

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", AvailableBlocks = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", BlockSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Free Space = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v11, v11, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v9, v9, v2

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 487
    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    if-lez v6, :cond_6

    const-wide/32 v9, 0x100000

    int-to-long v12, v6

    div-long/2addr v9, v12

    long-to-double v9, v9

    :goto_1
    aput-wide v9, v11, v2

    .line 490
    :cond_2
    int-to-double v9, v5

    sget-object v11, Lcom/htc/opensense2/album/cache/CacheCountMgr;->MIN_SPACE_DIV_BLOCK_SIZE:[D

    aget-wide v11, v11, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_7

    const/4 v0, 0x1

    .line 498
    .end local v2           #idx:I
    .end local v3           #lFreeSpace:J
    .end local v5           #nAvailableBlock:I
    .end local v6           #nBlockSize:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_2
    sget-boolean v9, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v9, :cond_3

    if-nez v0, :cond_3

    .line 499
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[isStorageSpaceAvailable] Storage space is less than 1M"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_3
    return v0

    .line 463
    .restart local v2       #idx:I
    .restart local v7       #path:Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->USB:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_5

    .line 464
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getUsbStoragePath()Ljava/lang/String;

    move-result-object v7

    .line 465
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 467
    :cond_5
    sget-object v10, Lcom/htc/opensense2/album/cache/CacheCountMgr;->PHONE:Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    iget-object v9, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    check-cast v9, Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    if-ne v10, v9, :cond_0

    .line 468
    invoke-static {}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->getPhoneStoragePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 469
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 487
    .restart local v3       #lFreeSpace:J
    .restart local v5       #nAvailableBlock:I
    .restart local v6       #nBlockSize:I
    .restart local v8       #stat:Landroid/os/StatFs;
    :cond_6
    const-wide v9, 0x41dfffffffc00000L

    goto :goto_1

    .line 490
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 492
    .end local v2           #idx:I
    .end local v3           #lFreeSpace:J
    .end local v5           #nAvailableBlock:I
    .end local v6           #nBlockSize:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v1

    .line 494
    .local v1, ex:Ljava/lang/Exception;
    sget-object v9, Lcom/htc/opensense2/album/cache/CacheCountMgr;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[externalStorageChecker] Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 578
    iget-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->GetWhichStorage(Ljava/lang/String;)Lcom/htc/opensense2/album/cache/CacheCountMgr$Storage;

    move-result-object v0

    iput-object v0, p1, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    .line 579
    return-void
.end method
