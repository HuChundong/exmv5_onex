.class public Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;
.super Lcom/htc/opensense/plugin/TabPlugin;
.source "TabPluginDLNA.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/opensense/plugin/TabPlugin;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public getDrawableResSet()[I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x2t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getDrawableSet()[Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 54
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    .line 59
    .local v0, drawables:[Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getIndicatorLabelRes()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0a00d1

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/htc/album/TabPluginDLNA/MfFragmentMainExpandBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDLNA/TabPluginDLNA;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "com.htc.album-com.htc.album.TabPluginDLNA.TabPluginDLNA"

    return-object v0
.end method
