.class public Lcom/htc/sunnyCore/widget/gridview/resource/DurationTunerFling;
.super Ljava/lang/Object;
.source "DurationTunerFling.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/IScrollerDuration;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DISTANCE_TO_GO_BUFFER_1:I = 0x64

.field private static final DISTANCE_TO_GO_BUFFER_2:I = 0x12c

.field private static final DURATION_CUT_1:D = 0.1

.field private static final DURATION_CUT_2:D = 0.2

.field private static final DURATION_CUT_3:D = 0.3


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
    .line 25
    move v0, p1

    .line 27
    .local v0, nDuration:I
    const/16 v1, 0x64

    if-lt v1, p2, :cond_0

    .line 28
    int-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 34
    :goto_0
    return v0

    .line 29
    :cond_0
    const/16 v1, 0x12c

    if-lt v1, p2, :cond_1

    .line 30
    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    .line 32
    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method
