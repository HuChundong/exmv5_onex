.class public Lcom/htc/album/Customizable/CustTabPluginDevice;
.super Ljava/lang/Object;
.source "CustTabPluginDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawableResSet()[I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getDrawableSet(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 11
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    .line 16
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getPluginClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "com.htc.album.TabPluginDevice.ActivityMainLocal"

    return-object v0
.end method

.method public static getPluginPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.htc.album.TabPluginDevice.MfFragmentMainLocal"

    return-object v0
.end method
