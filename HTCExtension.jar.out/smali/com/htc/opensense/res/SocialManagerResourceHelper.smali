.class public Lcom/htc/opensense/res/SocialManagerResourceHelper;
.super Lcom/htc/opensense/res/AbstractResourceHelper;
.source "SocialManagerResourceHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 9
    const-string v0, "com.htc.opensense.social"

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/res/AbstractResourceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    return-void
.end method
