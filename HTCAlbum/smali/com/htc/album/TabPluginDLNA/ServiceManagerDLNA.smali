.class public Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "ServiceManagerDLNA.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "dlna"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://dlna"

.field public static final DLNA_ALBUM:I = 0x0

.field public static final DLNA_BROWSE_INFO:Ljava/lang/String; = "browse_info"

.field public static final DLNA_CONTENT_FULL:I = 0x2

.field public static final DLNA_CONTENT_THUMB:I = 0x1

.field public static final DLNA_DIRECTION:Ljava/lang/String; = "direction"

.field public static final DLNA_DIRECTORY_INDEX:Ljava/lang/String; = "directory_index"

.field public static final DLNA_DIRECTORY_INFO:Ljava/lang/String; = "directory_info"

.field public static final DLNA_END_INDEX:Ljava/lang/String; = "endIdx"

.field public static final DLNA_ERROR_ID:Ljava/lang/String; = "error_id"

.field public static final DLNA_ERROR_STRING:Ljava/lang/String; = "error_string"

.field public static final DLNA_FULLSCREEN_BUNDLE:Ljava/lang/String; = "fullscreen_bundle"

.field public static final DLNA_MAX_PAGE_ITEM:I = 0xc7

.field public static final DLNA_MAX_TIMEOUT:I = 0x1f4

.field public static final DLNA_MEDIUM_ID:Ljava/lang/String; = "medium_id"

.field public static final DLNA_MEDIUM_NAME:Ljava/lang/String; = "medium_name"

.field public static final DLNA_QUERYITEM_COUNT:I = 0x1e

.field public static final DLNA_SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final DLNA_SERVER_NAME:Ljava/lang/String; = "server_name"

.field public static final DLNA_SERVER_THUMB:I = 0x0

.field public static final DLNA_SERVICE:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field public static final DLNA_START_INDEX:Ljava/lang/String; = "startIdx"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MEDIUM_TYPE_AUDIO:Ljava/lang/String; = "1"

.field public static final MEDIUM_TYPE_FOLDER:Ljava/lang/String; = "0"

.field public static final MEDIUM_TYPE_IMAGE:Ljava/lang/String; = "2"

.field public static final MEDIUM_TYPE_SERVER:Ljava/lang/String; = "-1"

.field public static final MEDIUM_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final MEDIUM_TYPE_VIDEO:Ljava/lang/String; = "4"

.field public static final STORECOL_CONTAINER:Ljava/lang/String; = "container"

.field public static final STORECOL_CONTENT_FILETYPE:Ljava/lang/String; = "file_type"

.field public static final STORECOL_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final STORECOL_CONTENT_NAME:Ljava/lang/String; = "content_name"

.field public static final STORECOL_CONTENT_URI:Ljava/lang/String; = "uri_path"

.field public static final STORECOL_CONTENT_URITHUMB:Ljava/lang/String; = "thumbnail_uri"

.field public static final STORECOL_INDEX_ID:Ljava/lang/String; = "index_id"

.field public static final STORECOL_SERVER_ID:Ljava/lang/String; = "serve_id"

.field public static final ServiceError_InvalidParameter:I = -0x1f8

.field public static final ServiceError_IsNotContainer:I = -0x1f7

.field public static final ServiceError_RendererNotFound:I = -0x1f6

.field public static final ServiceError_ServerNotFound:I = -0x1f5

.field public static final UPnPError_AuthorizationFail:I = 0x321


# instance fields
.field private mBrowseSyncOnServiceConnected:Z

.field private mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field protected mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

.field private mIndexBegin:J

.field private mIndexEnd:J

.field private mIsBound:Z

.field private mIsInitialized:Z

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mListServer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisterID:I

.field private mRegisterName:Ljava/lang/String;

.field private mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

.field private mServerListSyncOnServiceConnected:Z

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 624
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 123
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    .line 124
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 125
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    .line 126
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    .line 130
    iput-wide v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIndexBegin:J

    .line 131
    iput-wide v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIndexEnd:J

    .line 132
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    .line 136
    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterName:Ljava/lang/String;

    .line 141
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    .line 143
    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z

    .line 264
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$1;-><init>(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    .line 291
    new-instance v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA$2;-><init>(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    .line 625
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    .line 627
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onBindServiceConnection(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterName:Ljava/lang/String;

    return-object v0
.end method

.method public static getAudioContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    const-string v0, "content://dlna/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDmrPhotoRes(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "renderer"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current_photo_resolution?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentDmrUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "cookie"

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDMCLaunchUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 97
    const-string v0, "content://dlna/gallery_launch_dmc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getImageContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 79
    const-string v0, "content://dlna/images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getServerContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://dlna/server"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    const-string v0, "content://dlna/videos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private onBindServiceConnection(Z)V
    .locals 4
    .parameter "bAutoSync"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 262
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onBindServiceConnection]:... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->registerServiceCallback()V

    .line 234
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_1

    .line 238
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onBindServiceConnection]: browse current folder"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-boolean v1, v1, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRefresh:Z

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->goBrowseFolderThis(Z)Z

    .line 242
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    .line 255
    :cond_2
    :goto_1
    const/16 v1, 0x4e84

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 260
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-boolean v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mRequestServer:Z

    if-ne v1, v2, :cond_2

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 249
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 250
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerList(I)V

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onInitServiceConnection()V
    .locals 5

    .prologue
    .line 179
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 185
    .local v0, bret:Z
    if-nez v0, :cond_0

    .line 186
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    .line 188
    .end local v0           #bret:Z
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onUninitServiceConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 195
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    if-ne v1, v2, :cond_0

    .line 197
    sget-object v1, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][onUninitServiceConnection]: unSubscribe server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverUnsubscribed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->unRegisterServiceCallback()V

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 224
    :cond_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshListFromDatabase(Ljava/lang/String;JJ)V
    .locals 13
    .parameter "szContainerID"
    .parameter "lTopIndex"
    .parameter "lBottomIndex"

    .prologue
    .line 1302
    const-string v5, ""

    .line 1304
    .local v5, szWhere:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(serve_id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v3, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "container"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1312
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const/4 v8, 0x0

    .line 1316
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->getServerContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "index_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1323
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: failed to get cursor"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :goto_0
    return-void

    .line 1327
    :cond_0
    const/4 v10, 0x0

    .line 1328
    .local v10, nCount:I
    const/4 v11, -0x1

    .line 1330
    .local v11, nCountMid:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1332
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1334
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: empty cursor"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1336
    const/4 v8, 0x0

    .line 1337
    goto :goto_0

    .line 1342
    :cond_1
    sget-object v2, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ServiceManagerDLNA][refreshListFromDatabase]: count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1345
    const/4 v9, 0x0

    .line 1346
    .local v9, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    const/4 v12, 0x0

    .local v12, nIndex:I
    :goto_1
    if-le v10, v12, :cond_2

    .line 1348
    new-instance v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .end local v9           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    invoke-direct {v9}, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;-><init>()V

    .line 1349
    .restart local v9       #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iput v12, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndex:I

    .line 1350
    const-string v2, "content_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mID:Ljava/lang/String;

    .line 1351
    const-string v2, "content_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mName:Ljava/lang/String;

    .line 1352
    const-string v2, "uri_path"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUri:Ljava/lang/String;

    .line 1354
    const/4 v2, 0x0

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mUriThumb:Ljava/lang/String;

    .line 1355
    const-string v2, "file_type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mType:Ljava/lang/String;

    .line 1356
    const-string v2, "index_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    .line 1358
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1359
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 1346
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1361
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1362
    const/4 v8, 0x0

    .line 1364
    goto/16 :goto_0
.end method

.method private scanDirectory()V
    .locals 3

    .prologue
    .line 1278
    const/4 v0, 0x0

    .line 1279
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 1281
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1279
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    return-void
.end method

.method public static setCurrentDmrPhotoRes(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .parameter "renderer"
    .parameter "res"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_set_current_photo_resolution?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addLatestBrowseFolder(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 1053
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    if-nez v1, :cond_1

    .line 1059
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 1056
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->addLastestAccess(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1057
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public browseCancel(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"

    .prologue
    .line 1368
    const/4 v6, 0x0

    .line 1370
    .local v6, bDone:Z
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1377
    if-nez v6, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1380
    :catch_0
    move-exception v7

    .line 1382
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelThumbnailDownloadRequests()V
    .locals 4

    .prologue
    .line 1290
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1294
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1297
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public destroyController(Ljava/lang/String;)V
    .locals 3
    .parameter "rendererID"

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1408
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1410
    :catch_0
    move-exception v0

    .line 1412
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V
    .locals 10
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 807
    :try_start_0
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doBrowseAlbum]: subscribe server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverSubscribed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 815
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsInitialized:Z

    .line 822
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v9

    .line 827
    .local v9, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doBrowseAlbum]: browse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 813
    .restart local v9       #e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doBrowseAlbum]: serverSubscribed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doContinueBrowseDown(JJII)V
    .locals 12
    .parameter "firstIndex"
    .parameter "startIndex"
    .parameter "count"
    .parameter "browsedCount"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-eqz v0, :cond_0

    .line 838
    const/4 v10, 0x0

    .line 839
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lcom/htc/dlnainterface/IDLNAPluginService;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v11

    .line 848
    .local v11, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][doContinueBrowseDown]: browse down: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableBrowseSyncOnServiceConnected()V
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mBrowseSyncOnServiceConnected:Z

    .line 1419
    return-void
.end method

.method public enableSyncServerListOnServiceConnected()V
    .locals 1

    .prologue
    .line 1423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerListSyncOnServiceConnected:Z

    .line 1424
    return-void
.end method

.method public getBrowseList()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getDirectoryIndex()I
    .locals 3

    .prologue
    .line 1140
    const/4 v0, 0x0

    .line 1142
    .local v0, nIndex:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    if-nez v2, :cond_0

    move v1, v0

    .line 1147
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 1145
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v0

    move v1, v0

    .line 1147
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0
.end method

.method public getDirectoryInfo()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1132
    const/4 v0, 0x0

    .line 1134
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1136
    return-object v0
.end method

.method public getDirectoryInfo(I)Ljava/lang/Object;
    .locals 2
    .parameter "nIndex"

    .prologue
    .line 1151
    const/4 v0, 0x0

    .line 1153
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1155
    return-object v0
.end method

.method public getDirectoryInfoNextCached()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1159
    const/4 v0, 0x0

    .line 1161
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getInfo(I)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1163
    return-object v0
.end method

.method public getRegisterID()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    return v0
.end method

.method public getRegisterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    return-object v0
.end method

.method public getServerList()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mListServer:Ljava/util/List;

    return-object v0
.end method

.method public getServiceDirectory()Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    return-object v0
.end method

.method public goBrowseFolderNext(Ljava/lang/Object;)Z
    .locals 13
    .parameter "object"

    .prologue
    .line 936
    const/4 v8, 0x0

    .line 937
    .local v8, bResult:Z
    const/4 v11, 0x0

    .line 939
    .local v11, nCountDirectory:I
    if-nez p1, :cond_0

    move v9, v8

    .line 966
    .end local v8           #bResult:Z
    .end local p1
    .local v9, bResult:I
    :goto_0
    return v9

    .line 942
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    check-cast p1, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getNext(Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;)Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    .line 947
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v12, 0x0

    .line 948
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    .line 950
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 951
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 953
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderNext]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 960
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 962
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 965
    const/4 v8, 0x1

    move v9, v8

    .line 966
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowseFolderPrevious()Z
    .locals 12

    .prologue
    .line 970
    const/4 v8, 0x0

    .line 972
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 973
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getPrevious()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 996
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 979
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 980
    .local v11, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v11

    .line 982
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 983
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 985
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderPrevious]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 990
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 992
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 995
    const/4 v8, 0x1

    move v9, v8

    .line 996
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowseFolderRoot()Z
    .locals 12

    .prologue
    .line 853
    const/4 v8, 0x0

    .line 854
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 856
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getRoot()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 873
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 859
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 860
    .local v11, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageRoot()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v11

    .line 862
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 864
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderRoot]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 872
    const/4 v8, 0x1

    move v9, v8

    .line 873
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowseFolderThis(Z)Z
    .locals 14
    .parameter "bIsRefresh"

    .prologue
    .line 878
    const/4 v8, 0x0

    .line 880
    .local v8, bResult:Z
    const/4 v11, 0x0

    .line 881
    .local v11, nCountPage:I
    const/4 v10, 0x0

    .line 882
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v12, 0x0

    .line 883
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 932
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 886
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    .line 888
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 890
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    if-nez v0, :cond_1

    .line 892
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][goBrowserFolderThis]: mServerInfo is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 893
    .restart local v9       #bResult:I
    goto :goto_0

    .line 896
    .end local v9           #bResult:I
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 897
    const-wide/16 v0, -0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/16 v5, 0xc7

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 902
    :goto_1
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 907
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 930
    :goto_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 931
    const/4 v8, 0x1

    move v9, v8

    .line 932
    .restart local v9       #bResult:I
    goto/16 :goto_0

    .line 900
    .end local v9           #bResult:I
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v3

    const/16 v5, 0xc7

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    goto/16 :goto_1

    .line 912
    :cond_3
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: dir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowseFolderThis]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 915
    .local v13, pageInfoInter:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 916
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 917
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 918
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getMidIndex()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 919
    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 921
    const-wide/16 v0, -0x1

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 922
    const-wide/16 v0, -0x1

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 924
    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDLNA;->isStyleExpandable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 925
    const/16 v0, 0x4e8f

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v13, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 927
    :cond_4
    const/16 v0, 0x4e95

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v13, v1}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_2
.end method

.method public goBrowsePageNext()Z
    .locals 13

    .prologue
    .line 1000
    const/4 v8, 0x0

    .line 1002
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 1003
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 1024
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 1006
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 1007
    .local v11, nCountPage:I
    const/4 v12, 0x0

    .line 1009
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageNext()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    .line 1011
    if-nez v12, :cond_1

    move v9, v8

    .line 1012
    .restart local v9       #bResult:I
    goto :goto_0

    .line 1014
    .end local v9           #bResult:I
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1015
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 1016
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePageNext]: page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePageNext]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 1019
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 1021
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 1023
    const/4 v8, 0x1

    move v9, v8

    .line 1024
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public goBrowsePagePrevious()Z
    .locals 12

    .prologue
    .line 1028
    const/4 v8, 0x0

    .line 1030
    .local v8, bResult:Z
    const/4 v10, 0x0

    .line 1031
    .local v10, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v10

    if-nez v10, :cond_0

    move v9, v8

    .line 1049
    .end local v8           #bResult:Z
    .local v9, bResult:I
    :goto_0
    return v9

    .line 1034
    .end local v9           #bResult:I
    .restart local v8       #bResult:Z
    :cond_0
    const/4 v11, 0x0

    .line 1035
    .local v11, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPagePrevious()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v11

    if-nez v11, :cond_1

    move v9, v8

    .line 1036
    .restart local v9       #bResult:I
    goto :goto_0

    .line 1038
    .end local v9           #bResult:I
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v11, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1039
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v1, v0, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v3

    const/16 v5, 0xc7

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->doBrowseAlbum(Ljava/lang/String;Ljava/lang/String;JIJ)V

    .line 1040
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePagePrevious]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseStart()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBrowseBound()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][goBrowsePagePrevious]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->printCurrentDirLog()V

    .line 1044
    invoke-virtual {v10}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    .line 1046
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->scanDirectory()V

    .line 1048
    const/4 v8, 0x1

    move v9, v8

    .line 1049
    .restart local v9       #bResult:I
    goto/16 :goto_0
.end method

.method public initServerInfo(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 702
    .local v0, bResult:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 719
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 705
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    instance-of v3, p1, Landroid/os/Bundle;

    if-nez v3, :cond_1

    move v1, v0

    .line 706
    .restart local v1       #bResult:I
    goto :goto_0

    .line 708
    .end local v1           #bResult:I
    :cond_1
    new-instance v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-direct {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;-><init>()V

    iput-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    move-object v2, p1

    .line 709
    check-cast v2, Landroid/os/Bundle;

    .line 711
    .local v2, bundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "album_update"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mIsRefresh:Z

    .line 712
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "isRequestServer"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mRequestServer:Z

    .line 713
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    .line 714
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    const-string v4, "server_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mName:Ljava/lang/String;

    .line 716
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    const-string v4, "directory_info"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->importDirectories(Ljava/util/ArrayList;)V

    .line 718
    const/4 v0, 0x1

    move v1, v0

    .line 719
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public isServiceActive()Z
    .locals 3

    .prologue
    .line 1090
    const/4 v0, 0x0

    .line 1092
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    move v1, v0

    .line 1096
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1095
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 1096
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onDestroy]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setDataHandler(Landroid/os/Handler;)V

    .line 671
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->setUIHandler(Landroid/os/Handler;)V

    .line 673
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onUninitServiceConnection()V

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    .line 676
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 652
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onPause]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 648
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onResume]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 656
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onStart]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onInitServiceConnection()V

    .line 658
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onStart]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 662
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][onStop]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->onUninitServiceConnection()V

    .line 665
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][onStop]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public reSearchDevices()V
    .locals 3

    .prologue
    .line 1388
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1393
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1397
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerServiceCallback()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z

    if-ne v2, v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeChildrenBrowseFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1063
    if-nez p1, :cond_0

    .line 1064
    const/4 v0, 0x0

    .line 1066
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->removeChildrenFolder(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestItemPhoto(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "nIndex"
    .parameter "szServerID"
    .parameter "szMediumID"
    .parameter "nType"

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    move v1, v0

    .line 793
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 744
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    if-nez p4, :cond_2

    .line 746
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 750
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 793
    .restart local v1       #bResult:I
    goto :goto_0

    .line 753
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 756
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 760
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x1

    if-ne v3, p4, :cond_3

    .line 762
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 766
    :try_start_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, p3, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 767
    const/4 v0, 0x1

    goto :goto_1

    .line 769
    :catch_1
    move-exception v2

    .line 772
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 776
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v3, 0x2

    if-ne v3, p4, :cond_1

    .line 778
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 782
    :try_start_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v5, v5, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p3}, Lcom/htc/dlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 783
    const/4 v0, 0x1

    goto :goto_1

    .line 785
    :catch_2
    move-exception v2

    .line 788
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public requestPhotoDetail(Ljava/lang/String;)Z
    .locals 3
    .parameter "szMediumID"

    .prologue
    .line 725
    :try_start_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mServerInfo:Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;

    iget-object v2, v2, Lcom/htc/album/TabPluginDLNA/DLNAServerInfo;->mID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 727
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestServerThumbnail(Ljava/lang/String;)V
    .locals 3
    .parameter "serverId"

    .prologue
    .line 1428
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1439
    :goto_0
    return-void

    .line 1433
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v0

    .line 1437
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public scan4AvailableServer()Z
    .locals 5

    .prologue
    .line 1100
    const/4 v0, 0x0

    .line 1102
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    move v1, v0

    .line 1116
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 1107
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_1
    const/4 v0, 0x1

    move v1, v0

    .line 1116
    .restart local v1       #bResult:I
    goto :goto_0

    .line 1109
    .end local v1           #bResult:I
    :catch_0
    move-exception v2

    .line 1112
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public scan4MediumItems(Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;Z)Z
    .locals 14
    .parameter "pageInfoArg"
    .parameter "bAddVirtualMoreItem"

    .prologue
    .line 1172
    const/4 v6, 0x0

    .line 1173
    .local v6, bResult:Z
    const/4 v8, 0x0

    .line 1174
    .local v8, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    const/4 v12, 0x0

    .line 1176
    .local v12, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1178
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: return1..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 1274
    .end local v6           #bResult:Z
    .local v7, bResult:I
    :goto_0
    return v7

    .line 1181
    .end local v7           #bResult:I
    .restart local v6       #bResult:Z
    :cond_0
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v12

    if-nez v12, :cond_1

    .line 1183
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: return2..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 1184
    .restart local v7       #bResult:I
    goto :goto_0

    .line 1186
    .end local v7           #bResult:I
    :cond_1
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: intermediate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setTopIndex(J)V

    .line 1191
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 1193
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getBottomIndex()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->refreshListFromDatabase(Ljava/lang/String;JJ)V

    .line 1195
    const/4 v6, 0x1

    .line 1198
    if-nez p2, :cond_2

    move v7, v6

    .line 1199
    .restart local v7       #bResult:I
    goto :goto_0

    .line 1201
    .end local v7           #bResult:I
    :cond_2
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: check to add virtual more item"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const/4 v10, 0x0

    .line 1204
    .local v10, nCount:I
    const/4 v11, 0x0

    .line 1208
    .local v11, nIndexMid:I
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1210
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getIntermediate()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setIntermediate(Z)V

    .line 1211
    invoke-virtual {p1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1213
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: finalizing..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1215
    if-lez v10, :cond_3

    .line 1217
    div-int/lit8 v11, v10, 0x2

    .line 1218
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;

    .line 1219
    .local v9, mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    iget-wide v0, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {v12, v0, v1}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setMidIndex(J)V

    .line 1220
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: mid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;->mIndexID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .end local v9           #mediumInfo:Lcom/htc/album/TabPluginDLNA/DLNAMediumInfo;
    :cond_3
    const/4 v13, 0x0

    .line 1226
    .local v13, pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v0, -0x2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1228
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1229
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1230
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1231
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach bottom"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_4
    :goto_1
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->printCurrentPageLog()V

    move v7, v6

    .line 1274
    .restart local v7       #bResult:I
    goto/16 :goto_0

    .line 1233
    .end local v7           #bResult:I
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1235
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1236
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1237
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1238
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach top"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1240
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageSize()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getCurrentPageIndex()I

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getTopIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 1248
    :cond_7
    const/16 v0, 0xc7

    if-lt v10, v0, :cond_4

    .line 1250
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1251
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1252
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach bottom"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1256
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    invoke-virtual {v12}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->getDirection()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1259
    :cond_9
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1260
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, -0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1261
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1263
    new-instance v13, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    .end local v13           #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    invoke-direct {v13}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;-><init>()V

    .line 1264
    .restart local v13       #pageInfoNextPrev:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setDirection(I)V

    .line 1265
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    sget-object v0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ServiceManagerDLNA][scan4MediumItems]: attach top bottom"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setRegisterID(I)V
    .locals 0
    .parameter "nRegisterID"

    .prologue
    .line 631
    iput p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterID:I

    .line 632
    return-void
.end method

.method public setRegisterName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mRegisterName:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public unRegisterServiceCallback()V
    .locals 4

    .prologue
    .line 164
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mIsBound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateLatestPageBottomIndex(J)Z
    .locals 4
    .parameter "bottomIndex"

    .prologue
    const/4 v2, 0x0

    .line 1070
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    if-nez v3, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return v2

    .line 1073
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDLNA/ServiceManagerDLNA;->mDirectory:Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDLNA/DLNAServiceDirectory;->getCurrent()Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;

    move-result-object v0

    .line 1075
    .local v0, dirInfo:Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNADirectoryInfo;->getPageCurrent()Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;

    move-result-object v1

    .line 1079
    .local v1, pageInfo:Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;
    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {v1, p1, p2}, Lcom/htc/album/TabPluginDLNA/DLNAPageInfo;->setBottomIndex(J)V

    .line 1082
    const/4 v2, 0x1

    goto :goto_0
.end method
