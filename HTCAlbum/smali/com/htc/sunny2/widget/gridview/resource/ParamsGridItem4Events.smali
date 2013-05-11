.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4Events.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ITEM_SPACING:I = 0x0

.field private static final ITEM_SPACING_4_ES:[I = null

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4Events"

.field public static mBottomViewHeight:I

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING_4_ES:[I

    .line 15
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING_4_ES:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mVerticalSpacing:I

    return-void

    .line 13
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 31
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 32
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 34
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 35
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 37
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->GRID_THUMBNAIL_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 38
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->GRID_THUMBNAIL_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 40
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->HORIZ_ITEM_SPACING:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mVerticalSpacing:I

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 49
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;
    .locals 1
    .parameter "param"

    .prologue
    .line 27
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 58
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    .line 59
    .local v0, nSpacing:I
    return v0
.end method

.method public static resetEventBottomViewHeight()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->mBottomViewHeight:I

    .line 64
    return-void
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 52
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4Events;->ITEM_SPACING:I

    .line 53
    .local v0, nSpacing:I
    return v0
.end method
