.class public Lcom/htc/wrap/android/view/HtcWrapDisplay;
.super Ljava/lang/Object;
.source "HtcWrapDisplay.java"


# static fields
.field private static HTC_DEVICE:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/view/HtcWrapDisplay;->HTC_DEVICE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealMetrics(Landroid/view/Display;Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "display"
    .parameter "outMetrics"

    .prologue
    .line 14
    sget-object v0, Lcom/htc/wrap/android/view/HtcWrapDisplay;->HTC_DEVICE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    :cond_0
    return-void
.end method
