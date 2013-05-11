.class public Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;
.super Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;
.source "MfFragmentMainLocal.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneErrorHost;
.implements Lcom/htc/album/TabPluginDevice/smart/IAddressFinderServiceHost;


# static fields
.field private static final JUMP_ID_CONTINUOUSSHOTVIEW:I = 0x4

.field private static final JUMP_ID_FOLDERVIEW:I = 0x1

.field private static final JUMP_ID_FULLSCREENVIEW:I = 0x3

.field private static final JUMP_ID_SMART_EVENT_FULLSCREEN_VIEW:I = 0x5

.field private static final JUMP_ID_SMART_EVENT_THUMNBNAILS_VIEW:I = 0x6

.field private static final JUMP_ID_THUMBNAILVIEW:I = 0x2

.field private static sLoadedScenes:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

.field private mAddressRetrieveErrorToast:Landroid/widget/Toast;

.field private mAddressRetrievetoast:Landroid/widget/Toast;

.field private mGotoPause:Z

.field private mJumpToScene:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sLoadedScenes:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;-><init>()V

    .line 76
    const-string v0, "MfFragmentMainLocal"

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->LOG_TAG:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    .line 88
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    .line 90
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->saveTipsDialogStatus(Z)V

    return-void
.end method

.method private onPrepareActionBar(Ljava/lang/String;Z)V
    .locals 8
    .parameter "szAction"
    .parameter "bForceFullscreen"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 686
    const-string v4, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 687
    .local v1, bIsCamera:Z
    const-string v4, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 688
    .local v2, bIsCameraContinuous:Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 690
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v3

    .line 691
    .local v3, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 692
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v3, :cond_2

    .line 695
    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 696
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 731
    .end local v0           #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .end local v3           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_1
    :goto_0
    return-void

    .line 700
    .restart local v0       #actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .restart local v3       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_2
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->enableFullScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 705
    if-eqz v2, :cond_3

    .line 708
    invoke-interface {v0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 715
    :goto_1
    invoke-virtual {p0, v6}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0

    .line 713
    :cond_3
    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onEnterFullscreenMode()V

    goto :goto_1

    .line 720
    :cond_4
    invoke-interface {v0, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 721
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    goto :goto_0
.end method

.method private saveTipsDialogStatus(Z)V
    .locals 6
    .parameter "bIsChecked"

    .prologue
    .line 932
    const-string v3, "MfFragmentMainLocal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][saveTipsDialogStatus]: auto retrieve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 934
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 938
    .local v1, appContext:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/htc/album/TabPluginDevice/smart/EventSettings;->setAutoRetrievePref(Landroid/content/Context;Z)V

    .line 940
    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 941
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v2, :cond_0

    .line 943
    const/4 v3, 0x1

    const-string v4, "SmartFolderScene"

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 945
    check-cast v2, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    .end local v2           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {v2, p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->finishDialogFirstTimer(Z)V

    .line 949
    .end local v1           #appContext:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private showAddressRetrieveErrorToast()V
    .locals 3

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 968
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 970
    const-string v1, "MfFragmentMainLocal"

    const-string v2, "[HTCAlbum][MfFragmentMainLocal][showAddressRetrieveErrorToast]:activity is null..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 975
    const v1, 0x7f0a005f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showAddressRetrieveToast()V
    .locals 3

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 953
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 955
    const-string v1, "MfFragmentMainLocal"

    const-string v2, "[HTCAlbum][MfFragmentMainLocal][showAddressRetrieveToast]:activity is null..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 960
    const v1, 0x7f0a005e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 963
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->lockNetworkAccessWarning()V

    goto :goto_0
.end method


# virtual methods
.method public addressLookup(Z)V
    .locals 1
    .parameter "isUseNetwork"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->addressLookup(Z)V

    .line 818
    return-void
.end method

.method public bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V
    .locals 1
    .parameter "szIdentifier"
    .parameter "listener"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->bindAddressListener(Ljava/lang/String;Lcom/htc/album/TabPluginDevice/smart/IAddressFinderListener;)V

    .line 824
    return-void
.end method

.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 7
    .parameter "caller"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 214
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return v4

    .line 216
    :cond_0
    iput v5, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 226
    invoke-static {p1}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->isFromDMC(Landroid/content/Intent;)Z

    move-result v2

    .line 227
    .local v2, isFromDMC:Z
    if-eqz v2, :cond_1

    .line 229
    const-string v6, "dmc_launched"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 230
    .local v3, isLaunched:Z
    if-eqz v3, :cond_5

    .line 231
    const/4 v2, 0x0

    .line 236
    .end local v3           #isLaunched:Z
    :cond_1
    :goto_1
    const-string v6, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.VIEW_FOLDER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v2, :cond_7

    .line 243
    :cond_2
    const-string v6, "folder_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, folderType:Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v6, "com.htc.HTCAlbum.SMART"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 245
    const/4 v6, 0x5

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 262
    .end local v1           #folderType:Ljava/lang/String;
    :cond_3
    :goto_2
    iget v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    if-eq v6, v5, :cond_4

    .line 263
    invoke-virtual {p0, v4, v4}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .end local v2           #isFromDMC:Z
    :cond_4
    move v4, v5

    .line 270
    goto :goto_0

    .line 233
    .restart local v2       #isFromDMC:Z
    .restart local v3       #isLaunched:Z
    :cond_5
    const-string v6, "dmc_launched"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 247
    .end local v3           #isLaunched:Z
    .restart local v1       #folderType:Ljava/lang/String;
    :cond_6
    const/4 v6, 0x3

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    .line 249
    .end local v1           #folderType:Ljava/lang/String;
    :cond_7
    const-string v6, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 250
    const/4 v6, 0x4

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    .line 252
    :cond_8
    const-string v6, "com.htc.album.action.ALL_VIDEOS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 255
    :cond_9
    const-string v6, "folder_type"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1       #folderType:Ljava/lang/String;
    if-eqz v1, :cond_a

    const-string v6, "com.htc.HTCAlbum.SMART"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 257
    const/4 v6, 0x6

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2

    .line 259
    :cond_a
    const/4 v6, 0x2

    iput v6, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    goto :goto_2
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter "scene"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->getAddressResultMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 477
    const v0, 0x7f03002f

    return v0
.end method

.method protected getFragmentReference()Lcom/htc/app/mf/MfFragment;
    .locals 0

    .prologue
    .line 94
    return-object p0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 485
    .local v0, activity:Landroid/app/Activity;
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method public gotoErrorScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    const-string v2, "SceneLocalError"

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public isFinderSearchInProgress()Z
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->isFinderSearchInProgress()Z

    move-result v0

    return v0
.end method

.method public isGotoPause()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    return v0
.end method

.method public isInErrorScene()Z
    .locals 3

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalError"

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v0

    .line 750
    return v0
.end method

.method public lockNetworkAccessWarning()V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->lockNetworkAccessWarning()V

    .line 920
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 367
    const-string v5, "MfFragmentMainLocal"

    const-string v6, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] + "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sparse-switch p1, :sswitch_data_0

    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 373
    :sswitch_0
    if-ne p2, v7, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, action:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 377
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_1
    invoke-direct {p0, v0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    .line 379
    const-string v5, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 383
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 384
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "MfFragmentMainLocal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v5, "MfFragmentMainLocal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MfFragmentMainLocal][onActivityResult] bucketid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "key_bucket_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 389
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1002

    invoke-virtual {v5, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->startDecode(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 390
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setFragment(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)V

    .line 391
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 392
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setContentView(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    .line 394
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 395
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoBurstShot"

    invoke-virtual {v5, v10, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 401
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 403
    const-string v5, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    :goto_1
    const-string v5, "goFinish"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 420
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 422
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x1001

    invoke-virtual {v5, v6, p3, v7}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->startDecode(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 423
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setFragment(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)V

    .line 424
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 425
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setContentView(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    .line 427
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 429
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoFullscreen"

    invoke-virtual {v5, v10, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :cond_3
    const-string v5, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 407
    const-string v5, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 411
    :cond_4
    const-string v5, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 436
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v7, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 438
    .local v2, i:Landroid/content/Intent;
    const-string v5, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v5, "goFinish"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->fullscreenMode(Z)V

    .line 442
    invoke-virtual {p0, v9, v9}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enableSourceSwitch(ZZ)V

    .line 444
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 446
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalPhotoFullscreen"

    invoke-virtual {v5, v10, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 452
    .end local v2           #i:Landroid/content/Intent;
    :sswitch_2
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v4

    .line 453
    .local v4, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v4, :cond_0

    .line 455
    const-string v5, "SceneLocalError"

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 457
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 458
    iget-object v5, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v6, "SceneLocalFolder"

    invoke-virtual {v5, v10, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 369
    nop

    :sswitch_data_0
    .sparse-switch
        0x1390 -> :sswitch_0
        0x139b -> :sswitch_1
        0x13a1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressedOverride()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 776
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 777
    .local v5, strAction:Ljava/lang/String;
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v8, :cond_5

    .line 779
    iget-object v8, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v8}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v4

    .line 780
    .local v4, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-eqz v4, :cond_5

    .line 781
    const/4 v3, 0x0

    .line 783
    .local v3, isLaunchFromDMC:Z
    const-string v8, "com.htc.album.action.DLNA_VIEW_LOCAL_PHOTO"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v3, v7

    .line 786
    :goto_0
    const/4 v2, 0x0

    .line 787
    .local v2, isBurstShotScene:Z
    const-string v8, "SceneLocalPhotoBurstShot"

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v7, :cond_1

    .line 789
    const/4 v2, 0x1

    .line 792
    :cond_1
    if-eq v7, v3, :cond_2

    if-ne v7, v2, :cond_5

    .line 793
    :cond_2
    const/4 v1, 0x0

    .line 794
    .local v1, handled:Z
    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBackPressed()Z

    move-result v1

    .line 796
    iget-object v7, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getSceneCount()I

    move-result v7

    if-nez v7, :cond_4

    .line 806
    .end local v1           #handled:Z
    .end local v2           #isBurstShotScene:Z
    .end local v3           #isLaunchFromDMC:Z
    .end local v4           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_1
    return v6

    .restart local v3       #isLaunchFromDMC:Z
    .restart local v4       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_3
    move v3, v6

    .line 783
    goto :goto_0

    .restart local v1       #handled:Z
    .restart local v2       #isBurstShotScene:Z
    :cond_4
    move v6, v1

    .line 800
    goto :goto_1

    .line 806
    .end local v1           #handled:Z
    .end local v2           #isBurstShotScene:Z
    .end local v3           #isLaunchFromDMC:Z
    .end local v4           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_5
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onBackPressedOverride()Z

    move-result v6

    goto :goto_1
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 278
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaConnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 291
    :goto_0
    return v2

    .line 288
    :cond_0
    const-string v0, "media_connected"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 295
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "media_connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 489
    const-string v2, "MfFragmentMainLocal"

    const-string v3, "[HTCAlbum][MfFragmentSunnyMainBase][onConfigurationChanged]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 491
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 496
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 498
    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;

    .line 499
    .local v1, paneControl:Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->paneRight()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/IMPaneHost;->enable2Pane(ZZ)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 105
    iput v3, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    .line 106
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, acitivity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onCreate(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v1, p0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setMessageHost(Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;)V

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    sget-boolean v1, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sLoadedScenes:Z

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;

    const-string v2, "MfFragmentMainLocal"

    invoke-direct {v1, p0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$1;->start()V

    .line 141
    sput-boolean v3, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->sLoadedScenes:Z

    goto :goto_0
.end method

.method public onCreateScene()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isAllStorageReady()Z

    move-result v0

    .line 306
    .local v0, bIsStorageReady:Z
    const-string v2, "MfFragmentMainLocal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MfFragmentMainLocal][onCreateScene]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-nez v0, :cond_1

    .line 314
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalError"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 351
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->enable2Pane()Z

    .line 353
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    .line 357
    .local v1, nTop:I
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, v7, v1, v7, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setPadding(IIII)V

    .line 362
    .end local v1           #nTop:I
    :cond_0
    return v6

    .line 318
    :cond_1
    iget v2, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mJumpToScene:I

    packed-switch v2, :pswitch_data_0

    .line 347
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->startOpeningScene(Landroid/content/Intent;)V

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SmartEventFullscreenScene"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_1
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SmartEventThumbnailScene"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setFragment(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)V

    .line 332
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 333
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setContentView(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    .line 334
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoFullscreen"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoThumbnail"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :pswitch_4
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setFragment(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;)V

    .line 341
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, v6}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setEnableInitBackground(Z)V

    .line 342
    invoke-static {}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->getInstance()Lcom/htc/album/TabPluginDevice/DecodePreViewImage;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/DecodePreViewImage;->setContentView(Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;)V

    .line 343
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v3, "SceneLocalPhotoBurstShot"

    invoke-virtual {v2, v5, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 150
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrievetoast:Landroid/widget/Toast;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 155
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressRetrieveErrorToast:Landroid/widget/Toast;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->onDestroy()V

    .line 158
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onDestroy()V

    .line 159
    return-void
.end method

.method protected onHandleSceneErrorReport(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 571
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v2

    .line 572
    .local v2, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    if-nez v2, :cond_1

    .line 574
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 1"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 577
    check-cast v0, Landroid/os/Bundle;

    .line 579
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "scene_identifier"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, szSceneIdentity:Ljava/lang/String;
    const-string v4, "scene_error_report"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 582
    .local v1, nCount:I
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 584
    :cond_2
    const-string v4, "MfFragmentMainLocal"

    const-string v5, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: exit 2"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_3
    const-string v4, "MfFragmentMainLocal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MfFragmentMainLocal][onHandleSceneErrorReport]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v4, "SceneLocalFolder"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "SmartFolderScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 593
    :cond_4
    if-nez v1, :cond_0

    .line 595
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 596
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalError"

    invoke-virtual {v4, v7, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :cond_5
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SceneLocalPhotoFullscreen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SmartEventThumbnailScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "SmartEventFullscreenScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    :cond_6
    if-nez v1, :cond_0

    .line 606
    const-string v4, "SceneLocalPhotoThumbnail"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "SmartEventThumbnailScene"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 609
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SceneLocalFolder"

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v5, "SmartFolderScene"

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 612
    :cond_8
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->gotoPreviousScene()V

    goto/16 :goto_0

    .line 616
    :cond_9
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 617
    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->startOpeningScene(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 622
    :cond_a
    iget-object v4, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 623
    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->startOpeningScene(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 631
    const/4 v0, 0x0

    .line 633
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 645
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onMessage(Landroid/os/Message;)Z

    .line 648
    :goto_0
    return v0

    .line 636
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onHandleSceneErrorReport(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->showAddressRetrieveToast()V

    goto :goto_0

    .line 642
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->showAddressRetrieveErrorToast()V

    goto :goto_0

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x13a5 -> :sswitch_1
        0x13a6 -> :sswitch_2
        0x4ea3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 166
    const-string v0, "MfFragmentMainLocal"

    const-string v1, "[HTCAlbum][MfFragmentMainLocal][onNewIntent]: Begin"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onNewIntent(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onNotifyServiceFirstTimer()V
    .locals 11

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 843
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 847
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f03001d

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 848
    .local v5, dlgCustomView:Landroid/widget/RelativeLayout;
    if-eqz v5, :cond_0

    .line 851
    const v8, 0x7f090044

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 852
    .local v6, dlgMessage:Landroid/widget/TextView;
    const v8, 0x7f0a00af

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 854
    const v8, 0x7f090045

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 855
    .local v2, dlgCheckBox:Lcom/htc/widget/HtcCheckBox;
    sget-boolean v8, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;->DEFAULT_FIRST_LAUNCH_EVENTS:Z

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 857
    const v8, 0x7f090046

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 858
    .local v3, dlgCheckBoxText:Landroid/widget/TextView;
    const v8, 0x7f0a00b0

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 860
    invoke-static {}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->instance()Landroid/app/DialogFragment;

    move-result-object v1

    check-cast v1, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;

    .line 861
    .local v1, dialog:Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;
    if-eqz v1, :cond_0

    .line 863
    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->isShown()Z

    move-result v9

    if-ne v8, v9, :cond_2

    .line 865
    const-string v8, "MfFragmentMainLocal"

    const-string v9, "[HTCAlbum][MfFragmentMainLocal][onNotifyServiceFirstTimer]: tips sdialog was shown..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 869
    :cond_2
    new-instance v8, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$2;

    invoke-direct {v8, p0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal$2;-><init>(Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->setCallback(Lcom/htc/album/helper/HtcDialogManager$IDialogListener;)V

    .line 892
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00ae

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->setTitle(Ljava/lang/String;)V

    .line 894
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 895
    .local v4, dlgCustomScrollView:Landroid/widget/ScrollView;
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 896
    invoke-virtual {v1, v4}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->setCustomView(Landroid/view/View;)V

    .line 897
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Lcom/htc/album/helper/HtcDialogManager$DLG_CUSTOM_VIEW;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 898
    const-string v8, "MfFragmentMainLocal"

    const-string v9, "[HTCAlbum][MfFragmentMainLocal][onNotifyServiceFirstTimer]: show Tips dialog"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    .line 203
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onPause()V

    .line 204
    return-void
.end method

.method public onPrepareFullscreenMode()V
    .locals 3

    .prologue
    .line 668
    iget-object v2, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-nez v2, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 674
    .local v0, acitivity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, szAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 680
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPrepareActionBar(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onReportSceneErrorCheck(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "szSceneIdentity"
    .parameter "object"

    .prologue
    .line 654
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 655
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "scene_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 658
    const-string v1, "scene_error_report"

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 660
    :cond_0
    const/16 v1, 0x4ea3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->onPostMessage(ILjava/lang/Object;I)V

    .line 662
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mGotoPause:Z

    .line 190
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/htc/app/mf/MfMainActivity;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    .line 193
    .local v0, fragment:Lcom/htc/app/mf/IMfFragment;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_LEFT:I

    invoke-virtual {v1, v2}, Lcom/htc/app/mf/MfMainActivity;->setLand2PortShowedPane(I)V

    .line 195
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v1

    sget v2, Lcom/htc/sunny2/common/HtcPaneManager;->PANE_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/htc/app/mf/MfMainActivity;->finishFragment(I)V

    .line 198
    .end local v0           #fragment:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onResume()V

    .line 199
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->onStart()V

    .line 184
    return-void
.end method

.method public onUpdateErrorScene()V
    .locals 2

    .prologue
    .line 760
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 761
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    instance-of v1, v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    if-eqz v1, :cond_0

    .line 763
    check-cast v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;->onUpdateErrorView()V

    .line 765
    :cond_0
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 4
    .parameter "szSceneIdentity"

    .prologue
    .line 510
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MfFragmentMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainLocal][sceneFactory]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_0
    const/4 v0, 0x0

    .line 512
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneLocalFolder"

    if-eq v1, p1, :cond_1

    const-string v1, "SceneLocalFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    :cond_1
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;-><init>()V

    .line 556
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :goto_0
    return-object v0

    .line 517
    :cond_2
    const-string v1, "SceneLocalPhotoThumbnail"

    if-eq v1, p1, :cond_3

    const-string v1, "SceneLocalPhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 520
    :cond_3
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoThumbnail;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 522
    :cond_4
    const-string v1, "SceneLocalPhotoFullscreen"

    if-eq v1, p1, :cond_5

    const-string v1, "SceneLocalPhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 525
    :cond_5
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 527
    :cond_6
    const-string v1, "SceneLocalPhotoBurstShot"

    if-eq v1, p1, :cond_7

    const-string v1, "SceneLocalPhotoBurstShot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 530
    :cond_7
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 532
    :cond_8
    const-string v1, "SmartFolderScene"

    if-eq v1, p1, :cond_9

    const-string v1, "SmartFolderScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 535
    :cond_9
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderScene;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 537
    :cond_a
    const-string v1, "SmartEventThumbnailScene"

    if-eq v1, p1, :cond_b

    const-string v1, "SmartEventThumbnailScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 540
    :cond_b
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DLNABaseFragment;->mTVDisplayListener:Lcom/htc/album/TabPluginDLNA/DLNABaseFragment$TVDisplayListener;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/smart/SmartEventThumbnailScene;-><init>(Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper$HtcTVDisplayListener;)V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 542
    :cond_c
    const-string v1, "SmartEventFullscreenScene"

    if-eq v1, p1, :cond_d

    const-string v1, "SmartEventFullscreenScene"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 545
    :cond_d
    new-instance v0, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/smart/SmartEventFullscreenScene;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 547
    :cond_e
    const-string v1, "SceneLocalError"

    if-eq v1, p1, :cond_f

    const-string v1, "SceneLocalError"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 550
    :cond_f
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalError;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalError;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto/16 :goto_0

    .line 554
    :cond_10
    const-string v1, "MfFragmentMainLocal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MfFragmentMainLocal][sceneFactory]: Unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setAddressLookUpSource(Ljava/util/HashMap;I)V
    .locals 1
    .parameter
    .parameter "updateCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, sourceMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setAddressLookUpSource(Ljava/util/HashMap;I)V

    .line 834
    return-void
.end method

.method public setEnableNetworkAccessWarning(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setEnableNetworkAccessWarning(Z)V

    .line 905
    return-void
.end method

.method public setResetNetworkAccessWarning(Z)V
    .locals 1
    .parameter "bReset"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->setResetNetworkAccessWarning(Z)V

    .line 925
    return-void
.end method

.method protected startOpeningScene(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 560
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustAlbumCollection;->getDefaultAlbumCollection(Landroid/content/Context;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    move-result-object v0

    .line 561
    .local v0, collection:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    if-ne v1, v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SceneLocalFolder"

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense2/widget/MfFragmentSceneMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "SmartFolderScene"

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public unbindAddressListener(Ljava/lang/String;)V
    .locals 1
    .parameter "szIdentifier"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->unbindAddressListener(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method public unlockNetworkAccessWarning()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/MfFragmentMainLocal;->mAddressFinder:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->unlockNetworkAccessWarning()V

    .line 915
    return-void
.end method
