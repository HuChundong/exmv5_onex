.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4EventsLarge.java"


# static fields
.field private static final DIMENSION_GRID_4_H_EL:[I = null

.field private static final DIMENSION_GRID_4_W_EL:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_H:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_W:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_THUMBNAIL_DIMENSION_H:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_THUMBNAIL_DIMENSION_W:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_SPACING:I = 0x0

.field private static final ITEM_SPACING_4_EL:[I = null

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4EventsLarge"

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_W_EL:[I

    .line 15
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_H_EL:[I

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING_4_EL:[I

    .line 19
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING_4_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING:I

    .line 21
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_W_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    .line 22
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->DIMENSION_GRID_4_H_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    .line 27
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_THUMBNAIL_DIMENSION_W:I

    .line 28
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_THUMBNAIL_DIMENSION_H:I

    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    return-void

    .line 14
    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x0t 0x0t
        0xect 0x0t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x1et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0x38t 0x1t 0x0t 0x0t
        0x70t 0x2t 0x0t 0x0t
        0xa6t 0x3t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
    .end array-data

    .line 17
    :array_2
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

    .line 41
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 42
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 43
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 45
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 46
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 48
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_THUMBNAIL_DIMENSION_W:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 49
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_THUMBNAIL_DIMENSION_H:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 51
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->HORIZ_ITEM_SPACING:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 61
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;
    .locals 1
    .parameter "param"

    .prologue
    .line 38
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 70
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    .line 71
    .local v0, nSpacing:I
    return v0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 64
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->mVerticalSpacing:I

    .line 65
    .local v0, nSpacing:I
    return v0
.end method
