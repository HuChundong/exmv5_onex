.class public Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.super Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;
.source "AlbumSNManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;,
        Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;,
        Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    }
.end annotation


# static fields
.field public static final KEY_TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field private static final LOG_TAG:Ljava/lang/String; = "AlbumSNManager"

.field public static final SPECIAL_ITEM_PHOTO_OF_ME:I = 0x63

.field public static final SPECIAL_ITEM_RECENT_PHOTO:I = 0x1e

.field public static final SPECIAL_ITEM_RECENT_VIDEO:I = 0x1e


# instance fields
.field public final AUTHENTICATION_ACCOUNT_MANAGER:I

.field public final AUTHENTICATION_FAILURE:I

.field public final AUTHENTICATION_SUCCESS:I

.field private mAccount:[Landroid/accounts/Account;

.field private mAccountMgr:Landroid/accounts/AccountManager;

.field private mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

.field private mAuthenticationCallback:Lcom/htc/opensense/album/plugin/IAuthenticationResult;

.field private mAuthenticationType:I

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

.field private mContext:Landroid/content/Context;

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mFlagLoginAction:Z

.field private mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

.field private mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

.field private mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

.field private mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

.field private mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

.field private mIsAccountAvailable:Z

.field private mIsEnablePhotoOfMe:Z

.field private mIsEnableRecentList:Z

.field private mIsEnableRecentVideo:Z

.field private mIsOpenSenseConnected:Z

.field private mPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceID:I

.field private mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

.field private mServiceName:Ljava/lang/String;

.field protected mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;",
            ">;"
        }
    .end annotation
.end field

.field private mSignInCallback:Lcom/htc/opensense/album/plugin/ISignInResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 126
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/NotifyMessenger;-><init>()V

    .line 78
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 79
    const/4 v5, -0x1

    iput v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    .line 80
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 81
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 82
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 83
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 84
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 85
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    .line 86
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    .line 87
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    .line 89
    iput v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->AUTHENTICATION_ACCOUNT_MANAGER:I

    .line 90
    const/16 v5, 0x65

    iput v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->AUTHENTICATION_SUCCESS:I

    .line 91
    const/16 v5, 0x66

    iput v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->AUTHENTICATION_FAILURE:I

    .line 92
    iput v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationType:I

    .line 93
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    .line 94
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 103
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    .line 104
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 105
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 106
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    .line 107
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 108
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 110
    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    .line 111
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z

    .line 112
    iput-boolean v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsAccountAvailable:Z

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    .line 441
    new-instance v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$1;

    invoke-direct {v5, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$1;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 466
    new-instance v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$2;

    invoke-direct {v5, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$2;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mSignInCallback:Lcom/htc/opensense/album/plugin/ISignInResult;

    .line 1236
    new-instance v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;

    invoke-direct {v5, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationCallback:Lcom/htc/opensense/album/plugin/IAuthenticationResult;

    .line 127
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 128
    const/4 v4, 0x0

    .line 129
    .local v4, service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 131
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    .end local v4           #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-direct {v4, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    .line 132
    .restart local v4       #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v1

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 133
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v1

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 134
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    .line 139
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/plugin/TabPlugin;

    .local v2, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    move-object v3, v2

    .line 141
    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 142
    .local v3, remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateFullPhotoListPlugin()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 144
    :cond_2
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    .end local v4           #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-direct {v4, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    .line 145
    .restart local v4       #service:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 146
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 147
    iput-boolean v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 148
    iput-boolean v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsOpenSense:Z

    .line 149
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v2           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v3           #remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationType:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/social/SocialServiceManager;)Lcom/htc/opensense/social/SocialServiceManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    return v0
.end method

.method public static createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 12
    .parameter "context"
    .parameter "szServiceName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1045
    .local p2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v3, 0x0

    .line 1047
    .local v3, intent:Landroid/content/Intent;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v4, v3

    .line 1099
    .end local v3           #intent:Landroid/content/Intent;
    .local v4, intent:Landroid/content/Intent;
    :goto_0
    return-object v4

    .line 1050
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 1051
    .local v8, photoListSize:I
    if-nez v8, :cond_2

    move-object v4, v3

    .line 1052
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1054
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->scan4ServiceShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v4, v3

    .line 1055
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1057
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1058
    .local v5, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    .local v9, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 1063
    .local v1, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/4 v0, 0x0

    .line 1064
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    if-le v8, v6, :cond_6

    .line 1066
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1067
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v11, "com.htc.opensense.upload.TITLE"

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string v11, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const-string v11, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v11, "com.htc.opensense.upload.URI"

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1076
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1064
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1079
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1080
    .local v2, faceTagsSize:I
    const/4 v7, 0x0

    .local v7, nIndexTag:I
    :goto_2
    if-le v2, v7, :cond_4

    .line 1082
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1083
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v10, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    const-string v11, "tag_display_name"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const-string v11, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string v11, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1087
    const-string v11, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1088
    const-string v11, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1089
    const-string v11, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v10

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1090
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1094
    .end local v2           #faceTagsSize:I
    .end local v7           #nIndexTag:I
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1095
    const-string v10, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v10, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v3, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1097
    const-string v10, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v4, v3

    .line 1099
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v4       #intent:Landroid/content/Intent;
    goto/16 :goto_0
.end method

.method public static getTabPlugins(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1161
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "album_tab"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1162
    .local v0, listPlugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    return-object v0
.end method

.method public static varargs getTabPlugins(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .parameter "features"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/TabPlugin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v11, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/plugin/TabPlugin;>;"
    if-nez p0, :cond_1

    .line 1157
    :cond_0
    return-object v11

    .line 1125
    :cond_1
    move-object/from16 v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 1127
    .local v3, feature:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getPluginComponents(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v9

    .line 1128
    .local v9, names:[Landroid/content/ComponentName;
    move-object v1, v9

    .local v1, arr$:[Landroid/content/ComponentName;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v8, v1, v4

    .line 1132
    .local v8, name:Landroid/content/ComponentName;
    :try_start_0
    new-instance v10, Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-direct {v10, p0, v8}, Lcom/htc/opensense/plugin/TabPluginRemote;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1133
    .local v10, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1139
    :cond_2
    const-string v12, "AlbumSNManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AlbumSNManager][getTabPlugins]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v12, "AlbumSNManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AlbumSNManager][getTabPlugins]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v12, "AlbumSNManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AlbumSNManager][getTabPlugins]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v12, "AlbumSNManager"

    const-string v13, "[HTCAlbum][AlbumSNManager][getTabPlugins]:............................. "

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1145
    .restart local v10       #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :cond_3
    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPlugin;->getActivityIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "PluginTabTag"

    invoke-virtual {v10}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1150
    .end local v10           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    :catch_0
    move-exception v2

    .line 1152
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "AlbumSNManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AlbumSNManager][getTabPlugins]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1125
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #name:Landroid/content/ComponentName;
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto/16 :goto_0
.end method

.method private setAccountStatus(Z)V
    .locals 0
    .parameter "bIsAvailable"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsAccountAvailable:Z

    .line 309
    return-void
.end method


# virtual methods
.method public InitAccountAuthentication()V
    .locals 4

    .prologue
    .line 1203
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v0

    .line 1204
    .local v0, connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableAuthenticationProcedure()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->getPermission()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1207
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationCallback:Lcom/htc/opensense/album/plugin/IAuthenticationResult;

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->initAccountAuthentication(Lcom/htc/opensense/album/plugin/IAuthenticationResult;)Z

    .line 1214
    :goto_0
    const/16 v1, 0x4ea8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1215
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isPermissionRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1217
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->UNKNOWN:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-interface {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->getPermission()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1218
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;->AUTHENTICATING:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;

    invoke-interface {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setPermissionState(Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;)V

    .line 1220
    :cond_0
    return-void

    .line 1211
    :cond_1
    const/16 v1, 0x64

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationType:I

    goto :goto_0
.end method

.method public InitAccountLogin(Landroid/app/Activity;)V
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 383
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v9, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 384
    .local v9, szService:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 386
    .local v1, szServiceURL:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableSignInProcedure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mSignInCallback:Lcom/htc/opensense/album/plugin/ISignInResult;

    invoke-virtual {v0, v3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->initAccountSignIn(Lcom/htc/opensense/album/plugin/ISignInResult;)V

    .line 401
    :goto_0
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v8

    .line 402
    .local v8, connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    if-eqz v8, :cond_0

    .line 403
    invoke-interface {v8, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setRetryCount(I)V

    .line 404
    :cond_0
    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 405
    iput-boolean v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 406
    return-void

    .line 392
    .end local v8           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 398
    :cond_2
    const-string v0, "AlbumSNManager"

    const-string v3, "[HTCAlbum][AlbumSNManager][InitAccountLogin]: no url..."

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z
    .locals 5
    .parameter "plugin"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-eq v2, v3, :cond_0

    if-nez p1, :cond_1

    .line 520
    :cond_0
    const/16 v0, 0x274d

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    move v0, v1

    .line 537
    :goto_0
    return v0

    .line 524
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    if-nez v2, :cond_2

    .line 525
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 527
    :cond_2
    const-string v2, "AlbumSNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AlbumSNManager][Connection]: InitConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 531
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    if-eqz v2, :cond_3

    .line 532
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->cancel(Z)Z

    .line 534
    :cond_3
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    invoke-direct {v2, p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    .line 535
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAsyncOpenSensePluginInit:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$AsyncOpenSensePluginInit;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public InitConnection(ZZ)Z
    .locals 6
    .parameter "bEnableListener"
    .parameter "bEnableAutoSync"

    .prologue
    const/4 v5, 0x0

    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, bResult:Z
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v2, v3, :cond_0

    .line 492
    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onUIUpdateNotify(ILjava/lang/Object;I)V

    move v1, v0

    .line 513
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 502
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    if-nez p1, :cond_1

    .line 504
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    const-string v4, "SupportGallery"

    invoke-static {v3, v2, v4, v5}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 513
    .restart local v1       #bResult:I
    goto :goto_0

    .line 508
    .end local v1           #bResult:I
    :cond_1
    const-string v2, "AlbumSNManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AlbumSNManager][InitConnection]: connectTo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    if-nez v2, :cond_2

    .line 510
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V

    iput-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 511
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    const-string v4, "SupportGallery"

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    invoke-static {v3, v2, v4, v5}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    move-result v0

    goto :goto_1
.end method

.method public UninitConnection()V
    .locals 4

    .prologue
    .line 542
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    :cond_0
    const-string v1, "AlbumSNManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumSNManager][Connection]: UninitConnection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_1

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onDeInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v1}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    .line 560
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    .line 561
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AlbumSNManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumSNManager][UninitConnection]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelBackgroundAction()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->cancelBackgroundAction()V

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->cancelBackgroundAction()V

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->cancelBackgroundAction()V

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->cancelBackgroundAction()V

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 1041
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->cancelBackgroundAction()V

    .line 1042
    :cond_4
    return-void
.end method

.method public enablePhotoOfMeAlbumList()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnablePhotoOfMe:Z

    .line 428
    return-void
.end method

.method public enableRecentAlbumList()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentList:Z

    .line 432
    return-void
.end method

.method public enableRecentVideoList()V
    .locals 3

    .prologue
    .line 438
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][enableRecentVideoList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsEnableRecentVideo:Z

    .line 440
    return-void
.end method

.method public getActiveUser(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUser(Z)V

    .line 842
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getActiveUserSync()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 848
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserSync()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumList(Ljava/util/List;Z)Z
    .locals 2
    .parameter
    .parameter "bIsForceSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 862
    .local p1, szUids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->actionInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][getAlbumList]: already running skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaList(Ljava/lang/Object;Z)Z

    goto :goto_0
.end method

.method public getAlbumNextOnList(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaNextOnList(Z)Z

    .line 888
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOp([Ljava/lang/String;)Z
    .locals 1
    .parameter "szUIDs"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaInfo([Ljava/lang/String;)Z

    .line 788
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAlbumOpFast([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;
    .locals 2
    .parameter "albums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Album;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, albumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaOpFast([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 796
    :cond_0
    return-object v0
.end method

.method public getAlbumRecentList(Z)Z
    .locals 1
    .parameter "bIsForceSync"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaRecentList(Z)Z

    .line 881
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCachedAccountOwner()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    .line 966
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 967
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getActiveUserResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 968
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedAlbumList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    const/4 v0, 0x0

    .line 990
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    check-cast v0, Ljava/util/List;

    .line 992
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedComments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1006
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    check-cast v0, Ljava/util/List;

    .line 1008
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedFriendList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 980
    const/4 v0, 0x0

    .line 982
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 984
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedPhotoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    const/4 v0, 0x0

    .line 998
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 999
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v0, Ljava/util/List;

    .line 1000
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedTags()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    const/4 v0, 0x0

    .line 1014
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaListResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    check-cast v0, Ljava/util/List;

    .line 1016
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    :cond_0
    return-object v0
.end method

.method public getCachedUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 972
    const/4 v0, 0x0

    .line 974
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getUserResult()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v0, Ljava/util/List;

    .line 976
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_0
    return-object v0
.end method

.method public getCommentCount(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 3
    .parameter "medium"

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 931
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaListCount(Ljava/lang/Object;Z)Z

    .line 934
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCommentList(Lcom/htc/opensense/social/MediumOp;Z)Z
    .locals 1
    .parameter "mediumOp"
    .parameter "bIsForceUpdate"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaList(Ljava/lang/Object;Z)Z

    .line 916
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCommentList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Z)Z
    .locals 1
    .parameter "photo"
    .parameter "bIsForceUpdate"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaList(Ljava/lang/Object;Z)Z

    .line 924
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentServiceURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList(Lcom/htc/opensense/social/PersonOp;ZZ)Z
    .locals 1
    .parameter "personOp"
    .parameter "bIsForceSync"
    .parameter "bIsFriendsList"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setListMode(Z)V

    .line 855
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaList(Ljava/lang/Object;Z)Z

    .line 858
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediaInfo3(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo2(Ljava/lang/String;)V

    .line 772
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfo(Ljava/lang/String;)V

    .line 812
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "szAID"
    .parameter "szUID"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMediumInfoAsync(Ljava/lang/String;)Lcom/htc/opensense/social/MediumOp;
    .locals 2
    .parameter "szUID"

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, mediumOp:Lcom/htc/opensense/social/MediumOp;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediumOp:Lcom/htc/opensense/social/MediumOp;
    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    .line 805
    .restart local v0       #mediumOp:Lcom/htc/opensense/social/MediumOp;
    :cond_0
    return-object v0
.end method

.method public getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;
    .locals 2
    .parameter "medium"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/htc/opensense/social/data/Medium;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    check-cast v0, Ljava/util/List;

    .line 827
    .restart local v0       #mediumOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    :cond_0
    return-object v0
.end method

.method public getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;
    .locals 5
    .parameter "serviceName"

    .prologue
    const/4 v3, 0x0

    .line 1104
    if-nez p1, :cond_0

    move-object v1, v3

    .line 1113
    :goto_0
    return-object v1

    .line 1106
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mPlugins:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPlugin;

    .local v1, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    move-object v2, v1

    .line 1108
    check-cast v2, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1109
    .local v2, remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    invoke-virtual {v2}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v1           #plugin:Lcom/htc/opensense/plugin/TabPlugin;
    .end local v2           #remotePlugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_2
    move-object v1, v3

    .line 1113
    goto :goto_0
.end method

.method public getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "szUIDs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    check-cast v0, Ljava/util/List;

    .line 780
    .restart local v0       #peopleOp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_0
    return-object v0
.end method

.method public getPersonInfo(Ljava/lang/String;)Lcom/htc/opensense/social/PersonOp;
    .locals 2
    .parameter "szUID"

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, personOp:Lcom/htc/opensense/social/PersonOp;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfoSynchronous(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #personOp:Lcom/htc/opensense/social/PersonOp;
    check-cast v0, Lcom/htc/opensense/social/PersonOp;

    .line 758
    .restart local v0       #personOp:Lcom/htc/opensense/social/PersonOp;
    :cond_0
    return-object v0
.end method

.method public getPersonInfo2(Ljava/lang/String;)Z
    .locals 1
    .parameter "szUID"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getMediaInfo(Ljava/lang/String;)V

    .line 765
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "szUMediumID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getMediaList(Ljava/lang/Object;Ljava/lang/Object;ZI)Z

    .line 895
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPhotosOfMeList(Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeList(Ljava/lang/Object;ZI)Z

    .line 909
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getRecentPhotoList(Ljava/lang/String;ZI)Z
    .locals 1
    .parameter "szUID"
    .parameter "bIsForceSync"
    .parameter "nMediumType"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->getRecentMediaList(Ljava/lang/Object;ZI)Z

    .line 902
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getTagList(Lcom/htc/opensense/social/data/Medium;)Z
    .locals 2
    .parameter "medium"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaList(Ljava/lang/Object;Z)Z

    .line 955
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAccountActive()Z
    .locals 9

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 249
    .local v0, account:[Landroid/accounts/Account;
    const/4 v6, -0x1

    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    if-ne v6, v7, :cond_0

    .line 251
    const-string v6, "AlbumSNManager"

    const-string v7, "[HTCAlbum][AlbumSNManager][isAccountActive]: no service id availabled..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setAccountStatus(Z)V

    move v2, v1

    .line 295
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 255
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_0
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    .line 256
    .local v4, szService:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    .line 257
    .local v5, szServiceURL:Ljava/lang/String;
    const-string v6, "AlbumSNManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AlbumSNManager][isAccountActive]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v6, :cond_5

    .line 260
    const-string v6, "AlbumSNManager"

    const-string v7, "[HTCAlbum][AlbumSNManager][isAccountActive]: plugin..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableSignInProcedure()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v6}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 264
    const-string v6, "AlbumSNManager"

    const-string v7, "[HTCAlbum][AlbumSNManager][isAccountActive]: plugin: getAccounts"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    array-length v6, v0

    if-nez v6, :cond_6

    .line 281
    :cond_2
    const-string v6, "AlbumSNManager"

    const-string v7, "[HTCAlbum][AlbumSNManager][isAccountActive]: no active account availabled..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 289
    :goto_2
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v3

    .line 290
    .local v3, connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    if-eqz v3, :cond_3

    .line 291
    invoke-interface {v3, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->setSignInState(Z)V

    .line 293
    :cond_3
    invoke-direct {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setAccountStatus(Z)V

    move v2, v1

    .line 295
    .restart local v2       #bResult:I
    goto :goto_0

    .line 268
    .end local v2           #bResult:I
    .end local v3           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :cond_4
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    invoke-virtual {v6, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 269
    const-string v6, "AlbumSNManager"

    const-string v7, "[HTCAlbum][AlbumSNManager][isAccountActive]: plugin: getAccountsByType"

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    :cond_5
    const-string v6, "AlbumSNManager"

    const-string v7, "[HTCAlbum][AlbumSNManager][isAccountActive]: default..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 276
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    invoke-virtual {v6, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_1

    .line 286
    :cond_6
    const-string v6, "AlbumSNManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AlbumSNManager][isAccountActive]: active account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public isAccountAuthenticated()Z
    .locals 4

    .prologue
    .line 1223
    const/4 v0, 0x0

    .line 1224
    .local v0, result:Z
    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationType:I

    packed-switch v1, :pswitch_data_0

    .line 1233
    :goto_0
    const-string v1, "AlbumSNManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AlbumSNManager][isAccountAuthenticated] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    return v0

    .line 1227
    :pswitch_0
    const/4 v0, 0x1

    .line 1228
    goto :goto_0

    .line 1230
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAccountAvailable()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsAccountAvailable:Z

    return v0
.end method

.method public isAccountStatusChanged()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 312
    const/4 v1, 0x1

    .line 317
    .local v1, bResult:Z
    const/4 v0, 0x0

    .line 319
    .local v0, account:[Landroid/accounts/Account;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableSignInProcedure()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 328
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 330
    :cond_0
    const-string v2, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: sync active account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_1
    if-nez v1, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setAccountStatus(Z)V

    .line 345
    return v1

    .line 325
    :cond_1
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v2, v2, v3

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 334
    const-string v2, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: active account changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_3
    const-string v2, "AlbumSNManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: active account : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v5, v5, v3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->sd(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "AlbumSNManager"

    const-string v4, "[HTCAlbum][AlbumSNManager][isAccountStatusChanged]: no change just skip!"

    invoke-static {v2, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_4
    move v2, v3

    .line 343
    goto/16 :goto_2
.end method

.method public isEnableCommentCache()Z
    .locals 2

    .prologue
    .line 943
    const/4 v0, 0x1

    .line 944
    .local v0, bIsEnable:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->isEnableCacheList()Z

    move-result v0

    .line 948
    :cond_0
    return v0
.end method

.method public isExistActiveUserCache()Z
    .locals 2

    .prologue
    .line 831
    const/4 v0, 0x0

    .line 832
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isExistActiveUserCache()Z

    move-result v0

    .line 835
    :cond_0
    return v0
.end method

.method public isExistingAccount()Z
    .locals 2

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 356
    :cond_0
    return v0
.end method

.method public isFlaggedLoginAction()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    return v0
.end method

.method public isOpenSenseConnected()Z
    .locals 1

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mIsOpenSenseConnected:Z

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    .line 158
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    .line 159
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    .line 162
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDestroy()V

    .line 164
    :cond_0
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    .line 166
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDestroy()V

    .line 168
    :cond_1
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    .line 170
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->onDestroy()V

    .line 172
    :cond_2
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    .line 174
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDestroy()V

    .line 176
    :cond_3
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    .line 178
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->onDestroy()V

    .line 180
    :cond_4
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    .line 182
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 184
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    .line 185
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 186
    iput-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mConnectionListener:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$ServiceConnectionListener;

    .line 187
    return-void
.end method

.method public resetActiveAccount()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setAccountStatus(Z)V

    .line 301
    return-void
.end method

.method public resetFlagLoginAction()V
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mFlagLoginAction:Z

    .line 414
    return-void
.end method

.method public scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z
    .locals 9
    .parameter "szService"
    .parameter "hDataHandler"
    .parameter "hUIHandler"

    .prologue
    const/4 v8, 0x1

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, bResult:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v1, v0

    .line 241
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 195
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mContext:Landroid/content/Context;

    const-string v6, "SupportGallery"

    invoke-static {v5, v6}, Lcom/htc/opensense/plugin/PluginRegistryHelper;->getOpenSenseServices(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 197
    .local v4, services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_2

    .line 198
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .restart local v4       #services:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " available services."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, index:I
    const/4 v3, 0x0

    .line 206
    .local v3, index2:I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 208
    const-string v6, "AlbumSNManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 211
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v6, v6, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 213
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iput-boolean v8, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    .line 209
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 206
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 223
    :cond_5
    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 225
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-boolean v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mIsSupported:Z

    if-nez v5, :cond_7

    .line 223
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 228
    :cond_7
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 231
    const/4 v0, 0x1

    .line 232
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    .line 233
    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v5, v5, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    .line 234
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setDataHandler(Landroid/os/Handler;)V

    .line 235
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setUIHandler(Landroid/os/Handler;)V

    .line 236
    const-string v5, "AlbumSNManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AlbumSNManager][scanAvailableService]: Match found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v1, v0

    .line 241
    .restart local v1       #bResult:I
    goto/16 :goto_0
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 3
    .parameter "dataPlugin"

    .prologue
    .line 1166
    const-string v0, "AlbumSNManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AlbumSNManager][setDataPlugin]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 1168
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1171
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setDataHandler(Landroid/os/Handler;)V

    .line 1172
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setUIHandler(Landroid/os/Handler;)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1177
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setDataHandler(Landroid/os/Handler;)V

    .line 1178
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->setUIHandler(Landroid/os/Handler;)V

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    if-eqz v0, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1183
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setDataHandler(Landroid/os/Handler;)V

    .line 1184
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPhotos;->setUIHandler(Landroid/os/Handler;)V

    .line 1186
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_3

    .line 1188
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1189
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setDataHandler(Landroid/os/Handler;)V

    .line 1190
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setUIHandler(Landroid/os/Handler;)V

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_4

    .line 1194
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 1195
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setDataHandler(Landroid/os/Handler;)V

    .line 1196
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setUIHandler(Landroid/os/Handler;)V

    .line 1198
    :cond_4
    return-void
.end method

.method public setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V
    .locals 1
    .parameter "medium"
    .parameter "szComment"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerComment:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 940
    :cond_0
    return-void
.end method

.method public setPhotoTags(Lcom/htc/opensense/social/data/Medium;Ljava/util/List;)V
    .locals 1
    .parameter "medium"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/opensense/social/data/Medium;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 959
    .local p2, faceTags:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerTag:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->setToMediaList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    :cond_0
    return-void
.end method

.method public syncActiveAccount()V
    .locals 4

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, account:[Landroid/accounts/Account;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableSignInProcedure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 368
    :goto_0
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 369
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setAccount(Landroid/accounts/Account;)V

    .line 371
    :cond_0
    return-void

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServices:Ljava/util/List;

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mServiceID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$SocialNetworkService;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public syncActiveDummyAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 374
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/accounts/Account;

    .line 375
    .local v0, account:[Landroid/accounts/Account;
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "dummy_account"

    const-string v3, "dummy_account"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 376
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    .line 378
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAccount:[Landroid/accounts/Account;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->setAccount(Landroid/accounts/Account;)V

    .line 380
    :cond_0
    return-void
.end method

.method public updateFriendList(Ljava/lang/Object;)Z
    .locals 2
    .parameter "objList"

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mHandlerPeople:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->updateCacheList(Ljava/lang/Object;)Z

    .line 1024
    :cond_0
    return v0
.end method
