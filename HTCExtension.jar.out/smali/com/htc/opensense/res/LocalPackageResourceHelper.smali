.class public Lcom/htc/opensense/res/LocalPackageResourceHelper;
.super Lcom/htc/opensense/res/AbstractResourceHelper;
.source "LocalPackageResourceHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/res/AbstractResourceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    return-void
.end method
