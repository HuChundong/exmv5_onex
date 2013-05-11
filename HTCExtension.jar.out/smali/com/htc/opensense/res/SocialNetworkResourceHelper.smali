.class public Lcom/htc/opensense/res/SocialNetworkResourceHelper;
.super Lcom/htc/opensense/res/AbstractResourceHelper;
.source "SocialNetworkResourceHelper.java"


# static fields
.field private static final sIdSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    .line 12
    sget-object v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->avatar:I

    const v2, 0x7080001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->content:I

    const v2, 0x7080002

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->message_container:I

    const/high16 v2, 0x708

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->subcontent:I

    const v2, 0x7080003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    sget v1, Lcom/htc/opensense/R$SocialNetwork$id;->subcontent_ext:I

    const v2, 0x7080004

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const-string v0, "com.htc.socialnetwork.res"

    invoke-direct {p0, p1, v0}, Lcom/htc/opensense/res/AbstractResourceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getId(I)I
    .locals 2
    .parameter "resId"

    .prologue
    .line 26
    sget-object v1, Lcom/htc/opensense/res/SocialNetworkResourceHelper;->sIdSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 27
    .local v0, id:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 30
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
