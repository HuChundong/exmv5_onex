.class public Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
.super Ljava/lang/Object;
.source "ParamsGridItem.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/interfaces/IGridItemFeature;


# static fields
.field private static final DIMENSION_GRID:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_DIMENSION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GRID_THUMBNAIL_DIMENSION:I = 0x0

.field public static HORIZ_ITEM_SPACING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final HORIZ_LAND_TABLET_ITEM_SPACING:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_3D_OFFSET_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_3D_OFFSET_Y:I = 0x0

.field private static final ICON_3D_X_OFFSET:[I = null

.field private static final ICON_3D_Y_OFFSET:[I = null

#the value of this static final field might be set in the static constructor
.field public static final ICON_DRM_LOCK_OFFSET_X_:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_DRM_LOCK_OFFSET_Y:I = 0x0

.field private static final ICON_DRM_LOCK_X_OFFSET_:[I = null

.field private static final ICON_DRM_LOCK_Y_OFFSET:[I = null

#the value of this static final field might be set in the static constructor
.field public static final ICON_INIDICATOR_MARGIN_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ICON_INIDICATOR_MARGIN_Y:I = 0x0

.field private static final ITEM_SPACING:[I = null

.field private static final ITEM_SPACING_VERT_LAND:[I = null

.field private static final ITEM_SPACING_VERT_PORT:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "ParamsGridItem"

.field private static final MARGIN_INDICATOR:[I

.field public static final PHONE_ITEM_SPACING:I

.field private static final TABLET_ITEM_SPACING_HORIZ:[I

.field private static final TABLET_ITEM_SPACING_VERT_LAND:[I

.field private static final TABLET_ITEM_SPACING_VERT_PORT:[I

.field public static final VERT_LAND_ITEM_SPACING:I

.field public static final VERT_LAND_TABLET_ITEM_SPACING:I

.field public static final VERT_PORT_ITEM_SPACING:I

.field public static final VERT_PORT_TABLET_ITEM_SPACING:I


# instance fields
.field private mEnableItemFixedDimension:Z

.field private mEnableItemFocusedAnimation:Z

.field private mExtra:Landroid/os/Bundle;

.field public mItemH:I

.field public mItemThumbH:I

.field public mItemThumbW:I

.field public mItemW:I

.field public mResIdBackground:I

.field public mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->DIMENSION_GRID:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_PORT:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND:[I

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_PORT:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_LAND:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_HORIZ:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_X_OFFSET_:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_Y_OFFSET:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_X_OFFSET:[I

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_Y_OFFSET:[I

    .line 63
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    .line 67
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_THUMBNAIL_DIMENSION:I

    .line 69
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_ITEM_SPACING:I

    .line 70
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_ITEM_SPACING:I

    .line 75
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_PORT:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_TABLET_ITEM_SPACING:I

    .line 76
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_VERT_LAND:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_TABLET_ITEM_SPACING:I

    .line 77
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->TABLET_ITEM_SPACING_HORIZ:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    .line 82
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ITEM_SPACING:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->PHONE_ITEM_SPACING:I

    .line 84
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_X:I

    .line 85
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->MARGIN_INDICATOR:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_INIDICATOR_MARGIN_Y:I

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    .line 92
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_X_OFFSET_:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_OFFSET_X_:I

    .line 93
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_Y_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_DRM_LOCK_OFFSET_Y:I

    .line 94
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_X_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_X:I

    .line 95
    sget-object v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_Y_OFFSET:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->ICON_3D_OFFSET_Y:I

    return-void

    .line 24
    :array_0
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xb0t 0x0t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 45
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 146
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 99
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 100
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 101
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 102
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 104
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    .line 148
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 99
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 100
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 101
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 102
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 104
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    .line 151
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 152
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 154
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 155
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 157
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_THUMBNAIL_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 158
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_THUMBNAIL_DIMENSION:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 160
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->PHONE_ITEM_SPACING:I

    sput v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_ITEM_SPACING:I

    goto :goto_0
.end method

.method private constructor <init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 2
    .parameter "param"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 170
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 98
    iput v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 99
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 100
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 101
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 102
    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    .line 104
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 105
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    .line 171
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    .line 172
    return-void
.end method

.method public static clone(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    .locals 1
    .parameter "param"

    .prologue
    .line 115
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V

    return-object v0
.end method

.method public static horizontalSpacing(Landroid/content/res/Configuration;)I
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, nSpacing:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->HORIZ_LAND_TABLET_ITEM_SPACING:I

    .line 143
    :goto_0
    return v0

    .line 141
    :cond_0
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->PHONE_ITEM_SPACING:I

    goto :goto_0
.end method

.method public static spawn(Landroid/content/Context;)Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    new-instance v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static verticalSpacing(Landroid/content/res/Configuration;)I
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, nSpacing:I
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x1

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 123
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_PORT_TABLET_ITEM_SPACING:I

    .line 131
    :goto_0
    return v0

    .line 125
    :cond_0
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->VERT_LAND_TABLET_ITEM_SPACING:I

    goto :goto_0

    .line 129
    :cond_1
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->PHONE_ITEM_SPACING:I

    goto :goto_0
.end method


# virtual methods
.method public copy(Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 178
    :cond_0
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mStyle:I

    .line 179
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mResIdBackground:I

    .line 180
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemW:I

    .line 181
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemH:I

    .line 182
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbW:I

    .line 183
    iget v0, p1, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mItemThumbH:I

    goto :goto_0
.end method

.method public enableItemFixedDimension()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    .line 192
    return-void
.end method

.method public enableItemFocusedAnimation()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    .line 200
    return-void
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public isEnableItemFocusedAnimation()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFocusedAnimation:Z

    return v0
.end method

.method public isItemFixedDimension()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mEnableItemFixedDimension:Z

    return v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->mExtra:Landroid/os/Bundle;

    .line 209
    return-void
.end method
