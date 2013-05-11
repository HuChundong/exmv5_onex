.class public Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.super Lcom/htc/album/TabPluginDevice/CollectionBaseScene;
.source "SceneLocalPhotoBurstShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$RotateListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;,
        Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/TabPluginDevice/CollectionBaseScene",
        "<",
        "Lcom/htc/sunny2/fullfilmview/FullFilmView;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTINUOUS_SHOT_ASK_BESTSHOT_KEY:Ljava/lang/String; = "continuous_shot_ask_bestshot_setting"

.field public static final CONTINUOUS_SHOT_ASK_EXPAND_KEY:Ljava/lang/String; = "continuous_shot_ask_expand_setting"

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I = 0x0

.field private static final CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I = null

.field public static final CONTINUOUS_SHOT_ITEM_VISIBLE_RANGE:I = 0x64

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_ITEM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_PADDING:I = 0x0

.field private static final CONTINUOUS_SHOT_PADDING_ARRAY:[I = null

#the value of this static final field might be set in the static constructor
.field public static final CONTINUOUS_SHOT_VERTICAL_MARGIN:I = 0x0

.field private static final CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I = null

.field private static final DIMENSION_GRID:[I = null

.field private static final DIMENSION_INDICATOR_FONT:[F = null

.field private static final DRM_FILENAME_BAR_FULLFILM_VIEW:I = 0x3

.field private static final FOOTER_BAR_LOCAL_FULLFILM_VIEW:I = 0x1

.field private static final HEADER_BAR_LOCAL_FULLFILM_VIEW:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "SceneLocalPhotoBurstShot"

.field protected static final SW_BUTTON_OFF:I = 0x1

.field protected static final SW_BUTTON_ON:I = 0x0

.field private static final TIMER_PROGRESS_LOADING:I = 0x258

.field private static final TIMER_REQUEST_DECODE_EXTREME_QUALITY:I

.field private static mIsExpanding:Z

.field private static mIsSettingBestShot:Z

.field public static mOldBestShot:J


# instance fields
.field private final DEBUG:Z

.field private mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

.field private mContinuousIndicator:Landroid/view/ViewGroup;

.field private mCoverImageFilePath:Ljava/lang/String;

.field private mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

.field private mDoItemClickWhenBindAdapter:Z

.field private mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

.field private mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

.field private mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter",
            "<",
            "Lcom/htc/sunnyCore/IMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalListView:Lcom/htc/widget/HBouncingListView;

.field private mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

.field private mIsBindAdapter:Z

.field private mIsComeFromCamera:Z

.field private mIsDirectClose:Z

.field private mIsShowThumbListView:Z

.field private final mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

.field protected mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

.field private mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

.field private mOrientation:I

.field private mOrientationHasChanged:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field protected mSWButtonState:I

.field private mSelectedItem:I

.field private mSelectedItemColor:Landroid/graphics/drawable/Drawable;

.field protected mShareIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I

    .line 146
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I

    .line 147
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING_ARRAY:[I

    .line 148
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    .line 149
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_INDICATOR_FONT:[F

    .line 151
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN_ARRAY:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    .line 152
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN_ARRAY:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    .line 153
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING_ARRAY:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    .line 154
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sget v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_ITEM_WIDTH:I

    .line 159
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    .line 169
    sput-boolean v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    .line 170
    sput-boolean v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    return-void

    .line 145
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 146
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 147
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 148
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    .line 149
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xd0t 0x41t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x42t
        0x0t 0x0t 0x50t 0x42t
        0x0t 0x0t 0xd0t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;-><init>()V

    .line 113
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    .line 115
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 117
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    .line 118
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    .line 119
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 120
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 121
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    .line 122
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mCoverImageFilePath:Ljava/lang/String;

    .line 124
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    .line 126
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 127
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 128
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 129
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    .line 130
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    .line 131
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 132
    iput v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSWButtonState:I

    .line 133
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 135
    new-instance v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-direct {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    .line 136
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    .line 160
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 162
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 164
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareIntent:Landroid/content/Intent;

    .line 166
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    .line 172
    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 2789
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;

    invoke-direct {v0, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$7;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    .line 107
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->putAskBestShot(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doSimulateScreenTouched(IZ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isDRMPressed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->putAskExpand(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setPosition(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setSelectedItemToVisible()V

    return-void
.end method

.method static synthetic access$5200()[I
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    return v0
.end method

.method static synthetic access$5702(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    return-void
.end method

.method static synthetic access$6102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-boolean p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    return p0
.end method

.method static synthetic access$6202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    sput-boolean p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    return p0
.end method

.method static synthetic access$700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunnyCore/view/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method private doAutoShowBurst()V
    .locals 3

    .prologue
    const/16 v2, 0x4e48

    .line 2469
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doAutoShowBurst] +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 2471
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2473
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doAutoShowBurst] do"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const/4 v0, 0x0

    const/16 v1, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 2476
    :cond_0
    return-void
.end method

.method private doBestShot(Z)V
    .locals 8
    .parameter "bDeleteRest"

    .prologue
    const/4 v7, 0x1

    .line 1210
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 1211
    .local v6, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v6, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    invoke-interface {v6}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v1

    if-ne v7, v1, :cond_2

    if-eqz p1, :cond_0

    .line 1220
    :cond_2
    new-instance v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;I)V

    .line 1221
    .local v0, setBest:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;
    new-array v1, v7, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$SetBestWorker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private doExpand()V
    .locals 3

    .prologue
    .line 2168
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][doExpand]+"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 2171
    :cond_0
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][doExpand] mSceneControl or mAdapter is null "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_0
    return-void

    .line 2174
    :cond_1
    new-instance v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-direct {v1, v0, v2, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;-><init>(Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    .line 2175
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private doSimulateScreenTouched(IZ)V
    .locals 17
    .parameter "position"
    .parameter "isFromOnPrepareOptionsMenu"

    .prologue
    .line 1688
    const/4 v2, 0x0

    .line 1689
    .local v2, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v2           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v2       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v2, :cond_1

    .line 1691
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]adapter is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1695
    :cond_1
    const/4 v10, 0x0

    .line 1696
    .local v10, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v10

    .end local v10           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v10, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v10       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v10, :cond_2

    .line 1698
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]image is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1702
    :cond_2
    const/4 v1, 0x0

    .line 1703
    .local v1, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1705
    const-string v14, "SceneLocalPhotoBurstShot"

    const-string v15, "[HTCAlbum][SceneLocalPhotoBurstShot][onItemClick]activity is null"

    invoke-static {v14, v15}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1709
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v14

    instance-of v5, v14, Lcom/htc/album/addons/SingleCollection;

    .line 1711
    .local v5, bIsShowSingle:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isControlBarShowing()Z

    move-result v3

    .line 1713
    .local v3, bControlBarShowing:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v14

    shr-int/lit8 v12, v14, 0x1

    .line 1714
    .local v12, posX:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v14

    shr-int/lit8 v13, v14, 0x1

    .line 1716
    .local v13, posY:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v14, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v14}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v14

    iget-object v11, v14, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1717
    .local v11, me:Landroid/view/MotionEvent;
    if-eqz v11, :cond_4

    .line 1719
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 1720
    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 1723
    :cond_4
    const/4 v4, 0x0

    .line 1724
    .local v4, bIndicatorClicked:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-eqz v14, :cond_6

    .line 1726
    const/4 v4, 0x1

    .line 1737
    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1738
    .local v6, bundle:Landroid/os/Bundle;
    const-string v14, "folder_type"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v14, "key_folder_name"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getDisplayName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    const-string v14, "key_bucket_id"

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/album/modules/collection/Collection;->getBucketId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    const-string v14, "position"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    const/4 v8, 0x0

    .line 1744
    .local v8, goPlay:Z
    if-eqz v4, :cond_5

    if-eqz v10, :cond_5

    .line 1746
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1748
    invoke-static {v1, v10, v6}, Lcom/htc/album/helper/MenuManager;->launchVideo(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Landroid/os/Bundle;)V

    .line 1749
    const/4 v8, 0x1

    .line 1771
    :cond_5
    :goto_2
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-nez v14, :cond_0

    .line 1773
    const/16 v14, 0x4e3c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1775
    if-nez p2, :cond_0

    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->toggleControlBarsVisibility()V

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v9

    .line 1781
    .local v9, h:Landroid/os/Handler;
    const/16 v14, 0x4e49

    invoke-virtual {v9, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1782
    const/16 v15, 0x4e49

    if-nez v3, :cond_a

    const/4 v14, 0x1

    :goto_3
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v15, v14, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1728
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #goPlay:Z
    .end local v9           #h:Landroid/os/Handler;
    :cond_6
    if-eqz p2, :cond_7

    .line 1730
    const/4 v4, 0x0

    goto :goto_1

    .line 1734
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isHitIndicator(II)Z

    move-result v4

    goto :goto_1

    .line 1751
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v8       #goPlay:Z
    :cond_8
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isGif()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1753
    const/4 v7, -0x1

    .line 1754
    .local v7, count:I
    invoke-interface {v10}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v10

    .line 1756
    check-cast v14, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v14}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getFrameCount()I

    move-result v7

    .line 1763
    :goto_4
    const/4 v14, 0x1

    if-le v7, v14, :cond_5

    .line 1765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v14, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v14

    invoke-static {v1, v10, v14, v6}, Lcom/htc/album/helper/MenuManager;->launchGif(Landroid/app/Activity;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/ImageManager$IImageList;Landroid/os/Bundle;)V

    .line 1766
    const/4 v8, 0x1

    goto :goto_2

    .line 1760
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v14}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/htc/opensense2/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)I

    move-result v7

    goto :goto_4

    .line 1782
    .end local v7           #count:I
    .restart local v9       #h:Landroid/os/Handler;
    :cond_a
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private getAskBestShot(Z)Z
    .locals 4
    .parameter "bDefault"

    .prologue
    .line 1112
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskBestShot]+"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "continuous_shot_ask_bestshot_setting"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1114
    .local v0, bAsk:Z
    const-string v1, "SceneLocalPhotoBurstShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskBestShot] default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    return v0
.end method

.method private getAskExpand(Z)Z
    .locals 4
    .parameter "bDefault"

    .prologue
    .line 2180
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskExpand]+"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "continuous_shot_ask_expand_setting"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2182
    .local v0, bAsk:Z
    const-string v1, "SceneLocalPhotoBurstShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][getAskExpand] default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    return v0
.end method

.method private isCurrentItemCanShow3D()Z
    .locals 6

    .prologue
    .line 1922
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1923
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1924
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_3

    .line 1926
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/IMediaList;

    .line 1927
    .local v2, mediaList:Lcom/htc/sunnyCore/IMediaList;
    if-eqz v2, :cond_2

    .line 1929
    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1930
    .local v1, data:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_0

    .line 1932
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->is3D()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1934
    const/4 v4, 0x1

    .line 1951
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :goto_0
    return v4

    .line 1939
    .restart local v1       #data:Lcom/htc/sunnyCore/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]data is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1944
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1949
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemCanShow3D]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCurrentItemVideo()Z
    .locals 6

    .prologue
    .line 1956
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    .line 1957
    .local v3, nIndex:I
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 1958
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-eqz v0, :cond_3

    .line 1960
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/htc/sunnyCore/IMediaList;

    .line 1961
    .local v2, mediaList:Lcom/htc/sunnyCore/IMediaList;
    if-eqz v2, :cond_2

    .line 1963
    invoke-interface {v2, v3}, Lcom/htc/sunnyCore/IMediaList;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v1

    .line 1964
    .local v1, data:Lcom/htc/sunnyCore/IMediaData;
    if-eqz v1, :cond_0

    .line 1966
    instance-of v4, v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1968
    const/4 v4, 0x1

    .line 1985
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :goto_0
    return v4

    .line 1973
    .restart local v1       #data:Lcom/htc/sunnyCore/IMediaData;
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_0
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]data is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    .end local v1           #data:Lcom/htc/sunnyCore/IMediaData;
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1978
    .restart local v2       #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_2
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]mediaList is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1983
    .end local v2           #mediaList:Lcom/htc/sunnyCore/IMediaList;
    :cond_3
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][isCurrentItemVideo]mAdapter is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isDRMPressed(I)Z
    .locals 8
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1832
    const/4 v0, 0x0

    .line 1833
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .restart local v0       #adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 1835
    const-string v6, "SceneLocalPhotoBurstShot"

    const-string v7, "[HTCAlbum][SceneLocalPhotoBurstShot][doSimulateScreenPressed]adapter is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    :cond_0
    :goto_0
    return v1

    .line 1839
    :cond_1
    const/4 v2, 0x0

    .line 1840
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v6, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v6, p1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v2, :cond_2

    .line 1842
    const-string v6, "SceneLocalPhotoBurstShot"

    const-string v7, "[HTCAlbum][SceneLocalPhotoBurstShot][doSimulateScreenPressed]image is null"

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1846
    :cond_2
    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1849
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v6

    shr-int/lit8 v4, v6, 0x1

    .line 1850
    .local v4, posX:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1852
    .local v5, posY:I
    iget-object v6, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v6, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v6

    iget-object v3, v6, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1853
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_3

    .line 1855
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 1856
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 1859
    :cond_3
    const/4 v1, 0x0

    .line 1860
    .local v1, bIndicatorPressed:Z
    iget-boolean v6, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    if-eqz v6, :cond_4

    .line 1862
    const/4 v1, 0x1

    goto :goto_0

    .line 1866
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isHitIndicator(II)Z

    move-result v1

    goto :goto_0
.end method

.method private isHitIndicator(II)Z
    .locals 22
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getWidth()I

    move-result v19

    div-int/lit8 v18, v19, 0x5

    .line 1882
    .local v18, wSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getHeight()I

    move-result v19

    div-int/lit8 v7, v19, 0x5

    .line 1883
    .local v7, hSection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1884
    .local v17, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v19 .. v19}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getPosition()Lcom/htc/sunnyCore/view/Vector3F;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v13, v0

    .line 1886
    .local v13, left:I
    sub-int v19, p1, v13

    mul-int/lit8 v20, v18, 0x2

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    const/4 v10, 0x1

    .line 1887
    .local v10, hitX:Z
    :goto_0
    sub-int v19, p2, v17

    mul-int/lit8 v20, v7, 0x2

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    if-ge v0, v7, :cond_4

    const/4 v11, 0x1

    .line 1889
    .local v11, hitY:Z
    :goto_1
    const/4 v12, 0x0

    .line 1890
    .local v12, isDrm:Z
    const/4 v8, 0x0

    .line 1891
    .local v8, hitDrmX:Z
    const/4 v9, 0x0

    .line 1894
    .local v9, hitDrmY:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v19

    check-cast v19, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-interface/range {v19 .. v19}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v12

    .line 1896
    if-eqz v12, :cond_0

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v14

    .line 1899
    .local v14, nScreenDisplay:[I
    const/16 v19, 0x0

    aget v16, v14, v19

    .line 1900
    .local v16, screenw:I
    const/16 v19, 0x1

    aget v15, v14, v19

    .line 1902
    .local v15, screenh:I
    div-int/lit8 v19, v16, 0x2

    sget v20, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    div-int/lit8 v20, v20, 0x2

    sub-int v3, v19, v20

    .line 1903
    .local v3, drmLeft:I
    div-int/lit8 v19, v15, 0x2

    sget v20, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f07001f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v4, v0

    .line 1904
    .local v4, drmTop:I
    sget v5, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    .line 1905
    .local v5, drmWidth:I
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    .local v2, drmHeight:I
    sub-int v19, p1, v3

    if-lez v19, :cond_5

    sub-int v19, p1, v3

    move/from16 v0, v19

    if-ge v0, v5, :cond_5

    const/4 v8, 0x1

    .line 1908
    :goto_2
    sub-int v19, p2, v4

    if-lez v19, :cond_6

    sub-int v19, p2, v4

    move/from16 v0, v19

    if-ge v0, v2, :cond_6

    const/4 v9, 0x1

    .line 1916
    .end local v2           #drmHeight:I
    .end local v3           #drmLeft:I
    .end local v4           #drmTop:I
    .end local v5           #drmWidth:I
    .end local v14           #nScreenDisplay:[I
    .end local v15           #screenh:I
    .end local v16           #screenw:I
    :cond_0
    :goto_3
    if-eqz v10, :cond_1

    if-nez v11, :cond_2

    :cond_1
    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    :cond_2
    const/16 v19, 0x1

    :goto_4
    return v19

    .line 1886
    .end local v8           #hitDrmX:Z
    .end local v9           #hitDrmY:Z
    .end local v10           #hitX:Z
    .end local v11           #hitY:Z
    .end local v12           #isDrm:Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1887
    .restart local v10       #hitX:Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1907
    .restart local v2       #drmHeight:I
    .restart local v3       #drmLeft:I
    .restart local v4       #drmTop:I
    .restart local v5       #drmWidth:I
    .restart local v8       #hitDrmX:Z
    .restart local v9       #hitDrmY:Z
    .restart local v11       #hitY:Z
    .restart local v12       #isDrm:Z
    .restart local v14       #nScreenDisplay:[I
    .restart local v15       #screenh:I
    .restart local v16       #screenw:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1908
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 1911
    .end local v2           #drmHeight:I
    .end local v3           #drmLeft:I
    .end local v4           #drmTop:I
    .end local v5           #drmWidth:I
    .end local v14           #nScreenDisplay:[I
    .end local v15           #screenh:I
    .end local v16           #screenw:I
    :catch_0
    move-exception v6

    .line 1913
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "SceneLocalPhotoBurstShot"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[HtcAlbum][SceneLocalPhotoBurstShot][isHitIndicator] error:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1916
    .end local v6           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v19, 0x0

    goto :goto_4
.end method

.method private onBestShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1083
    sget-boolean v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    if-eqz v1, :cond_2

    .line 1085
    :cond_0
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onBestShot] expanding or setting best shot."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_1
    :goto_0
    return-void

    .line 1088
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getAskBestShot(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1090
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogBestShot()Landroid/app/Dialog;

    move-result-object v0

    .line 1091
    .local v0, dlg:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    .line 1092
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1096
    .end local v0           #dlg:Landroid/app/Dialog;
    :cond_3
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    goto :goto_0
.end method

.method private onCover()V
    .locals 2

    .prologue
    .line 1102
    sget-boolean v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    if-eqz v0, :cond_1

    .line 1104
    :cond_0
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onCover] expanding or setting best shot."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :goto_0
    return-void

    .line 1107
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doBestShot(Z)V

    goto :goto_0
.end method

.method private onDecodeExtremeQuality(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 2745
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    if-nez v1, :cond_1

    .line 2755
    :cond_0
    :goto_0
    return-void

    .line 2747
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2748
    .local v0, itemIndex:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2750
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setExtremeQualityItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2752
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onDecodeExtremeQuality] setExtremeQualityItemIndex fail."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExpandBurstShot()V
    .locals 3

    .prologue
    .line 2146
    sget-boolean v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    if-eqz v1, :cond_2

    .line 2148
    :cond_0
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] expanding or setting best shot."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    :cond_1
    :goto_0
    return-void

    .line 2151
    :cond_2
    const/4 v0, 0x0

    .line 2152
    .local v0, dlg:Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getAskExpand(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2154
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] Ask Expand"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2155
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showDialogAskExpand()Landroid/app/Dialog;

    move-result-object v0

    .line 2156
    if-eqz v0, :cond_1

    .line 2157
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 2161
    :cond_3
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onExpandBurstShot] no Ask Expand"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doExpand()V

    goto :goto_0
.end method

.method private onScrollStateChange(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2759
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2760
    .local v0, scrollState:I
    if-nez v0, :cond_1

    .line 2762
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateIDLE()V

    .line 2768
    :cond_0
    :goto_0
    return-void

    .line 2764
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2766
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateScroll()V

    goto :goto_0
.end method

.method private onShowErrorMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    .line 2706
    if-nez p1, :cond_1

    .line 2741
    :cond_0
    :goto_0
    return-void

    .line 2708
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2711
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 2712
    .local v1, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2714
    .local v0, activity:Landroid/app/Activity;
    const/4 v4, 0x0

    .line 2715
    .local v4, errorTitle:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2717
    .local v3, errorMessage:Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2732
    :goto_1
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 2736
    const/4 v2, 0x0

    .line 2738
    .local v2, errorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    invoke-static {v4, v3}, Lcom/htc/album/helper/HtcDialogManager$DLG_MESSAGE;->instance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v2

    .end local v2           #errorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    check-cast v2, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;

    .line 2739
    .restart local v2       #errorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    if-eqz v2, :cond_0

    .line 2740
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "SceneLocalPhotoBurstShot"

    invoke-virtual {v2, v5, v6}, Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2720
    .end local v2           #errorDialog:Lcom/htc/album/helper/HtcDialogManager$HtcDialogFragment;
    :pswitch_0
    const v5, 0x7f0a017f

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2721
    const v5, 0x7f0a0180

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2722
    goto :goto_1

    .line 2724
    :pswitch_1
    const v5, 0x7f0a017d

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2725
    const v5, 0x7f0a017e

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2726
    goto :goto_1

    .line 2728
    :pswitch_2
    const v5, 0x7f0a0181

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2729
    const v5, 0x7f0a0182

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2717
    :pswitch_data_0
    .packed-switch 0x13a7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private putAskBestShot(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 1120
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][putAskBestShot]+"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1122
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "continuous_shot_ask_bestshot_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1125
    const/4 v1, 0x1

    return v1
.end method

.method private putAskExpand(Z)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 2188
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][putAskExpand]+"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "continuous_shot_ask_expand_setting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2193
    const/4 v1, 0x1

    return v1
.end method

.method private setPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v0, :cond_1

    .line 1037
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]mAdapter is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-nez v0, :cond_2

    .line 1042
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]mMainView is null"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :cond_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1047
    iput p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 1048
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    .line 1049
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1056
    :cond_3
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[setPosition]out of bound"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSelectedItemToVisible()V
    .locals 5

    .prologue
    .line 2829
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] + "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v2, :cond_1

    .line 2831
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] mHorizontalListView is null "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    :cond_0
    :goto_0
    return-void

    .line 2835
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2836
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_2

    .line 2837
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][setSelectedItemToVisible] mSelectedItem is null "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2841
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getListViewWidth()I

    move-result v0

    .line 2842
    .local v0, screen_width:I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 2844
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_ITEM_WIDTH:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelectionFromLeft(II)V

    .line 2846
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    mul-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 2848
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelectionFromLeft(II)V

    goto :goto_0
.end method

.method private showDialogAskExpand()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 2198
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 2200
    :cond_0
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] mSceneControl or activityReference is null "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    :goto_0
    return-object v7

    .line 2203
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2204
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2205
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v8, 0x7f0a017a

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2208
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2209
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_2

    .line 2211
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get LayoutInflater"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2215
    :cond_2
    const v8, 0x7f03001d

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2216
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_3

    .line 2218
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get htc_custom_dialog_view layout"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2222
    :cond_3
    const v8, 0x7f090044

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2223
    .local v5, textView:Landroid/widget/TextView;
    if-nez v5, :cond_4

    .line 2225
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get ask_text TextView"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2228
    :cond_4
    const v8, 0x7f0a017b

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 2230
    const v8, 0x7f090046

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #textView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 2231
    .restart local v5       #textView:Landroid/widget/TextView;
    if-nez v5, :cond_5

    .line 2233
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get remind_text TextView"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2236
    :cond_5
    const v8, 0x7f0a017c

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 2238
    const v8, 0x7f090045

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 2239
    .local v2, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v2, :cond_6

    .line 2241
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogAskExpand] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2245
    :cond_6
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2246
    .local v4, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 2247
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2249
    const v7, 0x20401ee

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$5;

    invoke-direct {v8, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$5;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2258
    const v7, 0x2040174

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;

    invoke-direct {v8, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$6;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 2269
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private showDialogBestShot()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1130
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1132
    :cond_0
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] mSceneControl or activityReference is null "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :goto_0
    return-object v7

    .line 1136
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1138
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1139
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v8, 0x7f0a0177

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1142
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1143
    .local v3, inflater:Landroid/view/LayoutInflater;
    if-nez v3, :cond_2

    .line 1145
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get LayoutInflater"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_2
    const v8, 0x7f03001d

    invoke-virtual {v3, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1150
    .local v6, view:Landroid/view/View;
    if-nez v6, :cond_3

    .line 1152
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get htc_custom_dialog_view layout"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1156
    :cond_3
    const v8, 0x7f090044

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1157
    .local v5, textView:Landroid/widget/TextView;
    if-nez v5, :cond_4

    .line 1159
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get ask_text TextView"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    :cond_4
    const v8, 0x7f0a0178

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1164
    const v8, 0x7f090046

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #textView:Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 1165
    .restart local v5       #textView:Landroid/widget/TextView;
    if-nez v5, :cond_5

    .line 1167
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get remind_text TextView"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_5
    const v8, 0x7f0a017c

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1172
    const v8, 0x7f090045

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcCheckBox;

    .line 1173
    .local v2, chkbox:Lcom/htc/widget/HtcCheckBox;
    if-nez v2, :cond_6

    .line 1175
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][showDialogBestShot] Can\'t get remind_chkbox HtcCheckBox"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_6
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v4, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1181
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1183
    const v7, 0x20401f3

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$3;

    invoke-direct {v8, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$3;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1193
    const v7, 0x20401f2

    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;

    invoke-direct {v8, p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$4;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/widget/HtcCheckBox;)V

    invoke-virtual {v1, v7, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1205
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private showThumbnailList(Z)V
    .locals 14
    .parameter "isShow"

    .prologue
    .line 2273
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v9, :cond_1

    .line 2274
    const-string v9, "SceneLocalPhotoBurstShot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[showThumbnailList] no mHorizontalListView isShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    :cond_0
    :goto_0
    return-void

    .line 2277
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_3

    .line 2279
    :cond_2
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  activityReference is null "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2283
    :cond_3
    const-string v9, "SceneLocalPhotoBurstShot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[showThumbnailList] isShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2286
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2288
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v6, v9, Landroid/content/res/Configuration;->orientation:I

    .line 2290
    .local v6, ori:I
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2291
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2292
    sget-object v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_GRID:[I

    sget v10, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v9, v9, v10

    sget v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sget v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2295
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_6

    .line 2296
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2297
    .local v2, footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    .line 2298
    const/4 v9, 0x2

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2300
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2301
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2309
    :goto_1
    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2316
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :goto_2
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_a

    .line 2317
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v9

    if-nez v9, :cond_7

    .line 2319
    :cond_4
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  sunnyHost is null "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2304
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2305
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2307
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 2313
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_6
    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    .line 2322
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2324
    .local v7, root:Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const v10, 0x7f02000e

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setBackgroundResource(I)V

    .line 2325
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0xe6

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2326
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/4 v10, 0x0

    sget v11, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    const/4 v12, 0x0

    sget v13, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_VERTICAL_MARGIN:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/htc/widget/HBouncingListView;->setPadding(IIII)V

    .line 2333
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7, v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2335
    if-nez p1, :cond_8

    .line 2336
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    .line 2343
    .end local v7           #root:Landroid/widget/RelativeLayout;
    :cond_8
    :goto_3
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 2345
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v9

    if-nez v9, :cond_b

    .line 2347
    :cond_9
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HtcAlbum][SceneLocalPhotoBurstShot][showThumbnailList] mSceneControl or  sunnyHost is null "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2340
    :cond_a
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->requestLayout()V

    goto :goto_3

    .line 2350
    :cond_b
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 2351
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v9, :cond_c

    .line 2353
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030001

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 2357
    :cond_c
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2359
    .local v5, lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v9

    if-nez v9, :cond_13

    .line 2360
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v2

    .line 2361
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    const/4 v9, 0x1

    if-ne v6, v9, :cond_12

    .line 2364
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2365
    const/16 v9, 0xb

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2374
    :goto_4
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2379
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :goto_5
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_14

    .line 2380
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2381
    if-nez p1, :cond_d

    .line 2382
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2390
    :cond_d
    :goto_6
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const v10, 0x7f09000d

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2391
    .local v8, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2392
    const/4 v9, 0x0

    sget-object v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DIMENSION_INDICATOR_FONT:[F

    sget v11, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2395
    .end local v5           #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .end local v8           #textView:Landroid/widget/TextView;
    :cond_e
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    if-eq p1, v9, :cond_0

    .line 2437
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2438
    .local v1, firstVisible:I
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v3

    .line 2440
    .local v3, lastVisible:I
    const/4 v9, 0x1

    if-ne v9, p1, :cond_10

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    if-gt v1, v9, :cond_f

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    if-le v9, v3, :cond_10

    .line 2441
    :cond_f
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 2445
    :cond_10
    const/4 v9, 0x1

    if-ne v9, p1, :cond_15

    .line 2446
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    .line 2451
    :goto_7
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v9, :cond_11

    .line 2453
    if-eqz p1, :cond_16

    .line 2454
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2460
    :cond_11
    :goto_8
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    .line 2462
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v9, :cond_0

    .line 2463
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->notifyDataSetInvalidated()V

    goto/16 :goto_0

    .line 2368
    .end local v1           #firstVisible:I
    .end local v3           #lastVisible:I
    .restart local v2       #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .restart local v5       #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    :cond_12
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2369
    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_4

    .line 2377
    .end local v2           #footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    :cond_13
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    .line 2387
    :cond_14
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_6

    .line 2448
    .end local v5           #lpIndicator:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .restart local v1       #firstVisible:I
    .restart local v3       #lastVisible:I
    :cond_15
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->setVisibility(I)V

    goto :goto_7

    .line 2456
    :cond_16
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8
.end method


# virtual methods
.method public adapterIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    const-string v0, "AdapterBurstPhoto"

    return-object v0
.end method

.method public checkIsShowActionBar()V
    .locals 2

    .prologue
    .line 2939
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][checkIsShowActionBar] +"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 2942
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][checkIsShowActionBar] hide action bar"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->hideHeaderControlBar(Landroid/view/animation/Animation;)V

    .line 2945
    :cond_0
    return-void
.end method

.method protected createAdapterLocalPhoto(Lcom/htc/album/modules/collection/Collection;)Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    .locals 3
    .parameter "collection"

    .prologue
    .line 328
    new-instance v0, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/htc/album/modules/collection/Collection;)V

    return-object v0
.end method

.method protected defaultControlBarOn()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x1

    return v0
.end method

.method protected doLaunchDMC(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/modules/collection/Collection;)V
    .locals 2
    .parameter "activity"
    .parameter "renderer"
    .parameter "image"
    .parameter "collection"

    .prologue
    .line 2772
    invoke-interface {p3}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, p2, v0, p4}, Lcom/htc/album/TabPluginDLNA/DLNAHelper;->launchBurstShotDMC(Landroid/app/Activity;Ljava/lang/String;ILcom/htc/album/modules/collection/Collection;)V

    .line 2774
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoPrevious()V

    .line 2775
    return-void
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method

.method public enableProgressLoading()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public exclusionEditTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 1990
    const/high16 v0, 0x1

    or-int/2addr v0, p1

    return v0
.end method

.method public exclusionShowHideTag(I)I
    .locals 1
    .parameter "exclusion"

    .prologue
    .line 1995
    const/high16 v0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method protected getDLNAOutputIndex()I
    .locals 1

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 2645
    const/4 v0, 0x5

    return v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2107
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2108
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 2110
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][getHeaderTitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    :cond_0
    :goto_0
    return-object v2

    .line 2114
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2115
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2119
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    if-eqz v3, :cond_2

    .line 2120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0

    .line 2122
    .end local v2           #subTitle:Ljava/lang/String;
    :cond_2
    const-string v2, " "

    .restart local v2       #subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2089
    const/4 v0, 0x0

    .line 2090
    .local v0, activity:Landroid/app/Activity;
    const-string v2, ""

    .line 2093
    .local v2, strHeader:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2094
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2101
    :goto_0
    return-object v2

    .line 2096
    :catch_0
    move-exception v1

    .line 2098
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[getHeaderTitle] Can not get activity!!"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListViewWidth()I
    .locals 4

    .prologue
    .line 2855
    const/4 v1, 0x0

    .line 2856
    .local v1, nWidth:I
    iget v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2858
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_WIDTH:I

    .line 2865
    :goto_0
    return v1

    .line 2862
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    move-result-object v0

    .line 2863
    .local v0, footer:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->WINDOW_DISP_HEIGHT:I

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method public getSelectedPosSubtitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2129
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2130
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_1

    .line 2132
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][getSelectedPosSubtitle]adapter is null"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    :cond_0
    :goto_0
    return-object v2

    .line 2136
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    .line 2137
    .local v1, collection:Lcom/htc/album/modules/collection/Collection;
    if-eqz v1, :cond_0

    .line 2140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/album/modules/collection/Collection;->getPhotoCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2142
    .local v2, subTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method public gotoFullscreen()V
    .locals 5

    .prologue
    .line 2923
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 2935
    :goto_0
    return-void

    .line 2926
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isBestShotChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2928
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 2929
    .local v0, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_1

    .line 2930
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunnyCore/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 2934
    .end local v0           #renderThread:Lcom/htc/sunnyCore/RenderThread;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    const/4 v2, 0x0

    const-string v3, "SceneLocalPhotoFullscreen"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoScene(Landroid/os/Bundle;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public gotoPrevious()V
    .locals 5

    .prologue
    .line 2891
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 2920
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isBestShotChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2896
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v2

    .line 2897
    .local v2, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v2, :cond_2

    .line 2898
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunnyCore/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 2902
    .end local v2           #renderThread:Lcom/htc/sunnyCore/RenderThread;
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->gotoPreviousScene()V

    .line 2905
    const/4 v1, 0x0

    .line 2906
    .local v1, bFromCamera:Z
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2909
    .local v0, activity:Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "preview_mode"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 2915
    :goto_1
    if-eqz v1, :cond_0

    .line 2917
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HTCAlbum][SceneLocalPhotoBurstShot][gotoPrevious]overrideRotateAnimation, TYPE_NO_ROTATE_ANIMATION"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    const/16 v3, 0x68

    invoke-static {v0, v3}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    goto :goto_0

    .line 2909
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 2911
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public isBestShotChanged()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 2869
    const/4 v0, 0x1

    .line 2870
    .local v0, bBestShotChanged:Z
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-nez v4, :cond_1

    .line 2887
    :cond_0
    :goto_0
    return v3

    .line 2872
    :cond_1
    sget-wide v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v3, v0

    .line 2873
    goto :goto_0

    .line 2874
    :cond_2
    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2877
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2878
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v3, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 2879
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2881
    sget-wide v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 2882
    const/4 v0, 0x0

    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_3
    move v3, v0

    .line 2887
    goto :goto_0

    .line 2877
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isFileCachable()Z
    .locals 1

    .prologue
    .line 2786
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    .line 693
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->notifyDataSetChanged()V

    .line 695
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    .line 696
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 701
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->workaround_BurstAdapterDataSetChanged()V

    .line 703
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 705
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 706
    const/16 v2, 0x139e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 711
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 712
    .local v1, view:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 713
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$2;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/sunny2/fullfilmview/FullFilmView;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 725
    return-void
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    .line 796
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v10, 0x139e

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2533
    const-string v5, "SceneLocalPhotoBurstShot"

    const-string v6, "[HtcAlbum][SceneLocalPhotoBurstShot][onActivityResult] + "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 2593
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2541
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2542
    .local v0, activity:Landroid/app/Activity;
    sparse-switch p1, :sswitch_data_0

    .line 2592
    :cond_2
    :goto_1
    const-string v5, "SceneLocalPhotoBurstShot"

    const-string v6, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult] - "

    invoke-static {v5, v6}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2545
    :sswitch_0
    const/4 v2, 0x0

    .line 2547
    .local v2, extra:Landroid/os/Bundle;
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2549
    const-string v5, "return_can_not_delete"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 2550
    .local v1, bCanNotDelete:Z
    if-eqz v1, :cond_3

    .line 2552
    const/16 v5, 0x13a9

    invoke-virtual {p0, v5, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2556
    :cond_3
    const-string v5, "return_delete_result"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2558
    .local v3, nCount:I
    iget-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-eq v5, v8, :cond_4

    if-ne v3, v8, :cond_5

    .line 2562
    :cond_4
    invoke-virtual {p0, v10, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 2565
    :cond_5
    if-nez v3, :cond_6

    .line 2567
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    .line 2568
    iput-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsDirectClose:Z

    .line 2569
    invoke-virtual {p0, v10, v9, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_1

    .line 2573
    :cond_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->notifyDataSetChanged()V

    .line 2574
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->invalidateControlBars()V

    goto :goto_1

    .line 2580
    .end local v1           #bCanNotDelete:Z
    .end local v2           #extra:Landroid/os/Bundle;
    .end local v3           #nCount:I
    :sswitch_1
    const-string v5, "DMR"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2581
    .local v4, selectDMR:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2583
    invoke-virtual {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDMRChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 2588
    .end local v4           #selectDMR:Ljava/lang/String;
    :sswitch_2
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mShareIntent:Landroid/content/Intent;

    invoke-static {v0, v5, p3}, Lcom/htc/album/helper/MenuManager;->doShareMultiMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_1

    .line 2542
    nop

    :sswitch_data_0
    .sparse-switch
        0x1391 -> :sswitch_0
        0x1398 -> :sswitch_1
        0x220000 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onActivityResult_CROP_NONE(ILandroid/content/Intent;)V
    .locals 10
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    .line 2600
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult_CROP_NONE] + "

    invoke-static {v7, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2641
    :cond_0
    :goto_0
    return-void

    .line 2605
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2606
    .local v2, extras:Landroid/os/Bundle;
    const-string v7, "filePath"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2607
    .local v1, dstFilePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2609
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v7}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v7

    const-string v9, "image/jpeg"

    invoke-static {v7, v1, v9}, Lcom/htc/album/AlbumUtility/MediaScannerRes;->SyncScanSingleFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 2612
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2613
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 2620
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v3

    .line 2621
    .local v3, itemCount:I
    add-int/lit8 v4, v3, -0x1

    .line 2632
    .local v4, pos:I
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v6

    .line 2633
    .local v6, type:Ljava/lang/String;
    const-string v7, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    move v5, v8

    .line 2634
    .local v5, shouldStayOnOriginalImage:Z
    :goto_1
    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    if-nez v5, :cond_4

    .line 2637
    iget-object v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v7, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v7, v8, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsAfterEdit(ZI)V

    .line 2640
    :cond_4
    const-string v7, "SceneLocalPhotoBurstShot"

    const-string v8, "[HtcAlbum][SceneLocalPhotoBurstShot][RotateListener][onActivityResult_CROP_NONE] - "

    invoke-static {v7, v8}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2633
    .end local v5           #shouldStayOnOriginalImage:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onBack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 765
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBack"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    sget-boolean v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    if-ne v0, v2, :cond_0

    .line 768
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onBack]expanding..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :goto_0
    return-void

    .line 770
    :cond_0
    sget-boolean v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    if-ne v0, v2, :cond_1

    .line 771
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onBack]setting bestshot..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    const/16 v0, 0x139e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 729
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "onBackPressed 0"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 742
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isEnabledFullScreenAndInFilmstrip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->forceFilmstripViewAlign()V

    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostBackPressed()V

    goto :goto_0
.end method

.method public onBindAdapter()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 580
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onBindAdapter()V

    .line 581
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v8

    if-nez v8, :cond_1

    .line 583
    :cond_0
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HtcAlbum][SceneLocalPhotoBurstShot][onBindAdapter] mSceneControl or activity or sunnyHost is null"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 587
    :cond_1
    iput v12, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 588
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 590
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8, v3}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 591
    .local v4, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 593
    iput v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 594
    invoke-interface {v4}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v8

    sput-wide v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOldBestShot:J

    .line 599
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_2
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iget v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v8, v9, v10}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;I)V

    .line 600
    iput-boolean v13, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 601
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 603
    .local v7, root:Landroid/widget/RelativeLayout;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 604
    .local v0, activity:Landroid/app/Activity;
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v2

    .line 605
    .local v2, fragment:Landroid/app/Fragment;
    new-instance v9, Lcom/htc/album/helper/DeleteManager;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v8

    new-instance v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;

    invoke-direct {v10, p0, v11}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$DeleteListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-direct {v9, v2, v8, v10}, Lcom/htc/album/helper/DeleteManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/modules/collection/Collection;Lcom/htc/album/helper/DeleteManager$DeleteCallbackListener;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    .line 608
    if-nez v2, :cond_8

    .line 610
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onBindAdapter]fragment is null"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_2
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 620
    invoke-static {v0, v11, v13}, Lcom/htc/album/PaintManager/HtcPaintManager;->disableSketcher(Landroid/app/Activity;Landroid/view/Window;Z)V

    .line 622
    :cond_3
    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 623
    const-string v8, "SceneLocalPhotoBurstShot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][SceneLocalPhotoBurstShot][onBindAdapter]selectedItemIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_4
    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 625
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onBindAdapter] - "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_5
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-direct {v9, p0, v0, v8, v10}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Lcom/htc/widget/HtcAbsListView2;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    .line 628
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 629
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView2$OnScrollListener;)V

    .line 630
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setSelection(I)V

    .line 632
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 634
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 635
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mPrefs:Landroid/content/SharedPreferences;

    .line 636
    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v5

    .line 637
    .local v5, nSelectedItemColor:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x208009b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    .line 638
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v5, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 641
    const/16 v8, 0x2724

    invoke-virtual {p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 642
    const/16 v8, 0x2728

    invoke-virtual {p0, v8, v11, v12}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 644
    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v8, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v6

    .line 645
    .local v6, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v6, :cond_6

    .line 646
    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v8, v9}, Lcom/htc/sunnyCore/RenderThread;->requestForceDisableRenderingBeforeTimeMillis(J)V

    .line 647
    const/16 v8, 0x139d

    const/16 v9, 0x1f4

    invoke-virtual {p0, v8, v11, v9}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 650
    :cond_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    goto/16 :goto_0

    .line 588
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #fragment:Landroid/app/Fragment;
    .end local v5           #nSelectedItemColor:I
    .end local v6           #renderThread:Lcom/htc/sunnyCore/RenderThread;
    .end local v7           #root:Landroid/widget/RelativeLayout;
    .restart local v4       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 614
    .end local v4           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #fragment:Landroid/app/Fragment;
    .restart local v7       #root:Landroid/widget/RelativeLayout;
    :cond_8
    new-instance v9, Lcom/htc/album/helper/ImageProcessManager;

    iget-object v8, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v8, Lcom/htc/album/TabPluginDevice/ObserverAdapter;

    new-instance v10, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;

    invoke-direct {v10, p0, v11}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ImageProcessListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-direct {v9, v2, v8, v10}, Lcom/htc/album/helper/ImageProcessManager;-><init>(Landroid/app/Fragment;Lcom/htc/album/TabPluginDevice/ObserverAdapter;Lcom/htc/album/helper/ImageProcessManager$ProcessCallbackListener;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    .line 615
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v8, v9}, Lcom/htc/album/helper/MenuManager;->setOnMenuItemSelectedListener(Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;)V

    goto/16 :goto_2
.end method

.method public onBubbleDismissed()V
    .locals 4

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1079
    return-void
.end method

.method public onBubblePopped()V
    .locals 2

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1227
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1228
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientation:I

    .line 1229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOrientationHasChanged:Z

    .line 1230
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->resetCurrentIndex()V

    .line 1233
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->setScreenRotateBegin()V

    .line 1234
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mAnimateDispatcher:Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->doDispatch()V

    .line 1237
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsShowThumbListView:Z

    invoke-direct {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 1238
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onConfigurationChanged]: ..."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 982
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 984
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onControlButtonClick] mSceneControl is null "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :goto_0
    return-void

    .line 988
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 993
    :sswitch_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 995
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onControlButtonClick] mSceneControl.activityReference() is null "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_1
    const-string v3, "SceneLocalPhotoBurstShot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onControlButtonClick:case ControlButtonID.DELETE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.album.ACTION_PICK_DELETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, delete:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1001
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "collection_info"

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1002
    const-string v2, "selected_item_for_delete"

    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    const-string v3, "is_show_best_indicator"

    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1005
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x1391

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1007
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x10a

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 1003
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1013
    .end local v0           #delete:Landroid/content/Intent;
    .end local v1           #extras:Landroid/os/Bundle;
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    goto/16 :goto_0

    .line 1018
    :sswitch_2
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.EXPAND"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onExpandBurstShot()V

    goto/16 :goto_0

    .line 1023
    :sswitch_3
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.BEST_SHOT"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBestShot()V

    goto/16 :goto_0

    .line 1027
    :sswitch_4
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "onControlButtonClick:case ControlButtonID.COVER"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onCover()V

    goto/16 :goto_0

    .line 988
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x13 -> :sswitch_1
        0x15 -> :sswitch_1
        0x2e -> :sswitch_2
        0x35 -> :sswitch_3
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2000
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar] + "

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v4, :cond_1

    .line 2003
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: mSceneControl is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_0
    :goto_0
    return-object v3

    .line 2007
    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 2008
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 2010
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: activity is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2014
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2015
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    .line 2017
    const-string v4, "SceneLocalPhotoBurstShot"

    const-string v5, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateFooterBar]: context is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :cond_3
    const/4 v3, 0x0

    .line 2022
    .local v3, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->enableRightFooter()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v3

    .line 2024
    invoke-virtual {v3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v2

    .line 2025
    .local v2, footer:Landroid/view/ViewGroup;
    instance-of v4, v2, Lcom/htc/widget/HtcFooter;

    if-eqz v4, :cond_0

    .line 2026
    check-cast v2, Lcom/htc/widget/HtcFooter;

    .end local v2           #footer:Landroid/view/ViewGroup;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    goto :goto_0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .parameter "id"
    .parameter "extras"

    .prologue
    const/4 v1, 0x1

    .line 284
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/DeleteManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 285
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1, p2}, Lcom/htc/album/helper/ImageProcessManager;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v0

    .line 289
    if-nez v0, :cond_0

    .line 291
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onCreateFragmentDialog(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 343
    iget-boolean v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] + "

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v9, :cond_2

    move-object v4, v8

    .line 431
    :cond_1
    :goto_0
    return-object v4

    .line 348
    :cond_2
    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v1

    .line 349
    .local v1, activity:Landroid/app/Activity;
    if-nez v1, :cond_3

    .line 350
    const-string v9, "SceneLocalPhotoBurstShot"

    const-string v10, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] -: Activity is null"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v8

    .line 351
    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 355
    .local v2, context:Landroid/content/Context;
    new-instance v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v9

    invoke-direct {v3, v2, v9}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 356
    .local v3, fsvi:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
    new-instance v5, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v9

    invoke-direct {v5, v2, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;)V

    .line 357
    .local v5, fvci:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    new-instance v4, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget-object v9, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v9}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyContext()Lcom/htc/sunnyCore/SunnyContext;

    move-result-object v9

    invoke-direct {v4, v2, v9, v3, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;-><init>(Landroid/content/Context;Lcom/htc/sunnyCore/SunnyContext;Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V

    .line 358
    .local v4, fullfilmview:Lcom/htc/sunny2/fullfilmview/FullFilmView;
    new-instance v9, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-direct {v9, v2}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 359
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v6, inValue:Landroid/os/Bundle;
    const-string v9, "TEXTURE_MAX_COUNT"

    const/16 v10, 0x24

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v9, "CACHE_SET"

    const/16 v10, 0xc

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v9, "FULL_MEM_CAHCE_SIZE"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->isFileCachable()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 364
    const-string v9, "FULL_FILE_CAHCE_SIZE"

    const/16 v10, 0xa

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    :cond_4
    const-string v9, "FULL_FILM_FLAG"

    invoke-virtual {v6, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    sget-boolean v9, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v9, :cond_5

    .line 369
    const-string v9, "IS_ENABLE_HALF_PREFER_SIZE"

    invoke-virtual {v6, v9, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 374
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_6

    const-string v9, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 376
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->raisePriorityOnce()V

    .line 379
    :cond_6
    if-eqz v7, :cond_7

    const-string v9, "com.htc.album.action.VIEW_CONTINUOUS_SHOT_FROM_CAMERA"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 381
    iput-boolean v11, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    .line 382
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 385
    :cond_7
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v2, v6}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 386
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunnyCore/Preparator$UpdateListener;)V

    .line 387
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v9, v11}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->enableDecodeLQFromExif(Z)V

    .line 388
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 389
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    iput-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    .line 390
    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 391
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ViewScrollStateChangedListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 392
    new-instance v9, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;

    invoke-direct {v9, p0, v8}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V

    invoke-virtual {v4, v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 393
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 394
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemTouchedListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemTouchedListener;

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemTouchedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemTouchedListener;)V

    .line 397
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 398
    new-instance v8, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;

    invoke-direct {v8, p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    .line 409
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 410
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez v0, :cond_8

    .line 412
    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] -: ActionBar is null"

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_8
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 419
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_9
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v8, :cond_a

    .line 420
    new-instance v8, Lcom/htc/widget/HBouncingListView;

    invoke-direct {v8, v1}, Lcom/htc/widget/HBouncingListView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 421
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 422
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    sget-object v9, Lcom/htc/widget/HtcAdapterView2$ListStyle;->HORZ_STYLE_:Lcom/htc/widget/HtcAdapterView2$ListStyle;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setListStyle(Lcom/htc/widget/HtcAdapterView2$ListStyle;)V

    .line 423
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget-object v9, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mListListener:Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HBouncingListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView2$OnItemClickListener;)V

    .line 425
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setVerticalScrollBarEnabled(Z)V

    .line 426
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v8, v12}, Lcom/htc/widget/HBouncingListView;->setHorizontalScrollBarEnabled(Z)V

    .line 430
    :cond_a
    iget-boolean v8, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "SceneLocalPhotoBurstShot"

    const-string v9, "[HTCAlbum][SceneLocalPhotoBurstShot][onCreateScene] - "

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onCreateScene()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyAdapter()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->release()V

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyAdapter()V

    .line 338
    return-void
.end method

.method public onDestroyScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 500
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPanZoomListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$IImagePanAndZoomListener;)V

    .line 501
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnScrollListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnScrollListener;)V

    .line 502
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    .line 503
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemClickListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;)V

    .line 505
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 509
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 511
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mActionBarVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 515
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-eqz v2, :cond_2

    .line 516
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Lcom/htc/widget/HBouncingListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 517
    .local v1, parentView:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 518
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 520
    :cond_1
    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    .line 523
    .end local v1           #parentView:Landroid/view/ViewGroup;
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDestroyScene()V

    .line 524
    return-void
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 297
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/DeleteManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 298
    .local v0, dlg:Z
    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v2, p1}, Lcom/htc/album/helper/ImageProcessManager;->onDismissFragmentDialog(I)Z

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 304
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onDismissFragmentDialog(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 791
    const/4 v0, 0x1

    return v0
.end method

.method public onEnterImageIHT(II)I
    .locals 5
    .parameter "nIndexPrev"
    .parameter "nIndexNext"

    .prologue
    .line 1243
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: begin"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :cond_0
    move v0, p1

    .line 1248
    .local v0, nIndex:I
    sget-boolean v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->HAS_3D_BARRIER:Z

    if-nez v2, :cond_2

    .line 1250
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: no 3D barrier"

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 1327
    .end local v0           #nIndex:I
    .local v1, nIndex:I
    :goto_0
    return v1

    .line 1254
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_2
    if-ne v0, p2, :cond_4

    .line 1256
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: on the spot: mIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :goto_1
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: end "

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v1, v0

    .line 1327
    .end local v0           #nIndex:I
    .restart local v1       #nIndex:I
    goto :goto_0

    .line 1260
    .end local v1           #nIndex:I
    .restart local v0       #nIndex:I
    :cond_4
    move v0, p2

    .line 1261
    const-string v2, "SceneLocalPhotoBurstShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][onEnterImageIHT]: mIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 534
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onEnterScene(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    .line 675
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onLeaveScene] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 680
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 681
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 683
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 686
    :cond_2
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onLeaveScene()V

    .line 688
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onLeaveScene] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_3
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2651
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2700
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onMessage(Landroid/os/Message;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 2654
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->hideControlBars()V

    .line 2655
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    goto :goto_0

    .line 2660
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 2661
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    goto :goto_0

    .line 2665
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onScrollStateChange(Landroid/os/Message;)V

    goto :goto_0

    .line 2669
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    goto :goto_0

    .line 2672
    :sswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getRenderThread()Lcom/htc/sunnyCore/RenderThread;

    move-result-object v0

    .line 2673
    .local v0, renderThread:Lcom/htc/sunnyCore/RenderThread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->isRenderThreadReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2674
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    .line 2675
    invoke-virtual {v0}, Lcom/htc/sunnyCore/RenderThread;->resumeThread()V

    goto :goto_0

    .line 2679
    .end local v0           #renderThread:Lcom/htc/sunnyCore/RenderThread;
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoPrevious()V

    goto :goto_0

    .line 2682
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->gotoFullscreen()V

    goto :goto_0

    .line 2685
    :sswitch_7
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v1, :cond_0

    .line 2687
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDecodeExtremeQuality(Landroid/os/Message;)V

    goto :goto_0

    .line 2691
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onShowErrorMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2694
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onShowErrorMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2697
    :sswitch_a
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onShowErrorMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 2651
    :sswitch_data_0
    .sparse-switch
        0x139d -> :sswitch_4
        0x139e -> :sswitch_5
        0x139f -> :sswitch_6
        0x13a7 -> :sswitch_8
        0x13a8 -> :sswitch_9
        0x13a9 -> :sswitch_a
        0x4e3c -> :sswitch_0
        0x4e48 -> :sswitch_1
        0x4e49 -> :sswitch_3
        0x4e4d -> :sswitch_7
        0x4f4f -> :sswitch_2
    .end sparse-switch
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onNewAdapter] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 320
    const/16 v0, 0x2724

    const/4 v1, 0x0

    const/16 v2, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 321
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenuUponDataBind()V

    .line 322
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 846
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 847
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalPhotoBurstShot][onOptionsItemSelected]+"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 859
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 854
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onBack()V

    goto :goto_0

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPause()V

    .line 463
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTextureMapsForMemory(Z)Z

    .line 466
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v0

    .line 467
    .local v0, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setValid(Z)V

    .line 470
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->freeBitmapRegionDecoder()V

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->purgeTileTextures()V

    .line 473
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->unzoomCenter()V

    .line 484
    .end local v0           #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_2

    .line 485
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 488
    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v1, :cond_4

    .line 489
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Lcom/htc/widget/HBouncingListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->enableThumbnailDecode(Z)V

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->removeInvisibleCache()V

    .line 495
    :cond_4
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mFullscreenZoomListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FullscreenZoomListener;->resetCurrentIndex()V

    .line 496
    return-void
.end method

.method protected onPostBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 746
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "onPostBackPressed"

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    .line 749
    .local v0, bIsFullScreen:Z
    if-nez v0, :cond_0

    .line 750
    invoke-virtual {p0, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDisableTransitionAnimation(Z)V

    .line 752
    :cond_0
    sget-boolean v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsExpanding:Z

    if-ne v1, v3, :cond_1

    .line 753
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onPostBackPressed]expanding..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_0
    return-void

    .line 755
    :cond_1
    sget-boolean v1, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsSettingBestShot:Z

    if-ne v1, v3, :cond_2

    .line 756
    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onPostBackPressed]setting bestshot..."

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_2
    const/16 v1, 0x139e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onPrepareAnimation(I)Z
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 891
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareAnimation(I)Z

    move-result v0

    .line 892
    .local v0, bResult:Z
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 807
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 809
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 812
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/album/addons/SingleCollection;

    if-nez v1, :cond_0

    .line 814
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-virtual {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPrepareTabletOptionsMenu(Landroid/view/Menu;)V

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 821
    .local v0, position:I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doSimulateScreenTouched(IZ)V

    .line 822
    const/4 v1, 0x0

    return v1
.end method

.method protected onPrepareTabletOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 841
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 9
    .parameter "footer"

    .prologue
    const/4 v2, 0x0

    .line 2035
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v3, "[HtcAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar] + "

    invoke-static {v0, v3}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v0, :cond_1

    .line 2038
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: mSceneControl is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v6

    .line 2043
    .local v6, activity:Landroid/app/Activity;
    if-nez v6, :cond_2

    .line 2045
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: activity is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2049
    :cond_2
    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2050
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_3

    .line 2052
    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v2, "[HTCAlbum][SceneLocalPhotoBurstShot][onRefreshFooterBar]: context is null"

    invoke-static {v0, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2056
    :cond_3
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->clear()V

    .line 2060
    const/16 v3, 0x35

    const v4, 0x7f02000f

    const v5, 0x7f0a014c

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v7

    check-cast v7, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2061
    .local v7, bestShotBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_4

    .line 2063
    const/16 v3, 0x36

    const v4, 0x7f020014

    const v5, 0x7f0a014d

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2065
    :cond_4
    const/4 v3, 0x2

    const v4, 0x20800a6

    const v5, 0x7f0a0131

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v8

    check-cast v8, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 2066
    .local v8, deleteBtn:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_0

    .line 2068
    const/16 v3, 0x2e

    const v4, 0x7f020010

    const v5, 0x7f0a014b

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 436
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onResume()V

    .line 442
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Lcom/htc/widget/HBouncingListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->enableThumbnailDecode(Z)V

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getTileDecoder()Lcom/htc/sunny2/fullfilmview/TileDecoder;

    move-result-object v0

    .line 448
    .local v0, tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/TileDecoder;->setValid(Z)V

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 453
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_FULLHD_OR_HIGHER:Z

    if-eqz v1, :cond_2

    .line 455
    const/16 v2, 0x4e4d

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 458
    .end local v0           #tileDecoder:Lcom/htc/sunny2/fullfilmview/TileDecoder;
    :cond_2
    return-void
.end method

.method public onScrollStateIDLE()V
    .locals 3

    .prologue
    .line 1615
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HtcAlbum][SceneLocalFullscreen][onScrollStateIDLE] + "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :cond_0
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SceneLocalPhotoBurstShot"

    const-string v2, "[HtcAlbum][SceneLocalFullscreen][onScrollStateIDLE] - "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v1, :cond_2

    .line 1620
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->invalidateOptionsMenu()V

    .line 1622
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v0

    .line 1623
    .local v0, position:I
    iput v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    .line 1624
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->updateContinuousIndicator()V

    .line 1627
    return-void
.end method

.method public onScrollStateScroll()V
    .locals 3

    .prologue
    .line 1631
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalFullscreen][onScrollStateScroll] + "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :cond_0
    const/16 v0, 0x4e48

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onRemoveMessage(I)V

    .line 1633
    const/16 v0, 0x4e3c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onPostMessage(ILjava/lang/Object;I)V

    .line 1634
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HtcAlbum][SceneLocalFullscreen][onScrollStateScroll] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    :cond_1
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 574
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 541
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 552
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 554
    .local v1, selectedItemIndex:I
    iput-boolean v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 555
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getItem(I)Lcom/htc/sunnyCore/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 556
    .local v0, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    const-string v2, "SceneLocalPhotoBurstShot"

    const-string v3, "[HTCAlbum][SceneLocalPhotoBurstShot][onSendToForeground]Do item click for DRM."

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mOnItemClickListener:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v2, v3, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;->onItemClick(Lcom/htc/sunnyCore/view/SView;I)V

    .line 561
    :cond_0
    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDoItemClickWhenBindAdapter:Z

    .line 563
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->defaultControlBarOn()Z

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->createFooterBar(IZ)V

    .line 564
    invoke-virtual {p0, v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->setEnableControlBarAnimation(Z)V

    .line 565
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->checkIsShowActionBar()V

    .line 567
    invoke-direct {p0, v4}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->showThumbnailList(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->resetListViewVisibleRange()V

    .line 569
    return-void
.end method

.method public onTVReadyToPlay()V
    .locals 1

    .prologue
    .line 2989
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->onDMRChanged(Ljava/lang/String;)V

    .line 2990
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onUnbindAdapter] +  "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HBouncingListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsBindAdapter:Z

    .line 661
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunnyCore/IMediaList;)V

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mDeleteMgr:Lcom/htc/album/helper/DeleteManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/DeleteManager;->release()V

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    if-eqz v0, :cond_3

    .line 666
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mImageProcessManager:Lcom/htc/album/helper/ImageProcessManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/ImageProcessManager;->release()V

    .line 667
    :cond_3
    invoke-super {p0}, Lcom/htc/album/TabPluginDevice/CollectionBaseScene;->onUnbindAdapter()V

    .line 669
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "SceneLocalPhotoBurstShot"

    const-string v1, "[HTCAlbum][SceneLocalPhotoBurstShot][onUnbindAdapter] - "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_4
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2083
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 2076
    const/4 v0, 0x0

    return v0
.end method

.method public requestTVDisplay()Z
    .locals 1

    .prologue
    .line 2982
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DISABLE_DLNA:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mExpandWorker:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$ExpandWorker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetListViewVisibleRange()V
    .locals 5

    .prologue
    .line 2814
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    if-nez v3, :cond_1

    .line 2825
    :cond_0
    :goto_0
    return-void

    .line 2816
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v3}, Lcom/htc/widget/HBouncingListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v4}, Lcom/htc/widget/HBouncingListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 2817
    .local v2, visibleItem:I
    iget v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    sub-int/2addr v3, v2

    add-int/lit8 v0, v3, -0x32

    .line 2819
    .local v0, firstVisibleItem:I
    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 2820
    :cond_2
    add-int/lit8 v1, v0, 0x64

    .line 2821
    .local v1, lastVisibleItem:I
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 2822
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalAdapter:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->setVisibleRange(II)V

    .line 2823
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mHorizontalListView:Lcom/htc/widget/HBouncingListView;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HBouncingListView;->setSelection(I)V

    goto :goto_0
.end method

.method public sceneIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, "SceneLocalPhotoBurstShot"

    return-object v0
.end method

.method public updateContinuousIndicator()V
    .locals 6

    .prologue
    .line 2949
    iget-boolean v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2951
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2953
    :cond_0
    const-string v3, "SceneLocalPhotoBurstShot"

    const-string v4, "[HtcAlbum][SceneLocalPhotoBurstShot][updateContinuousIndicator] mSceneControl or  sunnyhost is null "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    :cond_1
    :goto_0
    return-void

    .line 2958
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sunnyHost()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2960
    .local v1, root:Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    .line 2962
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    .line 2963
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2965
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mContinuousIndicator:Landroid/view/ViewGroup;

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2966
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 2967
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->getSelectedPosSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2969
    .end local v1           #root:Landroid/widget/RelativeLayout;
    .end local v2           #textView:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 2971
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SceneLocalPhotoBurstShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HtcAlbum][SceneLocalPhotoBurstShot][updateContinuousIndicator] error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
