.class public Lcom/android/camera/rotate/OrientationConfig;
.super Ljava/lang/Object;
.source "OrientationConfig.java"


# static fields
.field public static final UNKNOWN_ORIENTATION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diffOrientationWithScreen(I)I
    .locals 2

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iget v1, v1, Lcom/android/camera/rotate/UIRotation;->surfaceRotation:I

    sub-int v0, p0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method public static diffOrientationWithScreen_Inverse(I)I
    .locals 2

    invoke-static {p0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen(I)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x4

    rem-int/lit8 v1, v1, 0x4

    return v1
.end method

.method public static isInverse_ScreenOrientation(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/camera/rotate/OrientationConfig;->diffOrientationWithScreen(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
