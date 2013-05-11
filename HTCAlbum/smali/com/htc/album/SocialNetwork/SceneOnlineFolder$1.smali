.class Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;
.super Ljava/lang/Object;
.source "SceneOnlineFolder.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlineFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldState:I

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->oldState:I

    return-void
.end method

.method private onDisplayLoadingState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0x5079

    .line 119
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onRemoveMessage(I)V

    .line 120
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    iget v1, v1, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    iget v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->mAnimationState:I

    if-ne v2, v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-ne p1, v2, :cond_2

    .line 126
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public onLoadingStatusChange(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->oldState:I

    if-ne v0, p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iput p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->oldState:I

    .line 115
    iget v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->oldState:I

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;->onDisplayLoadingState(I)V

    goto :goto_0
.end method
