.class public Lcom/htc/sunnyCore/common/LayoutConstants;
.super Ljava/lang/Object;
.source "LayoutConstants.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DIMENSION_GRID:[I = null

#the value of this static final field might be set in the static constructor
.field public static final GRID_VIEW_MAX_VELOCITY_RATIO_TO_QHD:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final PANE_WIDTH_LAND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PANE_WIDTH_PORT:I = 0x0

.field public static RESOLUTION:I = 0x0

.field public static final RESOLUTION_FHD:I = 0x8

.field public static final RESOLUTION_HD:I = 0x7

.field public static final RESOLUTION_HVGA:I = 0x1

.field public static final RESOLUTION_QHD:I = 0x5

.field public static final RESOLUTION_QVGA:I = 0x0

.field public static final RESOLUTION_WQVGA:I = 0x3

.field public static final RESOLUTION_WSVGA:I = 0x4

.field public static final RESOLUTION_WVGA:I = 0x2

.field public static final RESOLUTION_WVGA_L:I = 0x9

.field public static final RESOLUTION_WXGA:I = 0x6

.field private static final SINGLE_PANE_WIDTH_LAND:[I

.field private static final SINGLE_PANE_WIDTH_PORT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0xa

    const/4 v2, 0x5

    .line 55
    sput v3, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    .line 57
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 186
    sput v2, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    .line 198
    :goto_0
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/sunnyCore/common/LayoutConstants;->SINGLE_PANE_WIDTH_PORT:[I

    .line 199
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/sunnyCore/common/LayoutConstants;->SINGLE_PANE_WIDTH_LAND:[I

    .line 203
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/sunnyCore/common/LayoutConstants;->DIMENSION_GRID:[I

    .line 208
    sget-object v0, Lcom/htc/sunnyCore/common/LayoutConstants;->SINGLE_PANE_WIDTH_PORT:[I

    sget v1, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_PORT:I

    .line 212
    sget-object v0, Lcom/htc/sunnyCore/common/LayoutConstants;->SINGLE_PANE_WIDTH_LAND:[I

    sget v1, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->PANE_WIDTH_LAND:I

    .line 216
    sget-object v0, Lcom/htc/sunnyCore/common/LayoutConstants;->DIMENSION_GRID:[I

    sget v1, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    int-to-float v0, v0

    sget-object v1, Lcom/htc/sunnyCore/common/LayoutConstants;->DIMENSION_GRID:[I

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->GRID_VIEW_MAX_VELOCITY_RATIO_TO_QHD:F

    return-void

    .line 64
    :sswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 70
    :sswitch_1
    sput v3, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 104
    :sswitch_2
    const/4 v0, 0x2

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 117
    :sswitch_3
    const/16 v0, 0x9

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 122
    :sswitch_4
    const/4 v0, 0x3

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 131
    :sswitch_5
    const/4 v0, 0x4

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 151
    :sswitch_6
    sput v2, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 158
    :sswitch_7
    const/4 v0, 0x6

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 172
    :sswitch_8
    const/4 v0, 0x7

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 181
    :sswitch_9
    const/16 v0, 0x8

    sput v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_3
        0x13 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1c -> :sswitch_2
        0x1d -> :sswitch_9
        0x1e -> :sswitch_9
        0x1f -> :sswitch_9
        0x21 -> :sswitch_5
        0x22 -> :sswitch_5
        0x24 -> :sswitch_8
        0x25 -> :sswitch_8
        0x26 -> :sswitch_8
        0x28 -> :sswitch_5
        0x2b -> :sswitch_6
        0x30 -> :sswitch_2
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x3e -> :sswitch_6
        0x40 -> :sswitch_2
        0x43 -> :sswitch_8
        0x49 -> :sswitch_8
        0x4a -> :sswitch_8
        0x50 -> :sswitch_6
        0x52 -> :sswitch_6
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x55 -> :sswitch_3
        0x5a -> :sswitch_2
        0x60 -> :sswitch_0
        0x61 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x78 -> :sswitch_4
        0x7b -> :sswitch_6
        0x7d -> :sswitch_6
        0x81 -> :sswitch_7
        0x88 -> :sswitch_6
        0x89 -> :sswitch_6
        0x8a -> :sswitch_3
        0x91 -> :sswitch_2
        0x92 -> :sswitch_0
        0x93 -> :sswitch_2
        0x94 -> :sswitch_2
        0x95 -> :sswitch_6
        0x96 -> :sswitch_6
        0x9b -> :sswitch_2
        0x9c -> :sswitch_2
        0x9d -> :sswitch_2
        0x9f -> :sswitch_6
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_2
        0xaa -> :sswitch_2
        0xab -> :sswitch_5
        0xac -> :sswitch_5
        0xad -> :sswitch_8
        0xaf -> :sswitch_7
        0xdd -> :sswitch_7
        0xdf -> :sswitch_2
        0xe0 -> :sswitch_6
        0xe1 -> :sswitch_6
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_2
        0xe4 -> :sswitch_2
        0xe5 -> :sswitch_2
        0x12d -> :sswitch_9
        0x12f -> :sswitch_9
        0x146 -> :sswitch_8
        0x147 -> :sswitch_8
        0x149 -> :sswitch_8
        0x23f -> :sswitch_2
        0x240 -> :sswitch_2
        0x241 -> :sswitch_2
        0x242 -> :sswitch_2
        0x2aa -> :sswitch_6
        0x2d6 -> :sswitch_2
        0x2d7 -> :sswitch_6
        0x2d8 -> :sswitch_6
    .end sparse-switch

    .line 198
    :array_0
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

    .line 199
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data

    .line 203
    :array_2
    .array-data 0x4
        0x4ft 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x84t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResolution()I
    .locals 1

    .prologue
    .line 195
    sget v0, Lcom/htc/sunnyCore/common/LayoutConstants;->RESOLUTION:I

    return v0
.end method
