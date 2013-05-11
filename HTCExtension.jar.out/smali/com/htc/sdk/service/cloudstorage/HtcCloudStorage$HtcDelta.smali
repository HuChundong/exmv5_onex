.class public Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;
.super Ljava/lang/Object;
.source "HtcCloudStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtcDelta"
.end annotation


# instance fields
.field public final cursor:Ljava/lang/String;

.field public final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final hasMore:Z

.field public final reset:Z


# direct methods
.method public constructor <init>(ZLjava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .parameter "reset"
    .parameter
    .parameter "cursor"
    .parameter "hasMore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDeltaEntry;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;->reset:Z

    .line 233
    iput-object p2, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;->entries:Ljava/util/List;

    .line 234
    iput-object p3, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;->cursor:Ljava/lang/String;

    .line 235
    iput-boolean p4, p0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$HtcDelta;->hasMore:Z

    .line 236
    return-void
.end method
