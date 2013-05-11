.class public Lcom/htc/wrap/android/content/pm/HtcWrapApplicationInfo;
.super Ljava/lang/Object;
.source "HtcWrapApplicationInfo.java"


# static fields
.field public static final FLAG_FORWARD_LOCK:I = 0x20000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static allowSkinChange(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "ai"

    .prologue
    .line 21
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    return v0
.end method

.method public static isDataPreloadApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "ai"

    .prologue
    .line 14
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHtcApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "ai"

    .prologue
    .line 10
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->htcApp:Z

    return v0
.end method

.method public static isUpdatedDataPreloadApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "ai"

    .prologue
    .line 18
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->HTCFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
