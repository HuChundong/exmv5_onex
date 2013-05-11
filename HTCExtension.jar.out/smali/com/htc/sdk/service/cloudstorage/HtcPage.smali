.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcPage;
.super Ljava/lang/Object;
.source "HtcPage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, this:Lcom/htc/sdk/service/cloudstorage/HtcPage;,"Lcom/htc/sdk/service/cloudstorage/HtcPage<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract findListByPage(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract getCurrentPageIndex()I
.end method

.method public abstract getCurrentPageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getTotalItemCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract hasNextPage()Z
.end method

.method public abstract moveToNextPage()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract moveToPage(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method

.method public abstract moveToPrePage()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
        }
    .end annotation
.end method
