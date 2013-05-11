.class Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;
.super Ljava/lang/Object;
.source "SceneOnlinePickerBase.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridViewScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.GridViewScrollListener;"
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.GridViewScrollListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;)V

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
    .line 396
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.GridViewScrollListener;"
    return-void
.end method

.method public onScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 389
    .local p0, this:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;,"Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase<TADAPTER;>.GridViewScrollListener;"
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase$GridViewScrollListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->onSceneScrollStateChangedIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;Lcom/htc/sunnyCore/widget/gridview/GridView;I)V

    .line 390
    return-void
.end method
