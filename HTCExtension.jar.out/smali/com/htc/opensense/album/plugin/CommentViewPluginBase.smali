.class public abstract Lcom/htc/opensense/album/plugin/CommentViewPluginBase;
.super Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;
.source "CommentViewPluginBase.java"


# instance fields
.field protected mPid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "handler"
    .parameter "pid"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/album/plugin/MediaDataListPluginBase;-><init>(Landroid/content/Context;Lcom/htc/opensense/album/plugin/IUIHandler;)V

    .line 23
    iput-object p3, p0, Lcom/htc/opensense/album/plugin/CommentViewPluginBase;->mPid:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public abstract addPhotoComment(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getPhotoComments(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/data/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhotoUser(Ljava/lang/String;)Lcom/htc/opensense/album/plugin/PersonData;
.end method

.method public abstract listCommentItemClick(Lcom/htc/opensense/album/plugin/PersonData;)V
.end method
