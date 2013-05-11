.class public Lcom/htc/wrap/android/view/HtcWrapVelocityTracker;
.super Ljava/lang/Object;
.source "HtcWrapVelocityTracker.java"


# static fields
.field public static final LEAST_SQUARES_FIRST:Ljava/lang/String; = "lsq1"

.field public static final LEAST_SQUARES_FIRST_INTEGRATING:Ljava/lang/String; = "int1"

.field public static final LEAST_SQUARES_LEGACY:Ljava/lang/String; = "legacy"

.field public static final LEAST_SQUARES_SECOND:Ljava/lang/String; = "lsq2"

.field public static final LEAST_SQUARES_SECOND_CENTRAL:Ljava/lang/String; = "wlsq2-central"

.field public static final LEAST_SQUARES_SECOND_DELTA:Ljava/lang/String; = "wlsq2-delta"

.field public static final LEAST_SQUARES_SECOND_INTEGRATING:Ljava/lang/String; = "int2"

.field public static final LEAST_SQUARES_SECOND_RECENT:Ljava/lang/String; = "wlsq2-recent"

.field public static final LEAST_SQUARES_THIRD:Ljava/lang/String; = "lsq3"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static obtain(I)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "degree"

    .prologue
    .line 117
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 118
    const-string v0, "int1"

    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "strategy"

    .prologue
    .line 106
    invoke-static {p0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method
