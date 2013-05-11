.class Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;
.super Ljava/lang/Object;
.source "SceneOnlineFolder.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlineFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/album/SocialNetwork/SceneOnlineFolder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 961
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;)V

    return-void
.end method


# virtual methods
.method public onScrollIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 974
    return-void
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 967
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder$GridViewScrollListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;->access$500(Lcom/htc/album/SocialNetwork/SceneOnlineFolder;Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    .line 968
    return-void
.end method
