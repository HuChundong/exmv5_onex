.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.super Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.source "SceneOnlinePhotoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;,
        Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase",
        "<",
        "Lcom/htc/album/SocialNetwork/LivePhotoAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOOTER_BAR_ONLINE_THUMBNAIL_VIEW:I = 0x1

.field private static final HEADER_BAR_ONLINE_THUMBNAIL_VIEW:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "SceneOnlinePhotoThumbnail"


# instance fields
.field protected mAnimationState:I

.field protected mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

.field protected mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentPickerMode:I

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

.field private mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

.field private mHasPhotoListSizeChanged:Z

.field protected mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

.field private mIsDeleteAll:Z

.field private mIsFirstClick:Z

.field private mIsFooterbarVisible:Z

.field protected mIsNewAdapter:Z

.field private mIsNoListAndFirstUpdate:Z

.field private mIsPluginDelete:Z

.field private mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

.field private mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

.field private mLoadingText:Ljava/lang/String;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOldDmr:Ljava/lang/String;

.field private mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

.field private mOnItemVibrateListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;

.field private mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

.field private mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

.field private mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

.field protected mScrollState:I

.field protected mShareIntent:Landroid/content/Intent;

.field private mShareListDialog:Landroid/app/AlertDialog;

.field private mShareManager:Lcom/htc/album/helper/ShareMenuManager;

.field private mShareSelection:I

.field protected mTriggerDeleteAnim:Z

.field private mUpdateHeaderThumbnail:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;-><init>()V

    .line 101
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    .line 102
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    .line 103
    new-instance v0, Lcom/htc/album/helper/ShareMenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/ShareMenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    .line 104
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 105
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 107
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    .line 109
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareIntent:Landroid/content/Intent;

    .line 110
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    .line 111
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 112
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    .line 113
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 114
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 115
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 116
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 117
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 118
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 119
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 120
    iput v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    .line 121
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    .line 122
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    .line 123
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    .line 124
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    .line 125
    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 126
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mHasPhotoListSizeChanged:Z

    .line 127
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v5, v5, v5}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    .line 129
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 130
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 131
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemVibrateListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;

    .line 132
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    .line 135
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOldDmr:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    .line 164
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    .line 1212
    iput v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    .line 2287
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2327
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunnyCore/view/Vector3F;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    return-void
.end method

.method private createAsyncPickerTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2198
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->cancel(Z)Z

    .line 2199
    :cond_0
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 2200
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2201
    return-void
.end method

.method private doRequestPickerList(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v0, :cond_0

    .line 2150
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    packed-switch v0, :pswitch_data_0

    .line 2160
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[HTCAlbum][SceneOnlinePhotoThumbnail][doRequestPickerList] unknow picker mode..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    :goto_0
    return-void

    .line 2153
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createAsyncPickerTask()V

    goto :goto_0

    .line 2157
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->postPluginPickerResult()V

    goto :goto_0

    .line 2166
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createAsyncPickerTask()V

    goto :goto_0

    .line 2150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enableNoPhotoListPage(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    .line 1904
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1905
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1912
    :goto_0
    return-void

    .line 1907
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1909
    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mLayoutPageView:Landroid/widget/RelativeLayout;

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1910
    .local v1, progressBar:Landroid/widget/ProgressBar;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private launchUploadEditor(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v7, 0x0

    .line 2204
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2206
    :cond_0
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][launchUploadEditor]: NG ! List is 0 or NULL ! "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    :goto_0
    return-void

    .line 2210
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    .line 2212
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][launchUploadEditor]: mSceneBundle is null "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2218
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 2220
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2221
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2222
    .local v2, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2226
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "service_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2227
    .local v3, szService:Ljava/lang/String;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onNewAdapter]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    const-string v4, "photo_list"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2230
    const-string v4, "upload_editor_live"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2231
    const-string v4, "scene_identifier"

    const-string v5, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][ScenePhotoTagEditor]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "album_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v5, "ScenePhotoTagEditor"

    invoke-interface {v4, v1, v5, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onDelete(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p1, pickerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->deleteMultipleMedia(Ljava/util/ArrayList;)V

    .line 1000
    return-void
.end method

.method private onItemClicked(I)Z
    .locals 9
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1648
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1650
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1652
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    .local v3, mediaIntent:Landroid/content/Intent;
    :try_start_0
    const-string v4, "com.htc.video"

    const-string v5, "com.htc.video.ViewVideo"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1656
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getVideoUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Video/mp4"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    const-string v4, "output_link"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1658
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1659
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #mediaIntent:Landroid/content/Intent;
    :goto_0
    move v4, v6

    .line 1681
    :goto_1
    return v4

    .line 1661
    .restart local v3       #mediaIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1663
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not launch view player. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1668
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #mediaIntent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    .line 1670
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1671
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1672
    const-string v4, "refresh_by_delete"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1673
    const-string v4, "refresh_by_delete_all"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1674
    const-string v4, "my_live_album"

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v8, "my_live_album"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1678
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v7, "SceneOnlinePhotoFullscreen"

    invoke-interface {v4, v1, v7, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private onLoadingOrDecodingThumbnails(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    .line 346
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 347
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 349
    :cond_0
    const/4 v1, 0x3

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    if-ne v1, v2, :cond_2

    .line 352
    :cond_1
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 355
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 360
    invoke-interface {v0, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 357
    :pswitch_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private onOpenSenseControlButtonClick(I)Z
    .locals 16
    .parameter "nBtnId"

    .prologue
    .line 920
    const-string v13, "SceneOnlinePhotoThumbnail"

    const-string v14, "[HTCAlbum][SceneOnlinePhotoThumbnail][onOpenSenseControlButtonClick] start...:"

    invoke-static {v13, v14}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v3, 0x0

    .line 922
    .local v3, bResult:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v13, :cond_0

    move v4, v3

    .line 995
    .end local v3           #bResult:Z
    .local v4, bResult:I
    :goto_0
    return v4

    .line 925
    .end local v4           #bResult:I
    .restart local v3       #bResult:Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v6

    .line 926
    .local v6, buttonSize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v6, :cond_2

    .line 928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v13, v10}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v5

    .line 930
    .local v5, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 931
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_3

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v5, v14, v15}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v13}, Lcom/htc/album/helper/ShareMenuManager;->getSharePluginButtonID()I

    move-result v13

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x4

    if-le v13, v14, :cond_1

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 937
    .local v1, activity:Landroid/app/Activity;
    new-instance v7, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v12}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$4;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Ljava/util/ArrayList;)V

    .line 962
    .local v7, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const v14, 0x7f0a00cb

    invoke-virtual {v13, v1, v14, v7}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    .line 964
    .end local v1           #activity:Landroid/app/Activity;
    .end local v7           #clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    :cond_1
    const/4 v3, 0x1

    .end local v5           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_2
    move v4, v3

    .line 995
    .restart local v4       #bResult:I
    goto :goto_0

    .line 967
    .end local v4           #bResult:I
    .restart local v5       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_3
    if-eqz v12, :cond_7

    .line 969
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 971
    .local v2, b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    const/4 v14, -0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v14, v15}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onCommandBarButtonSelected(Lcom/htc/opensense/album/plugin/CommandBarButton;ILjava/lang/String;)Z

    .line 978
    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v14}, Lcom/htc/album/helper/ShareMenuManager;->getSharePluginButtonID()I

    move-result v14

    if-eq v13, v14, :cond_5

    invoke-virtual {v5}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v13

    const/high16 v14, 0x60a0

    if-ne v13, v14, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v13}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 983
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v13}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 984
    .local v8, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v13}, Lcom/htc/album/helper/ShareMenuManager;->getPluginFooterButton()Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v9

    .line 985
    .local v9, footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    .line 989
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #footer:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_6
    const/4 v3, 0x1

    .line 926
    .end local v2           #b:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method private onRefresh(Z)V
    .locals 4
    .parameter "bEnableLoading"

    .prologue
    const/4 v3, 0x0

    .line 2125
    if-eqz p1, :cond_0

    .line 2126
    invoke-direct {p0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareLoadingText(I)V

    .line 2127
    :cond_0
    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 2128
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v1, 0x4e28

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 2129
    return-void
.end method

.method private onScrollStateChanged(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 2239
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2242
    .local v1, scrollState:I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v0, 0x4f4e

    .line 2246
    .local v0, adapterScrollState:I
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v0, v4, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setScrollState(III)V

    .line 2252
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    if-ne v2, v1, :cond_2

    .line 2257
    :goto_1
    return-void

    .line 2242
    .end local v0           #adapterScrollState:I
    :cond_1
    const/16 v0, 0x4f4d

    goto :goto_0

    .line 2255
    .restart local v0       #adapterScrollState:I
    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mScrollState:I

    goto :goto_1
.end method

.method private onShare(I)V
    .locals 4
    .parameter "selection"

    .prologue
    .line 1004
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShare]: "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    .line 1006
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 1007
    .local v0, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    if-eqz v0, :cond_0

    .line 1009
    const/4 v1, 0x0

    .line 1011
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSourceInfo()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v1, :cond_0

    .line 1013
    invoke-virtual {p0, p1, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShareAlbumLink(ILjava/lang/Object;)V

    .line 1016
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_0
    return-void
.end method

.method private onShareLink(Ljava/lang/Object;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 1019
    if-nez p1, :cond_1

    .line 1032
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1022
    .restart local p1
    :cond_1
    const/4 v1, 0x0

    .line 1023
    .local v1, szUrl:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1024
    .local v0, szLink:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, szWebLink:Ljava/lang/String;
    move-object v3, p1

    .line 1026
    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 1027
    check-cast p1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1028
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v2, v1

    .line 1030
    :goto_1
    if-eqz v2, :cond_0

    .line 1031
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x2040219

    invoke-virtual {v3, v4, v5, v2}, Lcom/htc/album/helper/MenuManager;->gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 1028
    goto :goto_1
.end method

.method private onUICmdDeletePicker(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2085
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 2100
    const-string v0, "SceneOnlinePhotoThumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][onUICmdDeletePicker] unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    :goto_0
    return-void

    .line 2088
    :pswitch_0
    const v0, 0x7f0a0012

    invoke-virtual {p0, v1, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 2091
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 2092
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    .line 2093
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    .line 2094
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 2097
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 2085
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUICmdMultiPicker(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 2106
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 2119
    const-string v0, "SceneOnlinePhotoThumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][onUICmdMultiPicker] unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    :goto_0
    return-void

    .line 2109
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 2112
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 2113
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 2116
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 2106
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onUICmdRefresh(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2063
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 2079
    const-string v0, "SceneOnlinePhotoThumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][onUICmdRefresh] unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    :cond_0
    :goto_0
    return-void

    .line 2066
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 2069
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 2072
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 2073
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 2076
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 2063
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postPluginPickerResult()V
    .locals 10

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2172
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2176
    .local v3, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2177
    .local v0, aphoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .local v2, i:I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, size:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 2179
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 2180
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2183
    .end local v6           #size:I
    :catch_0
    move-exception v1

    .line 2185
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "SceneOnlinePhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create photo id list failed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 2190
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 2191
    .local v5, msg:Landroid/os/Message;
    const v7, 0x10300001

    iput v7, v5, Landroid/os/Message;->what:I

    .line 2192
    iput-object v3, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2193
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onUIHandlerMessage(Landroid/os/Message;)V

    .line 2195
    .end local v5           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private prepareLoadingText(I)V
    .locals 4
    .parameter "iResID"

    .prologue
    .line 2291
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2292
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 2294
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    .line 2295
    const-string v1, "SceneOnlinePhotoThumbnail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneOnlinePhotoThumbnail][prepareLoadingText] NG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    :goto_0
    return-void

    .line 2297
    :cond_1
    if-nez p1, :cond_2

    .line 2299
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    goto :goto_0

    .line 2303
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private prepareOnlinePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    .locals 2

    .prologue
    .line 1438
    const/4 v1, 0x0

    .line 1439
    .local v1, pickerParameter:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v0

    .line 1440
    .local v0, pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual {v0}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->getPickerLandingPageParameter()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v1

    .line 1441
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 1442
    return-object v1
.end method

.method private setLandingPagePickerParameters(Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 8
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    .line 1744
    const-string v7, "service_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1745
    .local v1, serviceName:Ljava/lang/String;
    const-string v7, "album_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1746
    .local v2, albumName:Ljava/lang/String;
    const-string v7, "user_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1747
    .local v3, userID:Ljava/lang/String;
    const-string v7, "album_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1748
    .local v4, albumID:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    .line 1749
    .local v5, photoID:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 1750
    .local v6, mimeType:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1752
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isVideo()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1753
    const-string v6, "video/*"

    .line 1757
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->instance()Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;

    move-result-object v0

    .line 1758
    .local v0, pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->setPickerResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, v6}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->setMimeType(Ljava/lang/String;)V

    .line 1760
    invoke-static {}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->destroyInstance()V

    .line 1761
    return-void

    .line 1755
    .end local v0           #pickerMgr:Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
    :cond_1
    const-string v6, "image/*"

    goto :goto_0
.end method

.method private showShare(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 883
    .local p1, shareBtn:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[showShare] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 886
    :cond_0
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[showShare]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 891
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareBubble(Landroid/content/Context;Lcom/htc/album/modules/ui/widget/ControlButton;)Z

    move-result v1

    .line 893
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 895
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[showShare]can\'t show share bubble"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 4

    .prologue
    .line 902
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoThumbnail][showShareDialog] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 905
    :cond_0
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "[HTCAlbum][SceneOnlinePhotoThumbnail][showShareDialog]can\'t get context"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 909
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$3;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    .line 916
    .local v1, clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    const v3, 0x7f0a00cb

    invoke-virtual {v2, v0, v3, v1}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDialog(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1530
    const-string v0, "LivePhotoAdapter"

    return-object v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-nez v0, :cond_0

    .line 1123
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareOnlinePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v0}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enablePageLoading()Z
    .locals 1

    .prologue
    .line 1926
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading(ZI)V
    .locals 3
    .parameter "bShow"
    .parameter "nResID"

    .prologue
    .line 2136
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2137
    invoke-direct {p0, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareLoadingText(I)V

    .line 2139
    :cond_0
    const-string v0, "SceneOnlinePhotoThumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][enableProgressLoading]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 2141
    return-void
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 2132
    const/4 v0, 0x1

    return v0
.end method

.method public enableRightFooter()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2260
    const/4 v0, 0x2

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 7

    .prologue
    .line 722
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, szText:Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 752
    .end local v2           #szText:Ljava/lang/String;
    .local v3, szText:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 726
    .end local v3           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "service_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, szServiceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v4, :cond_2

    .line 729
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v4, :cond_1

    .line 730
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v4}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 752
    .end local v2           #szText:Ljava/lang/String;
    .restart local v3       #szText:Ljava/lang/String;
    goto :goto_0

    .line 732
    .end local v3           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    goto :goto_1

    .line 736
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 737
    .local v0, activity:Landroid/app/Activity;
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 739
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 741
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 743
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 747
    :cond_4
    const-string v4, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][getHeaderSubtitle]: Not support services "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v2, ""

    goto :goto_1
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 696
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->getHeaderTitle()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, szText:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 715
    .end local v1           #szText:Ljava/lang/String;
    .local v2, szText:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 700
    .end local v2           #szText:Ljava/lang/String;
    .restart local v1       #szText:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 702
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v1

    .line 703
    .end local v1           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    goto :goto_0

    .line 705
    .end local v2           #szText:Ljava/lang/String;
    .restart local v1       #szText:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 706
    .local v0, nCount:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "album_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    :cond_3
    if-nez v1, :cond_4

    .line 713
    const-string v1, ""

    :cond_4
    move-object v2, v1

    .line 715
    .end local v1           #szText:Ljava/lang/String;
    .restart local v2       #szText:Ljava/lang/String;
    goto :goto_0
.end method

.method public getPageLoadingText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1915
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1916
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 1922
    :cond_0
    :goto_0
    return-object v1

    .line 1918
    :cond_1
    const/4 v1, 0x0

    .line 1919
    .local v1, strMessage:Ljava/lang/String;
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v2, v3, :cond_0

    .line 1920
    const v2, 0x7f0a0054

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProgressLoadingText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingText:Ljava/lang/String;

    return-object v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    .line 777
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    const-string v2, "SceneOnlinePhotoThumbnail"

    const-string v3, "OnActivityResult: pass to data plugin"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onUIActivityResult(IILandroid/content/Intent;)V

    .line 373
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 374
    if-eq p2, v4, :cond_2

    .line 390
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 380
    :pswitch_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 383
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0, v4, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x7f01
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1065
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onBackPressed]:"

    invoke-static {v3, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 1068
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1071
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    move v3, v4

    .line 1116
    :goto_0
    return v3

    .line 1074
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignInRequired()Z

    move-result v3

    if-ne v5, v3, :cond_2

    .line 1076
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1078
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onBackPressed] account is not available..."

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1079
    goto :goto_0

    .line 1083
    :cond_2
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1085
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    move v3, v5

    .line 1086
    goto :goto_0

    .line 1089
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1090
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_4

    move v3, v4

    .line 1091
    goto :goto_0

    .line 1092
    :cond_4
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mHasPhotoListSizeChanged:Z

    if-eq v5, v3, :cond_5

    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    if-ne v5, v3, :cond_6

    .line 1094
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1095
    .local v1, nBundle:Landroid/os/Bundle;
    const-string v3, "refresh_by_list_changed"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1096
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneOnlineFolder"

    invoke-interface {v3, v1, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 1097
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onBackPressed]: 2"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #nBundle:Landroid/os/Bundle;
    :goto_1
    move v3, v5

    .line 1116
    goto :goto_0

    .line 1102
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getSceneCount()I

    move-result v2

    .line 1103
    .local v2, nSceneCount:I
    invoke-static {}, Lcom/htc/album/Customizable/CustFeatureItem;->enableLandingPage()Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne v5, v2, :cond_7

    .line 1105
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onBackPressed]: exit 1"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1110
    :cond_7
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onBackPressed]: exit 2"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto :goto_1
.end method

.method public onBindAdapter()V
    .locals 5

    .prologue
    .line 1447
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onBindAdapter()V

    .line 1448
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1450
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v0

    .line 1451
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1453
    new-instance v2, Lcom/htc/album/helper/OnlineDeleteManager;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/htc/album/helper/OnlineDeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;)V

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 1455
    :cond_0
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2266
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2272
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2278
    const/4 v0, 0x0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1163
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 1199
    :goto_0
    return v5

    .line 1165
    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v5, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    iget v4, v5, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1166
    .local v4, position:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1168
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 1169
    .local v2, objSelected:Ljava/lang/Object;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    .line 1171
    .local v2, objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1172
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    if-eqz v1, :cond_3

    .line 1174
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v3

    .line 1175
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    const v7, 0x60a00001

    if-ne v5, v7, :cond_1

    .line 1177
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v0, v2, v5}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V

    move v5, v6

    .line 1178
    goto :goto_0

    .line 1180
    .restart local v2       #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    if-nez v3, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1, p1, v4, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onContextItemSelected(Landroid/view/MenuItem;ILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1183
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1195
    const-string v5, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onContextItemSelected] Unsupported context menu operation."

    invoke-static {v5, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_2
    move v5, v6

    .line 1199
    goto :goto_0

    .line 1186
    .restart local v2       #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :sswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemSelected(I)Z

    goto :goto_2

    .line 1189
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShareLink(Ljava/lang/Object;)V

    goto :goto_2

    .line 1192
    :sswitch_2
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local v2           #objSelected:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v0, v2, v5}, Lcom/htc/album/helper/MenuManager;->launchComments(Landroid/app/Activity;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Bundle;)V

    goto :goto_2

    .line 1183
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09007c -> :sswitch_0
        0x7f090091 -> :sswitch_1
        0x7f090093 -> :sswitch_2
    .end sparse-switch
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    const/4 v2, 0x1

    .line 833
    iget v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v1, :cond_1

    .line 835
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->isDestroyingAdapter()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 841
    :cond_2
    const-string v1, "SceneOnlinePhotoThumbnail"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][onControlButtonClick] Adapter is finishing..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 846
    const-string v1, "SceneOnlinePhotoThumbnail"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][onControlButtonClick] Share list dialog is showing..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_4
    const/4 v0, 0x0

    .line 850
    .local v0, bResult:Z
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-eq v2, v0, :cond_0

    .line 853
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getGroupId()I

    move-result v1

    if-ne v2, v1, :cond_5

    .line 855
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    goto :goto_0

    .line 859
    :cond_5
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 874
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->showShareDialog()V

    goto :goto_0

    .line 862
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    goto :goto_0

    .line 865
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_0

    .line 868
    :sswitch_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 871
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_0

    .line 859
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x6 -> :sswitch_2
        0xa -> :sswitch_3
        0x13 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 1261
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1262
    .local v0, animationBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1265
    :cond_0
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v0, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iput-object p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1134
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    goto :goto_0
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 652
    iget v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v5, :cond_0

    .line 653
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 687
    :goto_0
    return-object v2

    .line 655
    :cond_0
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    if-nez v5, :cond_2

    .line 657
    :cond_1
    const-string v5, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][onCreateFooterBar]: NG..."

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 v2, 0x0

    goto :goto_0

    .line 661
    :cond_2
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 662
    .local v0, appContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableRightFooter()Z

    move-result v5

    invoke-static {v0, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 664
    .local v2, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 666
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto :goto_0

    .line 671
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v2, v0, v8, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v4

    check-cast v4, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 674
    .local v4, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v7, "service_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 675
    .local v1, bIsFacebook:Z
    if-nez v1, :cond_4

    .line 677
    const/4 v5, 0x2

    invoke-virtual {v2, v0, v8, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 680
    :cond_4
    const/16 v5, 0xa

    invoke-virtual {v2, v0, v8, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 681
    const/16 v5, 0x11

    invoke-virtual {v2, v0, v8, v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v3

    check-cast v3, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 683
    .local v3, moreBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v5, 0x6

    const v6, 0x7f0a0132

    invoke-virtual {v3, v5, v8, v6}, Lcom/htc/album/modules/ui/widget/FooterButton;->addBubble(III)Lcom/htc/album/modules/ui/widget/BubbleButton;

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 2316
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/OnlineDeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 2317
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2318
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v0

    return-object v0
.end method

.method public onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1572
    const-string v8, "SceneOnlinePhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoThumbnail][onCreateScene]: ..."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onCreateScene()Lcom/htc/sunnyCore/widget/gridview/GridView;

    move-result-object v3

    .line 1576
    .local v3, gridview:Lcom/htc/sunnyCore/widget/gridview/GridView;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1577
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1578
    const-string v8, "SceneOnlinePhotoThumbnail"

    const-string v9, "Activity is null"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .line 1622
    .end local v3           #gridview:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :goto_0
    return-object v3

    .line 1581
    .restart local v3       #gridview:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1584
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1585
    .local v2, extraBundle:Landroid/os/Bundle;
    const/4 v5, -0x1

    .line 1586
    .local v5, nLimit:I
    if-eqz v2, :cond_1

    .line 1587
    const-string v8, "max_pick"

    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1588
    :cond_1
    if-eq v10, v5, :cond_2

    .line 1590
    iput v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mMaxPickCount:I

    .line 1591
    iput-boolean v11, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mHideMaxCount:Z

    .line 1594
    :cond_2
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemSelectedListener:Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 1595
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnItemVibrateListener:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemLongPressVibrateListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;)V

    .line 1597
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->verticalSpacing(Landroid/content/res/Configuration;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVerticalSpacing(I)V

    .line 1598
    invoke-static {v7}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->horizontalSpacing(Landroid/content/res/Configuration;)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setHorizontalSpacing(I)V

    .line 1600
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mLoadingNotifyListener:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 1605
    const/4 v6, 0x0

    .line 1606
    .local v6, nTop:I
    const/4 v4, 0x0

    .line 1607
    .local v4, nBottom:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1609
    invoke-static {v1, v12}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v6

    .line 1619
    :goto_1
    invoke-virtual {v3, v11, v6, v11, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    .line 1620
    invoke-virtual {p0, v3, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 1614
    :cond_3
    invoke-static {v1, v12}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;->getHeight(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v6, v8, -0x1

    .line 1617
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v4

    goto :goto_1
.end method

.method public onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    .locals 2

    .prologue
    .line 1643
    new-instance v1, Lcom/htc/album/Animation/animationSetGridview;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct {v1, v0}, Lcom/htc/album/Animation/animationSetGridview;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V

    return-object v1
.end method

.method public onDestroyScene()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1627
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnItemClickListener(Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;)V

    .line 1628
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mGridViewPreparator:Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ImageGetterPreparatorImpl;->setLoadingNotifyListener(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;)V

    .line 1629
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1632
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareListDialog:Landroid/app/AlertDialog;

    .line 1634
    :cond_0
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onDestroyScene()V

    .line 1635
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 2323
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 2324
    .local v0, dlg:Z
    if-ne v1, v0, :cond_0

    .line 2325
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 1407
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onEnterScene(Landroid/os/Bundle;)V

    .line 1412
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    move-result-object v1

    .line 1413
    .local v1, connectionMgr:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1414
    .local v2, sceneIntent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 1416
    const-string v3, "from_outside"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1417
    .local v0, bIsExternal:Z
    if-eqz v0, :cond_0

    .line 1419
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V

    .line 1422
    .end local v0           #bIsExternal:Z
    :cond_0
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 1423
    invoke-static {}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->destroyInstance()V

    .line 1425
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1433
    :goto_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareOnlinePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 1434
    return-void

    .line 1431
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createFooterBar(IZ)V

    goto :goto_0
.end method

.method public onErrorNoList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1857
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[HTCAlbum][SceneOnlinePhotoThumbnail][onErrorNoList]: ..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const/4 v1, 0x0

    .line 1860
    .local v1, hasListUpdate:Z
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-nez v3, :cond_0

    .line 1862
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    .line 1863
    const/4 v1, 0x1

    .line 1865
    invoke-direct {p0, v5}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableNoPhotoListPage(Z)V

    .line 1868
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1869
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 1901
    :cond_1
    :goto_0
    return-void

    .line 1871
    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1872
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z

    if-eq v5, v3, :cond_3

    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsPluginDelete:Z

    if-ne v5, v3, :cond_4

    .line 1874
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1875
    .local v2, nBundle:Landroid/os/Bundle;
    const-string v3, "refresh_by_delete_all"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1876
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const-string v4, "SceneOnlineFolder"

    invoke-interface {v3, v2, v4, v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1880
    .end local v2           #nBundle:Landroid/os/Bundle;
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1881
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v3, p0, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 1882
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1884
    if-ne v5, v1, :cond_5

    .line 1886
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mHasPhotoListSizeChanged:Z

    .line 1887
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1888
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1896
    :cond_5
    :goto_1
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    if-ne v5, v3, :cond_1

    .line 1898
    iput-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1899
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/16 v4, 0x4e28

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 1892
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    goto :goto_1
.end method

.method protected onGetNormalFooterId()I
    .locals 1

    .prologue
    .line 2308
    const/4 v0, 0x1

    return v0
.end method

.method protected onGetNormalHeaderId()I
    .locals 1

    .prologue
    .line 2312
    const/4 v0, 0x2

    return v0
.end method

.method protected onItemSelected(I)Z
    .locals 11
    .parameter "index"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1687
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onItemSelected(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 1739
    :cond_0
    :goto_0
    return v7

    .line 1689
    :cond_1
    iget-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    if-eqz v9, :cond_0

    .line 1690
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1692
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    check-cast v3, Lcom/htc/album/Animation/animationSetGridview;

    .line 1693
    .local v3, animationSet:Lcom/htc/album/Animation/animationSetGridview;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mItemClickPosition:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v3, p1, v7}, Lcom/htc/album/Animation/animationSetGridview;->setFocused(ILcom/htc/sunnyCore/view/Vector3F;)V

    .line 1695
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1696
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 1697
    .local v1, activity:Landroid/app/Activity;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v7}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isSingleItemPicker()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1699
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1700
    const-string v7, "SceneOnlinePhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoThumbnail][onItemSelected] picker mode..."

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_2
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    invoke-direct {p0, v7, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setLandingPagePickerParameters(Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    .line 1702
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 1703
    .local v2, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 1705
    .local v6, cache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v7}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1706
    .local v5, bundle:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v7}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isDoCrop()Z

    move-result v4

    .line 1707
    .local v4, bDoCrop:Z
    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_5

    .line 1709
    :cond_3
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 1710
    const-string v7, "SceneOnlinePhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoThumbnail][onItemSelected] picker mode: start to download photo"

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 1712
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;->downloadPhoto(Landroid/content/Context;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V

    .end local v2           #adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    .end local v4           #bDoCrop:Z
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v6           #cache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :goto_1
    move v7, v8

    .line 1739
    goto :goto_0

    .line 1714
    .restart local v2       #adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    .restart local v4       #bDoCrop:Z
    .restart local v5       #bundle:Landroid/os/Bundle;
    .restart local v6       #cache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_5
    if-eqz v4, :cond_8

    .line 1716
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 1717
    const-string v7, "SceneOnlinePhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoThumbnail][onItemSelected] picker mode: start to crop image"

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_6
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v7}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isWallpaperCrop()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1719
    iget-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v9}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7f04

    invoke-static {v1, v7, v9, v10, v5}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 1721
    :cond_7
    iget-object v7, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v9}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getMimeType()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x7f01

    invoke-static {v1, v7, v9, v10, v5}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 1725
    :cond_8
    sget-boolean v7, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 1726
    const-string v7, "SceneOnlinePhotoThumbnail"

    const-string v9, "[HTCAlbum][SceneOnlinePhotoThumbnail][onItemSelected] picker mode: not do crop"

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_9
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 1728
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1731
    .end local v2           #adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    .end local v4           #bDoCrop:Z
    .end local v5           #bundle:Landroid/os/Bundle;
    .end local v6           #cache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    :cond_a
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v7, :cond_c

    .line 1733
    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v0, :cond_b

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v9, p1, v7}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onThumbItemClicked(ILjava/lang/String;)Z

    .line 1734
    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    goto :goto_1

    .line 1733
    :cond_b
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1737
    :cond_c
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemClicked(I)Z

    goto :goto_1
.end method

.method public onLeaveScene()V
    .locals 1

    .prologue
    .line 1488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 1489
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onLeaveScene()V

    .line 1490
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1931
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v6, :cond_1

    .line 2059
    :cond_0
    :goto_0
    :sswitch_0
    return v8

    .line 1933
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1934
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1937
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 2055
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1940
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onErrorNoList()V

    goto :goto_0

    .line 1943
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncList(Landroid/os/Message;)V

    goto :goto_0

    .line 1946
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onScrollStateChanged(Landroid/os/Message;)V

    goto :goto_0

    .line 1949
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onSyncAlbumInfo()V

    goto :goto_0

    .line 1952
    :sswitch_5
    const v6, 0x7f0a00e7

    invoke-virtual {p0, v7, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableProgressLoading(ZI)V

    goto :goto_0

    .line 1955
    :sswitch_6
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 1958
    :sswitch_7
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->doRequestPickerList(Landroid/os/Message;)V

    goto :goto_0

    .line 1962
    :sswitch_8
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1963
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v6, v10, :cond_2

    .line 1965
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->launchUploadEditor(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1967
    :cond_2
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v6, v7, :cond_3

    .line 1969
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onDelete(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1971
    :cond_3
    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    goto :goto_0

    .line 1978
    :sswitch_9
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    goto :goto_0

    .line 1984
    :sswitch_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1985
    .local v4, nBackBmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 1987
    iput-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    .line 1988
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] Decode -"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1991
    .end local v4           #nBackBmp:Landroid/graphics/Bitmap;
    :sswitch_b
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUICmdRefresh(Landroid/os/Message;)V

    goto :goto_0

    .line 1994
    :sswitch_c
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1995
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onItemClicked(I)Z

    goto :goto_0

    .line 1998
    :sswitch_d
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUICmdDeletePicker(Landroid/os/Message;)V

    goto :goto_0

    .line 2001
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onUICmdMultiPicker(Landroid/os/Message;)V

    goto :goto_0

    .line 2004
    :sswitch_f
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onLoadingOrDecodingThumbnails(I)V

    goto/16 :goto_0

    .line 2007
    :sswitch_10
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v6, :cond_0

    .line 2009
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setLastVisibleIndex(I)V

    .line 2010
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v6, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    goto/16 :goto_0

    .line 2014
    :sswitch_11
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    goto/16 :goto_0

    .line 2017
    :sswitch_12
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto/16 :goto_0

    .line 2020
    :sswitch_13
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 2021
    invoke-virtual {p0, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto/16 :goto_0

    .line 2024
    :sswitch_14
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 2025
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v6, :cond_0

    .line 2027
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v6}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2028
    .local v2, bundle:Landroid/os/Bundle;
    if-nez v2, :cond_4

    .line 2029
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #bundle:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2030
    .restart local v2       #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v6}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, mimeType:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v6}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isDoCrop()Z

    move-result v1

    .line 2032
    .local v1, bDoCrop:Z
    if-eqz v1, :cond_7

    .line 2034
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 2035
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onMessage] picker mode: start to crop image"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    :cond_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    .line 2038
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v6}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isWallpaperCrop()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2039
    const/16 v6, 0x7f04

    invoke-static {v0, v5, v3, v6, v2}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2041
    :cond_6
    const/16 v6, 0x7f01

    invoke-static {v0, v5, v3, v6, v2}, Lcom/htc/album/helper/MenuManager;->launchCropMode(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2045
    .end local v5           #uri:Landroid/net/Uri;
    :cond_7
    sget-boolean v6, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 2046
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onMessage] picker mode: not do crop"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    :cond_8
    invoke-virtual {v0, v9}, Landroid/app/Activity;->setResult(I)V

    .line 2048
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2052
    .end local v1           #bDoCrop:Z
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #mimeType:Ljava/lang/String;
    :sswitch_15
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    goto/16 :goto_0

    .line 1937
    :sswitch_data_0
    .sparse-switch
        0x145c -> :sswitch_14
        0x145d -> :sswitch_15
        0x2730 -> :sswitch_5
        0x2731 -> :sswitch_6
        0x2761 -> :sswitch_1
        0x276a -> :sswitch_9
        0x4e42 -> :sswitch_7
        0x4e45 -> :sswitch_0
        0x4e47 -> :sswitch_10
        0x4e87 -> :sswitch_4
        0x4e88 -> :sswitch_2
        0x4ea1 -> :sswitch_8
        0x4ea4 -> :sswitch_a
        0x4f4f -> :sswitch_3
        0x5079 -> :sswitch_f
        0x10200001 -> :sswitch_b
        0x10200002 -> :sswitch_c
        0x10200006 -> :sswitch_e
        0x10200007 -> :sswitch_d
        0x10200008 -> :sswitch_13
        0x10200009 -> :sswitch_11
        0x10300002 -> :sswitch_12
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1535
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onNewAdapter(Landroid/os/Bundle;)V

    .line 1536
    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 1537
    new-instance v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 1538
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->addSceneDataChangeNotify(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDataUpdateNotify;)V

    .line 1539
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataRequest(Ljava/lang/Object;)V

    .line 1540
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const-string v5, "from_albumhost"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setInternal(Z)V

    .line 1541
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onCreate()V

    .line 1543
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v3, :cond_0

    .line 1545
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v3}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isImageOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1546
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->filterVideos(Z)V

    .line 1549
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v2

    .line 1550
    .local v2, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v3, "service_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1551
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateThumbPhotoListPlugin()Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 1554
    const-string v3, "user_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, pid:Ljava/lang/String;
    const-string v3, "SceneOnlinePhotoThumbnail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create opensense data plugin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v6}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v3, v0, v5, v1}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1557
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v3, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 1559
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginHost:Lcom/htc/opensense/plugin/TabPluginRemote;

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getTabTag()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.htc.vmm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1560
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->disableListRecycle()V

    .line 1563
    .end local v1           #pid:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v3, v5, v4, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1566
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onResume()V

    .line 1568
    return-void

    .end local v0           #dataplugin:Ljava/lang/String;
    :cond_2
    move-object v0, v4

    .line 1551
    goto :goto_0
.end method

.method public onNotifyUpdateComplete()V
    .locals 0

    .prologue
    .line 1770
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 797
    iget v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v2, :cond_1

    .line 798
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 828
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onOpenSenseControlButtonClick(I)Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 806
    const/16 v2, 0x28

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 808
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    .end local v0           #bResult:Z
    :cond_2
    :goto_1
    move v0, v1

    .line 828
    goto :goto_0

    .line 812
    .restart local v0       #bResult:Z
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 821
    :sswitch_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_1

    .line 815
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(Z)V

    goto :goto_1

    .line 818
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setCurrentPickerMode(I)V

    goto :goto_1

    .line 812
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x7f09007a -> :sswitch_2
        0x7f090092 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1513
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPause()V

    .line 1515
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 1518
    :cond_0
    return-void
.end method

.method protected onPhaseInScreenControl(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1241
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1257
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPhaseInScreenControl(I)V

    .line 1258
    return-void

    .line 1247
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v1, v0, :cond_1

    .line 1249
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1250
    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->enableNoPhotoListPage(Z)V

    goto :goto_0

    .line 1254
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method protected onPhaseOutScreenControl(I)V
    .locals 3
    .parameter "nAnimState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1227
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    .line 1237
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPhaseOutScreenControl(I)V

    .line 1238
    return-void

    .line 1233
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v2, v0, :cond_1

    .line 1234
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1235
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setEnableControlBarAnimation(Z)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 3
    .parameter "nAnimState"

    .prologue
    .line 1215
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAnimationState:I

    .line 1216
    const/4 v1, 0x0

    .line 1217
    .local v1, bResult:Z
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPrepareAnimation(I)Z

    move-result v1

    .line 1218
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 1219
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    if-eqz v0, :cond_0

    .line 1220
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setProgressVisibility(I)V

    .line 1222
    :cond_0
    return v1
.end method

.method public onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1139
    check-cast p3, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Lcom/htc/sunnyCore/widget/gridview/GridView$AdapterContextMenuInfo;->position:I

    .line 1141
    .local v2, nPos:I
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1142
    .local v1, dataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;
    if-eqz v1, :cond_1

    .line 1144
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v3

    .line 1145
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2, v4}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareContextMenu(Landroid/view/Menu;ILjava/lang/String;)Z

    move-result v4

    .line 1157
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_1
    return v4

    .line 1145
    .restart local v3       #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1148
    .end local v3           #photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v4, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1149
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1151
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x15000

    invoke-static {v4, p1, v5}, Lcom/htc/album/helper/MenuManager;->showPhotoMenuOnline(Landroid/app/Activity;Landroid/view/Menu;I)V

    .line 1157
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 780
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 782
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v0, :cond_0

    .line 783
    const/4 v0, 0x0

    .line 792
    :goto_0
    return v0

    .line 786
    :cond_0
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 789
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 792
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 31
    .parameter "menu"

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    .line 539
    .local v13, context:Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v5

    .line 540
    .local v5, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "opensense_pugin"

    invoke-virtual/range {v27 .. v28}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v27

    if-nez v27, :cond_8

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    new-instance v27, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct/range {v27 .. v27}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 547
    const/4 v9, 0x0

    .line 548
    .local v9, barSize:I
    const/4 v14, 0x0

    .local v14, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v25

    .local v25, size:I
    :goto_1
    move/from16 v0, v25

    if-ge v14, v0, :cond_3

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    add-int/lit8 v9, v9, 0x1

    .line 548
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 550
    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v27

    if-lt v9, v0, :cond_0

    const/16 v27, 0x3

    move/from16 v0, v27

    if-gt v9, v0, :cond_0

    .line 552
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v15, v0, [[I

    const/16 v27, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, -0x1

    aput v30, v28, v29

    aput-object v28, v15, v27

    const/16 v27, 0x1

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x2

    aput v30, v28, v29

    aput-object v28, v15, v27

    const/16 v27, 0x2

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    aput-object v28, v15, v27

    const/16 v27, 0x3

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_1

    aput-object v28, v15, v27

    .line 553
    .local v15, indexTable:[[I
    aget-object v11, v15, v9

    .line 555
    .local v11, btnIndexTable:[I
    const/16 v22, 0x1

    .line 556
    .local v22, nActionButtonID:I
    const/16 v23, 0x0

    .local v23, nIndex:I
    array-length v0, v11

    move/from16 v25, v0

    :goto_2
    move/from16 v0, v25

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move-object/from16 v27, v0

    aget v28, v11, v23

    invoke-virtual/range {v27 .. v28}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v10

    .line 559
    .local v10, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 562
    .local v26, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v26, :cond_4

    .line 564
    const/16 v24, 0x0

    .local v24, nSubIndex:I
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 566
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense/album/plugin/CommandBarButton;

    .line 567
    .local v12, button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual {v12}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v27

    move/from16 v3, v28

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 564
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 572
    .end local v12           #button:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v24           #nSubIndex:I
    :cond_4
    const/16 v27, 0x13

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    .line 574
    const/16 v27, 0x0

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v28

    const/16 v29, 0x0

    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v16

    .line 575
    .local v16, item:Landroid/view/MenuItem;
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 576
    .local v7, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7

    .line 577
    new-instance v27, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 583
    :cond_5
    :goto_4
    const/16 v27, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 556
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v16           #item:Landroid/view/MenuItem;
    :cond_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 579
    .restart local v7       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v16       #item:Landroid/view/MenuItem;
    :cond_7
    invoke-virtual {v10}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 580
    .local v8, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 581
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_4

    .line 588
    .end local v7           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v8           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #barSize:I
    .end local v10           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v11           #btnIndexTable:[I
    .end local v14           #i:I
    .end local v15           #indexTable:[[I
    .end local v16           #item:Landroid/view/MenuItem;
    .end local v22           #nActionButtonID:I
    .end local v23           #nIndex:I
    .end local v25           #size:I
    .end local v26           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_8
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    const-string v28, "flag_genuine"

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    if-nez v27, :cond_a

    .line 593
    :cond_9
    const/16 v27, 0x1

    const v28, 0x7f090092

    const/16 v29, 0x0

    const v30, 0x7f0a0132

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 594
    .local v19, itemRefresh:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 596
    .end local v19           #itemRefresh:Landroid/view/MenuItem;
    :cond_a
    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    move-object/from16 v28, v0

    const-string v29, "my_live_album"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 601
    const/16 v27, 0x1

    const v28, 0x7f090092

    const/16 v29, 0x0

    const v30, 0x7f0a0132

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 602
    .restart local v19       #itemRefresh:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 607
    const/16 v27, 0x0

    const/16 v28, 0x28

    const/16 v29, 0x0

    const v30, 0x7f0a0130

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v21

    .line 608
    .local v21, menuShare:Landroid/view/SubMenu;
    const/16 v27, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 609
    .local v20, itemShare:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 610
    const/16 v27, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 613
    .local v6, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v27, v0

    const/16 v28, 0x28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z

    .line 618
    const/16 v27, 0x0

    const v28, 0x7f09007a

    const/16 v29, 0x0

    const v30, 0x7f0a0131

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    .line 619
    .local v17, itemDelete:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 620
    const/16 v27, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 625
    const/16 v27, 0x0

    const/16 v28, 0xa

    const/16 v29, 0x0

    const v30, 0x7f0a0140

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    .line 626
    .local v18, itemEdit:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 627
    const/16 v27, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 634
    .end local v6           #activity:Landroid/app/Activity;
    .end local v17           #itemDelete:Landroid/view/MenuItem;
    .end local v18           #itemEdit:Landroid/view/MenuItem;
    .end local v19           #itemRefresh:Landroid/view/MenuItem;
    .end local v20           #itemShare:Landroid/view/MenuItem;
    .end local v21           #menuShare:Landroid/view/SubMenu;
    :cond_b
    const/16 v27, 0x1

    const v28, 0x7f090092

    const/16 v29, 0x0

    const v30, 0x7f0a0132

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v19

    .line 635
    .restart local v19       #itemRefresh:Landroid/view/MenuItem;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 640
    const/16 v27, 0x0

    const/16 v28, 0x28

    const/16 v29, 0x0

    const v30, 0x7f0a0130

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v21

    .line 641
    .restart local v21       #menuShare:Landroid/view/SubMenu;
    const/16 v27, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 642
    .restart local v20       #itemShare:Landroid/view/MenuItem;
    invoke-static {v13}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 643
    const/16 v27, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 646
    .restart local v6       #activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v27, v0

    const/16 v28, 0x28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v2}, Lcom/htc/album/helper/ShareMenuManager;->createSocialShareDropList(Landroid/content/Context;Landroid/view/SubMenu;I)Z

    goto/16 :goto_0

    .line 552
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 22
    .parameter "footer"

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    invoke-super/range {p0 .. p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 427
    .local v3, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "opensense_pugin"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getPickerMode()I

    move-result v2

    if-nez v2, :cond_c

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v2, :cond_0

    .line 431
    new-instance v2, Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-direct {v2}, Lcom/htc/opensense/album/plugin/CommandBar;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;->onPrepareCommandBarButton(Lcom/htc/opensense/album/plugin/CommandBar;I)Z

    .line 434
    const/4 v12, 0x0

    .line 435
    .local v12, barSize:I
    const/16 v17, 0x0

    .local v17, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBar;->getSize()I

    move-result v20

    .local v20, size:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    add-int/lit8 v12, v12, 0x1

    .line 435
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 437
    :cond_4
    const/4 v2, 0x1

    if-lt v12, v2, :cond_5

    const/4 v2, 0x3

    if-le v12, v2, :cond_8

    .line 439
    :cond_5
    const-string v2, "SceneOnlinePhotoThumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onRefreshFooterBar] Plug-in button size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    .line 441
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    .line 448
    :goto_2
    invoke-super/range {p0 .. p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onHandleActionBarBarLayoutChange()V

    .line 449
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    if-eqz v2, :cond_0

    .line 451
    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    aput-object v4, v18, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    aput-object v4, v18, v2

    const/4 v2, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    aput-object v4, v18, v2

    const/4 v2, 0x3

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    aput-object v4, v18, v2

    .line 452
    .local v18, indexTable:[[I
    aget-object v14, v18, v12

    .line 455
    .local v14, btnIndexTable:[I
    const/4 v10, 0x0

    .line 457
    .local v10, bHasPluginShareButton:Z
    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOpenSenseCommandBar:Lcom/htc/opensense/album/plugin/CommandBar;

    aget v4, v14, v17

    invoke-virtual {v2, v4}, Lcom/htc/opensense/album/plugin/CommandBar;->getButton(I)Lcom/htc/opensense/album/plugin/CommandBarButton;

    move-result-object v13

    .line 460
    .local v13, btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    const/4 v2, 0x0

    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addEmptyButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v16

    check-cast v16, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 462
    .local v16, footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->setTextString(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 464
    .local v8, bBtnIconBitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_9

    .line 465
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    :cond_6
    :goto_4
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getSubItemList()Ljava/util/List;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 472
    .local v21, sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    if-eqz v21, :cond_7

    .line 474
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getId()I

    move-result v15

    .line 476
    .local v15, buttonID:I
    const/high16 v2, 0x60a0

    if-ne v15, v2, :cond_a

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/ShareMenuManager;->setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/modules/ui/widget/FooterButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/ShareMenuManager;->setSharePluginButtonID(I)V

    .line 457
    .end local v15           #buttonID:I
    :cond_7
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 445
    .end local v8           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v10           #bHasPluginShareButton:Z
    .end local v13           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v14           #btnIndexTable:[I
    .end local v16           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v18           #indexTable:[[I
    .end local v21           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFooterbarVisible:Z

    .line 446
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 467
    .restart local v8       #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #bHasPluginShareButton:Z
    .restart local v13       #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .restart local v14       #btnIndexTable:[I
    .restart local v16       #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .restart local v18       #indexTable:[[I
    :cond_9
    invoke-virtual {v13}, Lcom/htc/opensense/album/plugin/CommandBarButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 468
    .local v9, bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_6

    .line 469
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/htc/album/modules/ui/widget/FooterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 485
    .end local v9           #bBtnIconDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v15       #buttonID:I
    .restart local v21       #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x4

    if-le v2, v4, :cond_b

    if-nez v10, :cond_b

    .line 489
    const/4 v10, 0x1

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v2, v4, v0}, Lcom/htc/album/helper/ShareMenuManager;->createSocialPluginShareList(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/modules/ui/widget/FooterButton;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/htc/album/helper/ShareMenuManager;->setSharePluginButtonID(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/htc/album/helper/ShareMenuManager;->setPluginFooterButton(Lcom/htc/album/modules/ui/widget/FooterButton;)V

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;->enableShareDataPlugin(Z)V

    goto :goto_5

    .line 497
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lcom/htc/album/helper/ShareMenuManager;->doCreatePluginBubble(Lcom/htc/album/modules/ui/widget/FooterButton;Ljava/util/ArrayList;)Z

    goto :goto_5

    .line 501
    .end local v8           #bBtnIconBitmap:Landroid/graphics/Bitmap;
    .end local v10           #bHasPluginShareButton:Z
    .end local v12           #barSize:I
    .end local v13           #btn:Lcom/htc/opensense/album/plugin/CommandBarButton;
    .end local v14           #btnIndexTable:[I
    .end local v15           #buttonID:I
    .end local v16           #footerBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    .end local v17           #i:I
    .end local v18           #indexTable:[[I
    .end local v20           #size:I
    .end local v21           #sublist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/plugin/CommandBarButton;>;"
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-eq v2, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v4, "flag_genuine"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 503
    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    const v7, 0x7f0a0132

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 505
    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "my_live_album"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v2, v4, :cond_10

    .line 507
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v19

    check-cast v19, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 511
    .local v19, shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    const-string v5, "service_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 512
    .local v11, bIsFacebook:Z
    if-nez v11, :cond_f

    .line 514
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 517
    :cond_f
    const/4 v2, 0x0

    const/16 v4, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 519
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    const v7, 0x7f0a0132

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 523
    .end local v11           #bIsFacebook:Z
    .end local v19           #shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    :cond_10
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v19

    check-cast v19, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 524
    .restart local v19       #shareBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Updates_Dark_Rest(Landroid/content/Context;)I

    move-result v6

    const v7, 0x7f0a0132

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    goto/16 :goto_0

    .line 451
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1493
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onResume()V

    .line 1495
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mPluginConnection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    invoke-interface {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignInRequired()Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1497
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->checkAccountIsAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1499
    const-string v1, "SceneOnlinePhotoThumbnail"

    const-string v2, "[HTCAlbum][SceneOnlinePhotoThumbnail][onResume] account is not available..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onBackPressed()Z

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v1}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1507
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getSelectedItemPosition()I

    move-result v0

    .line 1508
    .local v0, position:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyGridItemStatus(I)V

    goto :goto_0
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1459
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;->cancel(Z)Z

    .line 1460
    :cond_0
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncPickTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncCreatePickPhotos;

    .line 1462
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->cancel(Z)Z

    .line 1463
    :cond_1
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 1465
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVisibility(Z)V

    .line 1466
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSendToBackground(Landroid/os/Bundle;)V

    .line 1468
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->freeInvisibleResource()V

    .line 1471
    :cond_2
    const/16 v0, 0x4e47

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRemoveMessage(I)V

    .line 1472
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 11
    .parameter "bundle"

    .prologue
    .line 1313
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSendToForeground(Landroid/os/Bundle;)V

    .line 1314
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsFirstClick:Z

    .line 1315
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1317
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setUIHandler(Landroid/os/Handler;)V

    .line 1318
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-nez v7, :cond_0

    .line 1320
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    move-result-object v6

    .line 1321
    .local v6, snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    const-string v7, "service_name"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 1323
    .local v5, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateThumbPhotoListPlugin()Ljava/lang/String;

    move-result-object v1

    .line 1324
    .local v1, dataplugin:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 1326
    const-string v7, "user_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1327
    .local v4, pid:Ljava/lang/String;
    const-string v7, "SceneOnlinePhotoThumbnail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Create opensense data plugin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/htc/opensense/plugin/TabPluginRemote;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v7, v1, v8, v4}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createThumbPhotoListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    .line 1329
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1332
    :goto_1
    iget-object v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    if-eqz v7, :cond_0

    .line 1344
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v4           #pid:Ljava/lang/String;
    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v6           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_0
    const/4 v8, 0x1

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDataPlugin:Lcom/htc/opensense/album/plugin/PhotoThumbListPluginBase;

    invoke-virtual {v7, v9}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v7

    if-ne v8, v7, :cond_1

    .line 1346
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->notifyUpdateDataPlugin()V

    .line 1349
    :cond_1
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setVisibility(Z)V

    .line 1352
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1356
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    .line 1358
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v7}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mImageDownloadHandler:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$GridImageDownloadedHandler;

    invoke-virtual {v7, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 1359
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->onVerifyImageStatus(I)V

    .line 1361
    const/4 v3, 0x0

    .line 1362
    .local v3, nIsListChanged:Z
    if-eqz p1, :cond_2

    .line 1364
    const/4 v7, 0x1

    const-string v8, "refresh_by_delete"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-ne v7, v3, :cond_7

    .line 1366
    const-string v7, "refresh_by_delete"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1367
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1368
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mHasPhotoListSizeChanged:Z

    .line 1369
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v7}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    .line 1370
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    .line 1379
    :cond_2
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1390
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1391
    .local v0, activity:Landroid/app/Activity;
    instance-of v7, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    if-eqz v7, :cond_4

    move-object v2, v0

    .line 1393
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;

    .line 1394
    .local v2, msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->isNetworkConnectionActive(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1395
    const/16 v7, 0x272c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v2, v7, v8, v9}, Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;->onPostMessage(ILjava/lang/Object;I)V

    .line 1397
    .end local v2           #msgHost:Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
    :cond_4
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v7, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v8, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getFirstVisiblePosition()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->setFirstVisibleIndex(I)V

    .line 1398
    const/16 v7, 0x4e47

    invoke-virtual {p0, v7}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRemoveMessage(I)V

    .line 1399
    const/16 v7, 0x4e47

    const/4 v8, 0x0

    const/16 v9, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    .line 1400
    return-void

    .line 1323
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #nIsListChanged:Z
    .restart local v5       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .restart local v6       #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1331
    .restart local v1       #dataplugin:Ljava/lang/String;
    .restart local v4       #pid:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->createControlBar(II)V

    goto/16 :goto_1

    .line 1372
    .end local v1           #dataplugin:Ljava/lang/String;
    .end local v4           #pid:Ljava/lang/String;
    .end local v5           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    .end local v6           #snMgr:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .restart local v3       #nIsListChanged:Z
    :cond_7
    const/4 v7, 0x1

    const-string v8, "refresh_by_delete_all"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-ne v7, v8, :cond_2

    .line 1374
    const-string v7, "refresh_by_delete_all"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1375
    const/16 v7, 0x2761

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_2

    .line 1385
    :cond_8
    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mUpdateHeaderThumbnail:Z

    if-eq v7, v8, :cond_9

    const/4 v7, 0x1

    if-ne v7, v3, :cond_3

    .line 1386
    :cond_9
    const/16 v7, 0x4e45

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_3
.end method

.method public onShareAlbumLink(ILjava/lang/Object;)V
    .locals 6
    .parameter "selection"
    .parameter "object"

    .prologue
    .line 1035
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1037
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .line 1038
    .local v2, szUrl:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1039
    .local v1, szLink:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1041
    .local v3, szWebLink:Ljava/lang/String;
    instance-of v4, p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v4, :cond_3

    .line 1043
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShareLink]: WrapperPhoto"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p2

    .line 1044
    check-cast v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 1045
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1046
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move-object v3, v2

    .line 1054
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareManager:Lcom/htc/album/helper/ShareMenuManager;

    invoke-virtual {v4, v0, p1, v3}, Lcom/htc/album/helper/ShareMenuManager;->onSocialShareClick(Landroid/content/Context;ILjava/lang/String;)V

    .line 1055
    return-void

    :cond_2
    move-object v3, v1

    .line 1046
    goto :goto_0

    .line 1049
    .restart local p2
    :cond_3
    instance-of v4, p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v4, :cond_1

    .line 1051
    const-string v4, "SceneOnlinePhotoThumbnail"

    const-string v5, "[HTCAlbum][SceneOnlinePhotoThumbnail][onShareLink]: WrapperAlbum"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    check-cast p2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local p2
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getWebLink()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1522
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onStop()V

    .line 1523
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->onDismissAllFragmentDialog()V

    .line 1525
    :cond_0
    return-void
.end method

.method public onSyncAlbumInfo()V
    .locals 1

    .prologue
    .line 1853
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mShareSelection:I

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onShare(I)V

    .line 1854
    return-void
.end method

.method public onSyncList(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1773
    const/4 v1, 0x0

    .line 1774
    .local v1, hasListUpdate:Z
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    if-ne v9, v6, :cond_4

    .line 1776
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mNoPhotoListAndCache:Z

    .line 1777
    const/4 v1, 0x1

    .line 1787
    :cond_0
    :goto_0
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onSyncList]:..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNewAdapter:Z

    if-ne v9, v6, :cond_5

    .line 1790
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v6, :cond_1

    .line 1791
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-interface {v6, p0, v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->setNewAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 1792
    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1829
    :goto_1
    if-ne v9, v1, :cond_2

    .line 1831
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mHasPhotoListSizeChanged:Z

    .line 1832
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1833
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v6

    if-ne v9, v6, :cond_8

    .line 1843
    :cond_2
    :goto_2
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    if-ne v9, v6, :cond_3

    .line 1845
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsNoListAndFirstUpdate:Z

    .line 1846
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mHasPhotoListSizeChanged:Z

    .line 1848
    :cond_3
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnablePageLoading(Z)V

    .line 1849
    const/16 v6, 0x3e8

    invoke-virtual {p0, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onTriggerSynchronizeScreenRotate(I)V

    .line 1850
    return-void

    .line 1779
    :cond_4
    if-eqz p1, :cond_0

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v9, v6, :cond_0

    .line 1781
    const/4 v1, 0x1

    goto :goto_0

    .line 1796
    :cond_5
    invoke-virtual {p0, v10}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onEnableProgressLoading(Z)V

    .line 1797
    iget-boolean v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    if-ne v9, v6, :cond_7

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    iget v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    if-ne v6, v9, :cond_7

    .line 1799
    const-string v6, "SceneOnlinePhotoThumbnail"

    const-string v7, "[HTCAlbum][SceneOnlinePhotoThumbnail][onSyncList]: prepare delete animation..."

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [I

    .line 1801
    .local v0, delete:[I
    const/4 v4, 0x0

    .line 1802
    .local v4, idx:I
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1803
    .local v2, i:Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #idx:I
    .local v5, idx:I
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v4

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    goto :goto_3

    .line 1806
    .end local v2           #i:Ljava/lang/Integer;
    :cond_6
    iput-boolean v9, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mIsDeleteAnimation:Z

    .line 1808
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    const/4 v7, 0x0

    new-instance v8, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;

    invoke-direct {v8, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$5;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    invoke-virtual {v6, v0, v7, v8}, Lcom/htc/sunnyCore/widget/gridview/GridView;->startDataSetChangeAnimation([I[ILcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 1826
    .end local v0           #delete:[I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #idx:I
    :goto_4
    iput-boolean v10, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mTriggerDeleteAnim:Z

    goto/16 :goto_1

    .line 1824
    :cond_7
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v6}, Lcom/htc/sunnyCore/widget/gridview/GridView;->notifyMediaDataChange()V

    goto :goto_4

    .line 1839
    :cond_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->invalidateControlBars()V

    goto :goto_2
.end method

.method public onUnbindAdapter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1477
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setMediaList(Lcom/htc/sunnyCore/IMediaList;)V

    .line 1478
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setOnScrollListener(Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;)V

    .line 1479
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->cancelDeleteMedias()V

    .line 1481
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->release()V

    .line 1482
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mDeleteMgr:Lcom/htc/album/helper/OnlineDeleteManager;

    .line 1484
    :cond_0
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUnbindAdapter()V

    .line 1485
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 766
    .local v0, szText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    .line 768
    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, szText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    .line 760
    return-object v0
.end method

.method protected onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "gridview"
    .parameter "newConfig"

    .prologue
    .line 1286
    invoke-super {p0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onUpdateMainViewLayout(Lcom/htc/sunnyCore/widget/gridview/GridView;Landroid/content/res/Configuration;)V

    .line 1288
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v2}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1291
    :cond_1
    const/4 v0, 0x0

    .line 1293
    .local v0, mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    if-nez p1, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .end local v0           #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridView;

    .line 1298
    .restart local v0       #mainView:Lcom/htc/sunnyCore/widget/gridview/GridView;
    :goto_1
    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->requestFooterBar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1306
    const/4 v1, 0x0

    .line 1307
    .local v1, paddingBottom:I
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->setPadding(IIII)V

    goto :goto_0

    .line 1296
    .end local v1           #paddingBottom:I
    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public requestDecodeHeaderPhoto()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 394
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 410
    :goto_0
    return v3

    .line 396
    :cond_1
    const/4 v0, 0x0

    .line 397
    .local v0, nContext:Landroid/content/Context;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    move v3, v4

    goto :goto_0

    .line 399
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v1

    .line 400
    .local v1, nPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v1, :cond_3

    move v3, v4

    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, nPhotoPath:Ljava/lang/String;
    if-nez v2, :cond_4

    move v3, v4

    goto :goto_0

    .line 405
    :cond_4
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v6, "[HTCAlbum][SceneOnlinePhotoThumbnail][requestDecodeHeaderPhoto] Decode +"

    invoke-static {v3, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-virtual {v3, v4}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->cancel(Z)Z

    .line 407
    :cond_5
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    invoke-direct {v3, p0, v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    .line 408
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAsyncDecodeTask:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;

    new-array v6, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$AsyncDecodePhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v3, v5

    .line 410
    goto :goto_0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    if-nez v0, :cond_0

    .line 1279
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->prepareOnlinePickerParameters()Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    .line 1280
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mOnlinePickerParameters:Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;

    invoke-interface {v0}, Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;->isPickerMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    const-string v0, "SceneOnlinePhotoThumbnail"

    return-object v0
.end method

.method public setCurrentPickerMode(I)V
    .locals 1
    .parameter "pickerMode"

    .prologue
    .line 2282
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 2283
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I

    .line 2284
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 2285
    return-void
.end method
