.class public Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerItemAlign;
.super Ljava/lang/Object;
.source "DurationTunerItemAlign.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DISTANCE_TO_GO_BUFFER_1:I = 0x3c

.field private static final DISTANCE_TO_GO_BUFFER_2:I = 0x96

.field private static final DURATION_CUT_1:D = 0.8

.field private static final DURATION_CUT_2:D = 1.2

.field private static final DURATION_CUT_3:D = 1.8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration(II)I
    .locals 5
    .parameter "nOrigDuration"
    .parameter "nDistanceToGo"

    .prologue
    .line 27
    move v0, p1

    .line 29
    .local v0, nDuration:I
    const/16 v1, 0x3c

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 30
    int-to-double v1, v0

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 36
    :goto_0
    return v0

    .line 31
    :cond_0
    const/16 v1, 0x96

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 32
    int-to-double v1, v0

    const-wide v3, 0x3ff3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    .line 34
    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3ffccccccccccccdL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method
