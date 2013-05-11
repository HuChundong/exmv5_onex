.class public Lcom/htc/album/TabPluginDevice/TabPluginDevice;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDevice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    .local v2, intentSocial:Landroid/content/Intent;
    const-string v3, "launch_package"

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getLaunchPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    const-string v3, "launch_activity"

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getLaunchActivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "social_intent"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    const-string v3, "social_bundle"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    return-object v1
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, iResId:I
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 66
    invoke-static {v0}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryLandingMyphone(Landroid/content/Context;)I

    move-result v1

    .line 72
    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [I

    aput v3, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v1, v2, v3

    return-object v2

    .line 70
    :cond_0
    const v1, 0x7f02000d

    goto :goto_0
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getDrawableSet(Landroid/content/Context;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0a003b

    return v0
.end method

.method public getLaunchActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "com.htc.album.MainActivity"

    return-object v0
.end method

.method public getLaunchPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "com.htc.album"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/htc/album/Customizable/CustTabPluginDevice;->getPluginPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/TabPluginDevice;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    return-object v0
.end method
