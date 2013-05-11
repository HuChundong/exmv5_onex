.class public Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;
.super Ljava/lang/Object;
.source "LayoutGetterGridFolder.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemfolderLayoutGetter;


# static fields
.field private static final DIMENSION_IMAGE:[I

.field private static final FOLDER_BACKGROUND_Y_OFFSET:[I

.field private static final FOLDER_TEXT_GAP_OFFSET:[I

.field private static final HEIGHT_TEXT_FIRST:[I

.field private static final HEIGHT_TEXT_SECOND:[I

.field private static final ITEM_SPACING_HORIZ_LAND:[I

.field private static final ITEM_SPACING_HORIZ_PORT:[I

.field private static final ITEM_SPACING_VERT_LAND:[I

.field private static final ITEM_SPACING_VERT_PORT:[I

.field public static final TEXT_HEIGHT_SECOND:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 12
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->DIMENSION_IMAGE:[I

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_FIRST:[I

    .line 15
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_SECOND:[I

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_PORT:[I

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_LAND:[I

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_PORT:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_LAND:[I

    .line 22
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->FOLDER_TEXT_GAP_OFFSET:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->FOLDER_BACKGROUND_Y_OFFSET:[I

    .line 33
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_SECOND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->TEXT_HEIGHT_SECOND:I

    return-void

    .line 12
    :array_0
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    .line 14
    :array_1
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
    .end array-data

    .line 15
    :array_2
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 17
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    .line 18
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    .line 19
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 20
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 22
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, nSpacing:I
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 51
    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_LAND:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    .line 55
    :goto_0
    return v0

    .line 53
    :cond_0
    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_PORT:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    goto :goto_0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, nSpacing:I
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 40
    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_LAND:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    .line 44
    :goto_0
    return v0

    .line 42
    :cond_0
    sget-object v1, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_PORT:[I

    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public imageDimension()I
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->DIMENSION_IMAGE:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemBackgroundOffsetY()F
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->FOLDER_BACKGROUND_Y_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public itemDimension()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public itemSpacingHorizLandscape()I
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemSpacingHorizPortrait()I
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_HORIZ_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemSpacingVertLandscape()I
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemSpacingVertPortrait()I
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public itemToTextGap()I
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->FOLDER_TEXT_GAP_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method

.method public textHeightFirst()I
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_FIRST:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->getExtraFontSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public textHeightSecond()I
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/LayoutGetterGridFolder;->HEIGHT_TEXT_SECOND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    return v0
.end method
