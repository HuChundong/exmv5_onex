.class public final Lcom/htc/opensense/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/R$SocialNetwork;,
        Lcom/htc/opensense/R$style;,
        Lcom/htc/opensense/R$color;,
        Lcom/htc/opensense/R$dimen;,
        Lcom/htc/opensense/R$id;,
        Lcom/htc/opensense/R$layout;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method public static getResourceHelper(Landroid/content/Context;)Lcom/htc/opensense/res/IResourceHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 573
    new-instance v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;

    invoke-direct {v0, p0}, Lcom/htc/opensense/res/SocialNetworkResourceHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
