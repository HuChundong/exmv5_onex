.class final Lcom/htc/videowidget/videoview/utilities/brightness/HtcBrightnessMappingScheme;
.super Ljava/lang/Object;
.source "HtcBrightnessMappingScheme.java"


# static fields
.field static final MAXIMUM_BACKLIGHT:I = 0xff

.field static final MINIMUM_BACKLIGHT:I = 0x1e


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeBrightness(I)I
    .locals 1
    .parameter "progress"

    .prologue
    .line 14
    add-int/lit8 v0, p0, 0x1e

    return v0
.end method

.method static encodeBrightness(I)I
    .locals 1
    .parameter "brightness"

    .prologue
    .line 19
    add-int/lit8 v0, p0, -0x1e

    return v0
.end method

.method static getMaximumBacklight()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xff

    return v0
.end method

.method static getMinimumBacklight()I
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x1e

    return v0
.end method

.method static getProgressBarMax()I
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0xe1

    return v0
.end method
