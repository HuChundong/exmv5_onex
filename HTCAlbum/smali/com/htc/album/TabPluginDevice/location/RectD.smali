.class public Lcom/htc/album/TabPluginDevice/location/RectD;
.super Ljava/lang/Object;
.source "RectD.java"


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->left:D

    .line 16
    iput-wide p3, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->top:D

    .line 17
    iput-wide p5, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->right:D

    .line 18
    iput-wide p7, p0, Lcom/htc/album/TabPluginDevice/location/RectD;->bottom:D

    .line 19
    return-void
.end method

.method public static ParseArrD([D)[Lcom/htc/album/TabPluginDevice/location/RectD;
    .locals 12
    .parameter "arrD"

    .prologue
    .line 23
    array-length v0, p0

    div-int/lit8 v10, v0, 0x4

    .line 25
    .local v10, nExclusiveRangeCount:I
    new-array v11, v10, [Lcom/htc/album/TabPluginDevice/location/RectD;

    .line 27
    .local v11, rectExclusiveRanges:[Lcom/htc/album/TabPluginDevice/location/RectD;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 28
    new-instance v0, Lcom/htc/album/TabPluginDevice/location/RectD;

    mul-int/lit8 v1, v9, 0x4

    aget-wide v1, p0, v1

    mul-int/lit8 v3, v9, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-wide v3, p0, v3

    mul-int/lit8 v5, v9, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-wide v5, p0, v5

    mul-int/lit8 v7, v9, 0x4

    add-int/lit8 v7, v7, 0x3

    aget-wide v7, p0, v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/album/TabPluginDevice/location/RectD;-><init>(DDDD)V

    aput-object v0, v11, v9

    .line 27
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-object v11
.end method
