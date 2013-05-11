.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4CarMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode$TextureThumbnail4CarMode;
    }
.end annotation


# static fields
.field private static final DIMENSION_GRID_4_CAR:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_THUMBNAIL_DIMENSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_SPACING:I = 0x0

.field private static final ITEM_SPACING_4_CAR:[I = null

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4CarMode"

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->DIMENSION_GRID_4_CAR:[I

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->ITEM_SPACING_4_CAR:[I

    .line 16
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->ITEM_SPACING_4_CAR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->ITEM_SPACING:I

    .line 18
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->DIMENSION_GRID_4_CAR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    .line 19
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_THUMBNAIL_DIMENSION:I

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->mVerticalSpacing:I

    return-void

    .line 13
    :array_0
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0xdat 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    .line 14
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 50
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 51
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 53
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 54
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 56
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_THUMBNAIL_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 57
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->GRID_THUMBNAIL_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 59
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->HORIZ_ITEM_SPACING:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->mVerticalSpacing:I

    .line 65
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 69
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;
    .locals 1
    .parameter "param"

    .prologue
    .line 46
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 78
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->mVerticalSpacing:I

    .line 79
    .local v0, nSpacing:I
    return v0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 72
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4CarMode;->mVerticalSpacing:I

    .line 73
    .local v0, nSpacing:I
    return v0
.end method
