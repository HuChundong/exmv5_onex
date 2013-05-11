.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;
.super Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.source "ParamsGridItem4EventsSeparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator$TextureThumbnail4EventsSeparator;
    }
.end annotation


# static fields
.field private static final DIMENSION_H_4_SEPARATOR:[I = null

.field private static final DIMENSION_W_4_SEPARATOR:[I = null

.field private static final DIMENSION_W_4_SEPARATOR_MIN:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_H:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_W:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION_W_MIN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ITEM_SPACING:I = 0x0

.field private static final ITEM_SPACING_4_EL:[I = null

.field public static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem4EventsSeparator"

.field private static mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->DIMENSION_W_4_SEPARATOR:[I

    .line 15
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->DIMENSION_H_4_SEPARATOR:[I

    .line 16
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->DIMENSION_W_4_SEPARATOR_MIN:[I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->ITEM_SPACING_4_EL:[I

    .line 20
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->ITEM_SPACING_4_EL:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->ITEM_SPACING:I

    .line 22
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->DIMENSION_W_4_SEPARATOR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W:I

    .line 23
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->DIMENSION_H_4_SEPARATOR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_H:I

    .line 24
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->DIMENSION_W_4_SEPARATOR_MIN:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W_MIN:I

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->mVerticalSpacing:I

    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data

    .line 15
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 16
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x38t 0x4t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
    .end array-data

    .line 18
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 54
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 55
    iput v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 57
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_W:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 58
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->GRID_DIMENSION_H:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 60
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->HORIZ_ITEM_SPACING:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->mVerticalSpacing:I

    .line 64
    const-string v0, "ParamsGridItem4EventsSeparator"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[HTCAlbum][ParamsGridItem4EventsSeparator][ParamsGridItem4EventsLarge]: "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 70
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;
    .locals 1
    .parameter "param"

    .prologue
    .line 50
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 79
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->mVerticalSpacing:I

    .line 80
    .local v0, nSpacing:I
    return v0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 73
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSeparator;->mVerticalSpacing:I

    .line 74
    .local v0, nSpacing:I
    return v0
.end method
